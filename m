Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3569235280
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750828194; cv=none; b=n6Z71SWbGlK3YyPS66e1si3kMC9uYaKr/bGvKW/JP85B7kO+TmDvKxFILfNFN2EAU5kvbjJWni9xb49DmlJFcQow2Q1hOqH5MeALVxtGch2b+5T8vdN8FZuvgaM3DLR3OT8BeUzyVxixIgAqt7czUJKhqtZwuLgzxcV9eqqRoLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750828194; c=relaxed/simple;
	bh=UDyA2hEBqOSnDyWu9uOZOJ1VtxHOOwvoj9jGBVCJlpw=;
	h=To:Subject:From:Message-Id:Date; b=lI/+sKajm2lgW5b68zCgwXPmRbDxEHGaQyJz+XM2k+T8iJtoIs0Y4qzLrZ0GcT7eWA4BiNJzSYgegp4UH0CVi33fCDMsERWaQGmGG1r4BAeEAQton+V/x6rY8K9gHRc0dLiF8oVijOa3cExwW/xyqIIgPdMpUo2Mr/2bmdmyWEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apZC4N06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apZC4N06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D93C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750828193;
	bh=UDyA2hEBqOSnDyWu9uOZOJ1VtxHOOwvoj9jGBVCJlpw=;
	h=To:Subject:From:Date:From;
	b=apZC4N06nlP/aU5oIwpT8VGAGOy4LdGM1kHZnSOETNLv4oz8Sf3dNn+yGNxMvFbo1
	 F1yIqiWLuI8dKKUwaOeXlIAF9MRjnusroK2P5BJre0SsuR/QFcmo/Zr8jdqAmmITX5
	 U4RgNgPmpx800i4O4Mq/7sO/OT7VlvcxSSI4YLEY8UpnSCvxJsybzBojpFNLvrM451
	 GSV3aQMUjyOCOti7gjbRNN3ztHrjPWIDj+zlEGCbQWYffa4T3rIX3ryWQ2JUrDXy1+
	 Ms0hwMsH6DUiM5xBWc/CDY5a55lzyG+V7qpPv9/YdgTpDfQrikIn7tND7cNXS33Edv
	 ms9RABruQkAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3EEC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082819357.10915.13706441029245118693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005fd5cade1d7d82fd933e734945f5feccfb7c29bc92517c1c79269dc9658336
Date: Wed, 25 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750828193
