Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DE343F4C2
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788610234; cv=none; b=XBXOaRMhKTfQJH8R+46KVB/Z10HuPIwBE5fODrp0LK6H5hdDRfz6bMISqDZ5jL0lPEG8+q7UtB3ZT2GuBegvMmxl36Xpm/Wpfgzz5y41CYsCYOy7fjxBwaJwNE7aLqkErUVxxuOWLYztHRBp4E8vCnus2mkgEgLaCMiAfazcOAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788610234; c=relaxed/simple;
	bh=0IaB6Do1kqDR0UMsdil1odeNCZLmcNkIMZ8GEYQAmiU=;
	h=To:Subject:From:Message-Id:Date; b=qlTcC36z/gQ7fKfOegQ9wHkkOtVRQQ2ic/EdQjU0tW0G/IhdUJjrDMFwm9xylcwGn0qcRJMw+V3g5DvLH+7jlkQ8t2QCHJnS0106djTJS+U9EfvLmEFEBJGkXlQOa9hoqeGI4VTfSuhuZ1pu9BhGQRVcAzNfzeebTX88C8ghk8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvIg9zhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvIg9zhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF57BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788610233;
	bh=0IaB6Do1kqDR0UMsdil1odeNCZLmcNkIMZ8GEYQAmiU=;
	h=To:Subject:From:Date:From;
	b=SvIg9zhDGcH7DGKixE+6xC0ujN/7p/iO//xIWxA/KTR+0LB+TazG8QTZhHXj1UcSW
	 qnxzzJZNbKtmVsC6sTHopAF0b4TYsT9VXGtDcwNFoI3jLVsz+DRyrMtGbN4L3YH5Ht
	 F8X7LfLDg3zb5fKLlLLDThCIEURXdQWT5U2KOezP4B4/LQHHINs8Wey9Tf2DsfICCa
	 TU3vZfWnzwn9QUYDF+1eXtfe1JF+4AcrykcQq0JyFwmSfgsk8zZwAjBhTnAXDZK+HD
	 hF/cIG1Yce3ZrzyE9L3MtBnZ1OjTMIzysduwHxjjdlN0Z+HV6d4NjzE9mWv78BarSH
	 P7XsPrt8V3q1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F9C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861023369.20024.9400697398164344694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34428b884084b72e3cc274c71dc13bcd1c5f24eb19bed26d87b633c91fa0742
Date: Sat, 05 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788610233
