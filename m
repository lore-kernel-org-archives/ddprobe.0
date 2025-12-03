Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC1B2F656E
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764763973; cv=none; b=DnovQApFckMW4tkW7YqkVS7sPxm/cpytj6Kk61685S2u/BKrahmzIv/Ygx33y3CUy4pByOkc6N1qzR6kuNXx+jJUE4hK2ioFJ7vMDR227AqwggN/nZ1qZIujH67Hy8IJ1UBa+LDiurb/PVIxLLicKyDtvSoz0NlwNBQfSozt7T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764763973; c=relaxed/simple;
	bh=vlOuJ1/3Pf0xX/t3q/JB7wp5uEbhIQMW8EaZXfO6HX0=;
	h=To:Subject:From:Message-Id:Date; b=SVQsPIUvqblaMImqeFjDjndUN2wFCD9lMS3+iPFhSs04FAj/5srX3tg19BZWprDhxNU3DuCAekUX0KBQ2llnPtvlGICaprPBmDZQUy+Yzptp0jb+1rVuygM34rMxZnb9T405R7NdJYCsl2l2K6CG0CEQZ+W6O/IlARU2RHBYuf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jet2VTgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jet2VTgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC5C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764763973;
	bh=vlOuJ1/3Pf0xX/t3q/JB7wp5uEbhIQMW8EaZXfO6HX0=;
	h=To:Subject:From:Date:From;
	b=Jet2VTgTBr9o42z4V3C4+pkNwMwbJDhl/bs+SruEjVMDIte1oSRZbXCYfgUfxLTaD
	 EMA7/MhjGTbvflI/NNGVjYIPFLC7j0S+MR4eZ/RS0owhUjyqt53p6WOqly5HlULI9n
	 8DWYkx9C1643hZvTeMs3qe/E3N6mJsBFi1u8tt3yYv0gS38VCme+irL1XfzuYt9p5C
	 OXsCNi8IHneqegCGI3+c/wH9hxqzAMHzO1lnhHIO3oz4DecWbdp/fL1cM8CM/H9GrP
	 ED0iHZ0mJ6IfoTu+hkmYgz/hj/Mab7/lvMA+cRWE2e6xwi5f+ddiUuWLFFEFNjgRSQ
	 oWeGhBViUOT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C08D12D4F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476397358.30337.7835555983967753704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060d7b794cc35eb0859319abfa9a5e2462f0f99506f77ce470b4d31be4529f03
Date: Wed, 03 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764763973
