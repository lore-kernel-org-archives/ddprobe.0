Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE1321D3C6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752100794; cv=none; b=cwIQgUUZB+K3Jd5Mubbl/3fppClD2XOUdaDbmIcZ/v3ysFIIK6bwSQgl0IOrDwK4BQ/OuOutJMZtZCvkuO07iNjILSSZVgc0cK6/qa1UEaBP2cpABkN7WNVdEpAUPoKkJrObJigGeBRaReiYuVFsv+C3BF++9lXhmmFrl8RE7Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752100794; c=relaxed/simple;
	bh=Uxv6j4Cj2neJkZoxNayu/LrzvsDTydkeRGErsajjPRc=;
	h=To:Subject:From:Message-Id:Date; b=NFfz+mYwQnik+n6aGlO+vKCFxQK2VsR3RqHlaP58kEjKIWzZrSgP14QApF/79t05R0L1kUaDOLYmRF8ZCXJ6urN7DYatxBMdAXZqSmOTMjy3f+BxDfmMzc28ugs0mMnF8Kg29Wh7cNkze1RiSWcj55gHrnm1r7BKhd4awpfKG3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDxGl/am; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDxGl/am"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA15C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752100793;
	bh=Uxv6j4Cj2neJkZoxNayu/LrzvsDTydkeRGErsajjPRc=;
	h=To:Subject:From:Date:From;
	b=uDxGl/am53WX86KUINJIGIoLvOWK7+TwaPTUfkq0XqxtPm+cPimZ8eC5oxn+ra2CW
	 vrfFzUs7cYaajO2HBYkKSRwQg8/z74Xl9wCIY82TlpJbT5qQSBuRK906b9RDsjyxG2
	 Rr1o9n+LThFyzSxGLum+RhuUEEsuwBXyP0mHZ7jFzhv7/qMIbP3cZ2BK+jRBKTsMUz
	 QyBEu7bFVAusyvW5sWtT5pYYSqvbzR3ougFlUwXru4zsDDMnIoBSzhZwJi9NZCldo+
	 kdUaQotDm+dk6aCteL6dEh7wCoMa8dNDCmTcZYfItK6KF9HEP4dt0TnAAF9xLcmpxJ
	 5BtB93EW7NeeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E7C83F10
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210079359.28098.9685492100334174861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43649287d583b5078429d3b64e46cd7977d1850a499555e792836ce690c969f1
Date: Wed, 09 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752100793
