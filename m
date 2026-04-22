Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A611B3925
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776847054; cv=none; b=rFTfU8EnF/2XSs+KCQUCzH0K0N59M26rjxegMj+PM3tJFrWOsr43K3cjZzB8QURt/+dXdmgEdFGjj6vsf1L5zQ/WM/+jqPXYGZx0Y7xN5RvpEBjNkacuIl1wiNyhAT9R+USIwVWuJazHesRb7b2mkV9EYc0YZW4Wecq3+TOfxQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776847054; c=relaxed/simple;
	bh=jDbph+n95gJluDxeuMFnXeLlK8PqKOyxeQLpQZxhVP8=;
	h=To:Subject:From:Message-Id:Date; b=YiX0o69kGSlm4SH1c8RBqYNGIOQ0kQIC1xPd4rkaGUABIRiYeSGIMaFhsnElxwvOzBb+/PcLFT5HSOSAgUtG8e0I8HgyHAllSineA69uYd5mbJCJdOIbxhSYyPDoz7Jom75RzTv7Sc9cNKg7DrQDmmmVcV7Q1HOkeJzPqbLgZ0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6HRxKDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6HRxKDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A54C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776847053;
	bh=jDbph+n95gJluDxeuMFnXeLlK8PqKOyxeQLpQZxhVP8=;
	h=To:Subject:From:Date:From;
	b=J6HRxKDnsrZ75Z0ik6zaYZWWGzrvo1kebF43K45crZfEwVmC4fFp5Qwz5neQaK1kA
	 LH4B561NTfnQGUi2KaQvCgloP5ZiGSaemzp9daJKKbA84oZ9hs0d36INQOO1dJeBQt
	 Y60aIYGiwlWr2Fd843dCWdAr/rd4CFx0RU2koIjXGBq98XvLzXbRW3Ir6qVl1P/wMq
	 zpJlvN0vpZRWrDOqyJQrY/PFQwyEKuizjjU0YotJK1AK7PHsoQBoq7bmojKL4tbb5Q
	 HSUSOCJpecIl/5Gi0dSILA+o8iTM0uDTMF898H/L+WRA/FC6B26VOiuPMJcHOVPas5
	 jaQ60aJyyRR4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F63F9B5E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684705368.20147.14055531563313864250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7286e82f95e3a2d6a9ca06ffbaf8177fd39dfd220b7e17c8c95a43ea1d3029fc
Date: Wed, 22 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776847053
