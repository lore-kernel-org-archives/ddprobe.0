Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4CD1C84C0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758912594; cv=none; b=LKAPiz4rHkNAzd9LLA0uMgv89APjr8pUY9r+WwkI3wTCYIFZBBAgHOWuPf6asZV57vxyQ5xxGT2s4LLnUOmecC2UuzKwiFwNW5EkvAcKZDFRkOxsIIJvUYZsaljNHUoBnYizbspOzURZdISj0QEMU0Ite4db9JLyiLhVCK4hzmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758912594; c=relaxed/simple;
	bh=WFVc/hixc2uezcz41C/ei+YZvxow7BbX0MfMXtEc28o=;
	h=To:Subject:From:Message-Id:Date; b=WfUULq1CFSEnCtW98fgLSiZw2JERnEPrnY5+S09S5HjWJuIB1sWmsFvaUVosd4Ofep59Hn8IMy/N6WUASiy2ye8PX3sl9EYbbN4uvCiSTTgA9idWwWQDa9oTmWjjMb07NEYCCeVtyrvYW2Av1bPEEuNPj92jjqfE9cricQeCS0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXWp0LKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXWp0LKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB7C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758912593;
	bh=WFVc/hixc2uezcz41C/ei+YZvxow7BbX0MfMXtEc28o=;
	h=To:Subject:From:Date:From;
	b=RXWp0LKm84VnKyLvv1ZCbT+1pMrmXNkbrC01vBi3HLU+NJFXcUZpKKRLjebiaGXqz
	 DBPLclttgTDbQ335EVVFIgMLdid0C1M7DqjFyPE740ZnebgROjAxYbvbTVBq7bQLt/
	 BxlI5+nLe4EEXjE36aWJAyqwtamAHxi/l0/0JWt6YdeW5mx0Y/L3HZsxbdVXXgwSx/
	 +UvwkXOK9uz2MUgHbfdPPo1UyT9OTEqh5TSZHXb/1X0ENn0nPeZmOodhw0iYx255Mt
	 VtcB4nskVodAThpmmrpXkYBmrj0c+FRk2r2Ruc1x2KSmWHMSqXFVVFd39oAgYtl4qN
	 1K8riwKFUWvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FEDCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891259358.13420.9509784010917658987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d7ad038497e9659e85a6c65f3e7debef947150c35bf21550ba71fb75b761bc
Date: Fri, 26 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758912593
