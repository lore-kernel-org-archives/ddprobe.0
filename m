Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766BD361670
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788886834; cv=none; b=dDb1pW7hDkf5AKtike1kH1i1C3b6siKK2ad8he5dSADHUuxra4zvIc10FNgcZTxzx+iiSgCnY4Jlt0C0RmCEml+0PnCSL1bj5u7eZ1TxROceDwL6bAzM1uImO24vgnFE0nqLjIeVz6WJYYffPEjESS8msg0cffZmOVqzZLEdXKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788886834; c=relaxed/simple;
	bh=Q8alZRJImkFafgMlcNYOqkmSr1Cy5/6796CO8DdqVRc=;
	h=To:Subject:From:Message-Id:Date; b=sg77JauE7TthI76FLlK3swl4l9BoQEnwJ58fcEuo3xCb6vX5IHXTa/S27fcSzCnDGpPyPeF8+HDfPiKOWXSrR/+uqBbFQalkIIkRDJ1bRaWdadFEacI7K6MatFJ76WjvbxqGsbbwVydbyUoP0gwjUSxnYN3Ze31uhbdyw+0D+6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8D/EhRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8D/EhRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C02C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788886834;
	bh=Q8alZRJImkFafgMlcNYOqkmSr1Cy5/6796CO8DdqVRc=;
	h=To:Subject:From:Date:From;
	b=Y8D/EhRGcALnV25aSHcePVMCOCvI+1hYByQEqT2euuYwSG038IgMawZd5qlGFBWcW
	 PWxN6AG3xuGllt4908rKTEHR0Y3/qQdThKubI3j9JLo7yiEI1SbQHea4Jh4Z0C3n3Q
	 axV/9axyLo3sWeojcmtrfdGnqv0sT1sd1fvreWHlt8PgDNlsMFMmEVIrwIrj7AwG3q
	 3jFhU+rEnf1lQeZj7MRY9tjS37l/qj/uMN6NwalU0RTa9xXcN+3ukbbPkwFT5juuG0
	 6GsgO0dl/4l8BPbyqtMyfNhrcVKFBrmPttW8olI4vnoNOZXpoytVawcCX5T0BrGiAI
	 sScIhdhfngcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F29C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888683377.15737.17427600872105444083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228292ad4f0efc7467c2f0437ab4fd618c0301c669b036119e8cacd5d5875cf4
Date: Tue, 08 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788886833
