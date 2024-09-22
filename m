Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB007711B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727047554; cv=none; b=LJMpiA6Z0QMPH1uS0WOXHclVTIXyCnb3PFueEagYImcnqsYvWKtsESF7nM3zDnoK7kgsImINBPoQPJkuhPVVVLTtNe9s8l74HODifqhYNgFmynv1iz/gTILQTHKwQnvl6ToiR6TZ4hODfVnj4fhrnlAXq2nP5kr1szwrJmClV2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727047554; c=relaxed/simple;
	bh=IpvteeVaenxHpvsKlFZeV1b8vfds9yZRjlS7j5qMjr8=;
	h=To:Subject:From:Message-Id:Date; b=gRLANxRCcDDEtmfmeH5Z3dxyXOBZ0LZAjFkyT+8me4pYlDcvR3+x3RCXpxWP6fNBp9LGi/OPqIv7WMysnJxSTDRzuxiUs8Ac2eTS/YaNjOj5jZc5Q4dc1voGQemGDUyiA3VJzCKItMxHSQWfjAZaFMbcV1Cy6Yawg7k9XQOhLVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnEDiRHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnEDiRHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8BDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727047553;
	bh=IpvteeVaenxHpvsKlFZeV1b8vfds9yZRjlS7j5qMjr8=;
	h=To:Subject:From:Date:From;
	b=VnEDiRHCVzLXI6EjapSO5HLc+1yMlD4XdiCXYRXeyX9DZsP3EfKEM8SOa6W6thOsD
	 V2vmzHN+qeb++EqLEXiEuC8qSiucFJum3SOTntlWHC5yMAT8aV15vGKJSxS/6E8lbL
	 dzRp4URn79dxI2mp54fclY8+yfD02WwxHsZoWLZ2KiKCvUDJ/irY30AvErtHyNq9DG
	 3f+uMLnxlucJKYwmwfQ6GIVMgoa3XiqkEXzNhErlU0NAeKvmLGQa1xhXQIqg6oDRWX
	 Geyfp8oMqpv4gU8dSvrqxRkLpcN8JgSl6dSRmlIJcVZEHL29yxRbPPJ2PR9ijv4gnS
	 0FewkCyOztt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E9CF9C6D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704755359.22894.16602827770040779862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04bc5deef1cefdc548e6ec8705706b09b3697d30954fb800b84eb53ec31c4ae
Date: Sun, 22 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727047553
