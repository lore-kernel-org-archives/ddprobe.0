Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE061DFF0
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745714394; cv=none; b=Xx/nufPUtBwtkGbgds2dsYeMt7IknvPs7XR21ab+igVJGVbD5btn1QgqO9XXh4LRp4I19af5XhBhcDl/I7FZIsbZCtn+dZRK9SXkbrtGYCwhRUlfe+LC3Xy69MHnIMoDYOnnAcPQnNZvUeqXDiXCDtXR0bbR2LSxpPKln+nkMto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745714394; c=relaxed/simple;
	bh=QqcCCtExbZnajVSfgnenb+QbljsZi3gXdoOmc2ZcNPk=;
	h=To:Subject:From:Message-Id:Date; b=ejHOnikDRpQ+4+r+bBVihpbme6KMwqDJFt/5cFdGCDJrF1Q4HZHTc8PeHsNXZCpA6XeHSPYFeKdxjfP6wkiTu1PxPsTI5PnpS144fZLsK/ZGgB6X/w9wxsF/t9+rT+0bxENsrt00v94DYQfm4zRrUA8SbncJZPkR0IaoK8DJjbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOwqrCBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOwqrCBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745714393;
	bh=QqcCCtExbZnajVSfgnenb+QbljsZi3gXdoOmc2ZcNPk=;
	h=To:Subject:From:Date:From;
	b=jOwqrCBEz3CLgBL0gwSprus6xOaIBOMIZOaZnMM0gWI7I/z6N5UmzXjk7jIM6EOwz
	 sAtDib4PPTshtQgnbARGGChrpS+wPJkDOZ3ygMMrh+h4urY+/84svQbdd+Yl3gCR3S
	 gxDin0NJrxZgYHD2s/jc3K8hFKxNYXGV986+5sPM4GQEGeJuyoi5GWY9AjU+APYZ4w
	 3Dzn31lwPfceefDrBprmIlReriB+tNOECLUcuW59OCMPn3aQm+WO+/qnEAFMpgZ1l8
	 sCW9RHb+8ECp+P/CpZgxX6/rmHgcwyj7rsor+kdHnmBs1wScLTDJ++j02wC77AUQWi
	 QS2XqRUHQu8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ECC369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571439357.24554.6080495230660802611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47c90bcba6caffa07939f1f8ef52e1de2776ffb782b03f99a3bf135b6b5a2bb
Date: Sun, 27 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745714393
