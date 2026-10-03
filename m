Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5514578F2F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790986234; cv=none; b=e8Wzw1jDu9cV6hf9B4DhevQWuiwXLmt+dMpupOvyEfDLJOZ8vIL/FfJLtM/XRBRKovT7pnHwasivFayDhqB4FdNS7cANzRKDZaLiiBe2yCVo6fEFvW6gZ5BJflaLLLImGUrzHysOi2vpTUZI9GsShELxDQii0gthZMz11z0Ih44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790986234; c=relaxed/simple;
	bh=Ek61y/rtsq6BY2ajnF+JGmoab0yt37zztQ+dSxZG0jU=;
	h=To:Subject:From:Message-Id:Date; b=n71UMNvbmBT4TwGug0+WOXfyJpTmA/SVcJV1420yQSN8E9I2iHhpcgZxEjyGIWjOcLs9L8ZnOnkZnnraD2F6GfQ1Mp+0sUjqOv7CVLWajpUtUdHfUJIBUUtE+EQ7FhuFZ45MxcoNAzGU03zmVYYuRCQAn7tafgX7RNc+5SLi2v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yp91cLgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yp91cLgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44FEC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790986233;
	bh=Ek61y/rtsq6BY2ajnF+JGmoab0yt37zztQ+dSxZG0jU=;
	h=To:Subject:From:Date:From;
	b=Yp91cLglhM/tuCAaGl4imSb6cXHbL94d+x/SrxffVNUlXqAqL68K8f5mmAjqQNw3x
	 jcg+XQElzRDj923ecG6JIcgcWUghmwsQWm+hMnm7k1nzfz9oQYVE0Pj60a1KXladut
	 CgIR4kuBvpfflnddoh5pSXkPj+vklTLUIb1hZuMJJX8HdI4ffm2VNqYw3xloZEIiya
	 WD5F9wVBdClFqi68x9Pko2i2w78OLGFAhPgAIk7EDsaxVqmvdJiMT+KLp2yTFazWSr
	 2lnB6Fh5SiXQTcdP2IB04pV/x7HMgomOTETDlZnaUaHukOWoozHD8Am4ri7B5Wfp17
	 K7zLfVp+5EHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B203ACA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098623369.3069.18295122193661698239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721468bc4bb80e812ce26529fe38b582848bddb785bac341f92afbaf9db3e3b3
Date: Sat, 03 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790986233
