Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABD12DECDE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760599794; cv=none; b=hsHipg1++ArWIvyfImJLrhRVeWO6+tgVeinJoEhgywWSzSbLgQ9n/xiylMyDfBZiqZRQCOsIQpWlZOrQI8PN3gI8b7KxV0hcMleD8vM511jBFh5XRtbWwCnwIwFKaIk5OlB3oEEuSwCBuu8r4S2AHNGb6ZsyBPYHTF/4r1bvCLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760599794; c=relaxed/simple;
	bh=2BSr8EBOgvIfVq1Mq6/5bhLXW/tqMCo95Df9oL2i03c=;
	h=To:Subject:From:Message-Id:Date; b=hlDESkVtlm0hpmQV6+cs1A8zPRoLByvpI/LtEsVNlMVEh7Mv8mCRXbT65WUdewLwfkIl51AAm5GFl+yhNVgvXkWf1IPG2a4WKoqe6oHSWI14VScQO/wXA4L5xvsT8l+RqZG81+BNDBeWxL9TAWOaXU8X8/G2fCfvT0xHAADXUr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT2/Kgus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT2/Kgus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760599793;
	bh=2BSr8EBOgvIfVq1Mq6/5bhLXW/tqMCo95Df9oL2i03c=;
	h=To:Subject:From:Date:From;
	b=qT2/KgusNONm/D/8RpRXi5S8ZgR+JtzGDtmP3QNL83U6+zdxXM6QXemsCMGXWcndN
	 sSrG1o/LcSSkcdACYs5Z0XzDanyVBQB8SjftQzjOVZR3ZVf4IPkMJrExiYwboKU8wA
	 0r8x7cE4a1WpD1P/CUP6qPW1l6FYyOuc1Tge2qge6XauzsgDyb9PuYnWK/YPS7qTq6
	 pDVgeWlFSiEe72UvwsWQYBuMr2Hoy81DL/+QGQLHeyTDSYDvEdwdCx7VCoHvSTSYkV
	 YH+a6XoJV8YjK4ukqaWGu4hwo8ieSGl+i2OB/GIIfyvP6ZDv1NtflDEWqF14oaKIcd
	 3sIeDvF6dcm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C69CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059979358.28957.4129965635913686361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b98f2dd2349e276617d64f931d31bbc94eccffd6bef602a65f5a700004af09d
Date: Thu, 16 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760599793
