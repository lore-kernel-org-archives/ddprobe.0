Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185B3D16EB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776857854; cv=none; b=uO+mUOEoCVsp3uNhGS0pRd/YAaozisttwW9Fm2doJ2fz7aIqJ13MoRsgktlUPcIKH3Vt0O8LSvSTEfMSQtbO6fSX5a7XzSzjn2W09mtqFtEBDjhzT3Ld0HkHeztZ76tEuDc43RHLTj+ZtsNfan4mrQh0graMWYBqwpNUFwF38j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776857854; c=relaxed/simple;
	bh=RO+Zyq8wyS29Zmkkwcv+ne52PK3vVwvaoJ6o5oDlp/M=;
	h=To:Subject:From:Message-Id:Date; b=ZCPjqalKLeESGewSHzflnqd/4XIHTR/VzTbUHNzgi9xB+Hi6/6O7EcX4L0ODEtnEWAHTkenhHW0NTQqV/vdAZ2rb86ELdpIZXM+GBLS4o5TNy/CptF5dRTYRmbROsARXAPu4qS7qIFGGHIJkrrrNamBZ3MrsRS+i+jjyp0OcBac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjIa+sMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjIa+sMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84C4C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776857853;
	bh=RO+Zyq8wyS29Zmkkwcv+ne52PK3vVwvaoJ6o5oDlp/M=;
	h=To:Subject:From:Date:From;
	b=HjIa+sMObaAGn4sDzNeMvjhXoNs5iLFrrd7BJ1XkKzVwkpTXMpTOLpSZ/4v0J6cs2
	 Y95H7KoprtB0/lQy8sSAyMyC8hMttAVcNaDC0dtedu3RInYeqk12oM6GjLELQOf7G/
	 PLTyEys2dquZDk4TdntIIn3eseOlOk83Aoz0Ow07CipzS0n1+Pr2SPkrWVIlV8EJjd
	 VIuiA7MOIzWQCiyaJFeTf6xMLutptoUN9RE+yTN4Jhkn5tyhgPvUb4SGCxf+Ss3pyj
	 mTT8fNI/2Y1tTlG3zQ/RjCeZ5z9nfTd5e1cUgxfyffaMHAtCOZqkjR9YRhNGtH+f2D
	 yTjivsrJEbgDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9415F9B61D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685785368.3910.13332037933679880662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f10e5aaff9e13fb23e34ab2884fec92627efae53375e87c153c09982826ffd
Date: Wed, 22 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776857853
