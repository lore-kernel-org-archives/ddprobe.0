Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B6A277029
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785079234; cv=none; b=Arh/bV/s3RstU4zxSrkg4WIEbXpjZikw48O6wx3cXqm+tjiZ4iaJyxckuQ501Z1HZCHQ2km/VEtApalmV3Lor8KCd9//xah4z5PuTaNq6UXlwzaAGMM/uaYrIeHW5OwlhAh6rY41icIaGm7Cl65P3R6LLJquEIaTQVJ0R3cWM8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785079234; c=relaxed/simple;
	bh=VT5IbS1YEiV2Wxu3BrH+FtwONZxHCI+B06dpkw7NJ84=;
	h=To:Subject:From:Message-Id:Date; b=oOPts5Cqz2IxbDgUbjg32SxBSlT1pZhIiIsh2uIifObtqw0j/F2zPbJzYmOMFuI027o/FdO3rwTipPfmoFn48vPjPc/vqEO2QZAzlP29pMuPI5/qofUd4rXJAqsEAgQrFV7xRpUtKnCemplfIBaD4PuDtFYykoBB6cdzHZ9G3jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrAIOHQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrAIOHQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF929C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785079233;
	bh=VT5IbS1YEiV2Wxu3BrH+FtwONZxHCI+B06dpkw7NJ84=;
	h=To:Subject:From:Date:From;
	b=XrAIOHQmtzfXzKMS0KUz74Up0qKdFohpHlobPd5WxYrEY/n9nzK2pIYh/8bDJ6ZgQ
	 /O8VQ/yRiCFxLZMX/1M7jT+Yq5n9FuclkUjdu0nYvxkOV1n4xJvBNTpjUm/IFjSdZa
	 WMX4FYcNaHdb9wX3OKhTytLLcIbbIlhDFmQe4b0KuO8hQcBgicGW/oCJAiw/CutQMY
	 vws0cSibWbw9a/AzAVRpKzpIAHrh0VMygbBOWylHSDjlhtVANygqCnhCda9ImQvmpa
	 JgGHbh/Mh1AH82oY3hDc2t2L0v5f7xkh+aRJa+1BCM+HLimDQ3lZNG4GrW+X0bJ3mZ
	 uZ6Fst41CESig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE16FC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507923368.6093.3077005395631236125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60b2b0c19747d628f8c41badf32e3d56026aef3f7579203b441d9de895f6f7f
Date: Sun, 26 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785079233
