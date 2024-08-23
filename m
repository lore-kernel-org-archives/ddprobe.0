Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A51C18BBB5
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724432154; cv=none; b=t7QFoSR/aWn+mBhSp8cvSeUWf1XllQXzBYCDQ5zjaqE1nRB18sBgL0KC0q1tYygFXpLVsT7EYRKBhjsrS08g3OH2iW+su6HvNzpZgPBISJvhFFRrJqG730/txGCgqcotmd+lFUEfGc+V9FJVFNdftha+cqp690WkOcn6UTY94z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724432154; c=relaxed/simple;
	bh=1dhui6UNSfU4HJoiEqt4u9vjwreyBi6+mumxDkXaI1g=;
	h=To:Subject:From:Message-Id:Date; b=GtwpGfWwAQEaVRP3gEKSgFC04/FzanNCG6lsvgNwJIkD38CbQpVo+QJtKK0CBOIG3N0XDso8FA0OwNYFw+AnYlOPmG+eXnz9vLZukG5zeZdo/MnDLUAOtvUOaTC0DM90+UdwPS2Mlm735UCfNe15SfSh4JjB8XGDxKL73lysbiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6HxHLlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6HxHLlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5B5C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724432153;
	bh=1dhui6UNSfU4HJoiEqt4u9vjwreyBi6+mumxDkXaI1g=;
	h=To:Subject:From:Date:From;
	b=N6HxHLltSl8T2/EFxXjpyVpu5FCF/dHVhWOUijdFY3WMdKK78ZLonxCnc6DMZtiGv
	 vdyxnjEgiY5RaXn9pT0m5NAfmpyQdD0VJ6JzR6XuNMt0ha5HXjpCY+WcpIR9vjSveM
	 PIT2joH1eCML9KzKluUOFxHQ6Fl6MCRihad6Q0PfP1LbXteFDD/mTYCE0Jn7M7UBQu
	 BleBo+IJ9IUdIoFhSbSVQDhJ2MeGxiN7vj5WQfFB+Llqdi2yeFRnik8yB4sdWaidaY
	 CHVBASc92sXatIqI1pUBdKwRg7zMl6utsMvjHhZKl/WCJ/1ue7amWEv9H/U0dSDnn0
	 B49YaLVZ28cDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7392C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172443215367.18385.16696400607960221505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2b7b7e75347684cfd00ef9a493321186b45240360d23f0fa64bc686ecc804f
Date: Fri, 23 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724432153
