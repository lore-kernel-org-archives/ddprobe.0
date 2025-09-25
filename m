Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6A4C81
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758819594; cv=none; b=uY+30JUmP3HONKMi482kW1vzaWQmxaHGmPbzm4p0xnYkDoUz2jWanZ5g4+A4l6l0ohafeW3RElMOf3mlaKMEakxmQAXtpXWoHa67+QtRUq54ca8oHprvazr/grGJgwyx9OYMGd9hvTS7bl53lOVDCF3A8mpV+axzkPHILiFDKxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758819594; c=relaxed/simple;
	bh=eIxSh54bubi+hv/ohO/dj5Bvw32QBHL+C/MzPQdnl8E=;
	h=To:Subject:From:Message-Id:Date; b=U8TidaDogEPI306hF2jZwXFshOOwP1F23fsvlBOWb0MNTG7oU6zHuCDgtu6//wnGp6IUpFizF1b+rYX3Adeb+dYeBe//+WuraTHEARDYzS4i6mjPFGzyqTY34C4nMZYZAS4StyeVeVNll7ox6p/2lDVG8UV/9cHpzz0Gt4TWwN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIO4f7Bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIO4f7Bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3207C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758819593;
	bh=eIxSh54bubi+hv/ohO/dj5Bvw32QBHL+C/MzPQdnl8E=;
	h=To:Subject:From:Date:From;
	b=YIO4f7BkgFrpujo5utydW4epGtSBcbRipttf8PGW7sTAGu8ccFfwYNldri/vkledr
	 53Sf1a1zQ0UqK+z9XbPtgtSYBFc6OGuFHaqekiKlUiEjCyWkBPRay3seLiFEFiuRty
	 llOur9FTH9CBK+WIOyDlm2lWcpeENC1bUBTX8arax6f9fbxtkJSz3QnaEuil2mG0Zm
	 0tKJR0r65s8/MhVfVY5K3guBJU5LgJIKqJQMaCd+Tbv7X8HhrdD8i/R99suwwrmOvY
	 B8TGyCi/8pE4P7I6H74YBZqIKae823v9zzOUVBxpG86o6NZ5dgeCa5XY7qRz4vXBP1
	 3AaK6DuSyxRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90324CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881959358.7827.18106917619118253537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d90839b345db704666b5e622ab3b3cf4ab9b7a9c2f24ebb4587986557897947
Date: Thu, 25 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758819593
