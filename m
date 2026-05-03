Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2350E20E023
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777788454; cv=none; b=Jauw7PXuQYoqm7t+US4U7ws8cNldbc3I1iDOII33IN5uvgEqwfdXF2v/E7EVB5HXl9VAi8U7zYei3I38hOZT8hAY6bGj3nGulIT4QCSYAA5ptLr8C3elQ6AHwze5E5CZa/5xwg2bYDPsEqjQXmIjuT1p70oGPkRsDc8w9BS5n5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777788454; c=relaxed/simple;
	bh=qOTYrW2QNU6HVw7mUXSuhNn4lqcQ4W1bYIROrcrFS6w=;
	h=To:Subject:From:Message-Id:Date; b=KI4cpYYx0g8s6XEGbjY31FogElXVTD1y4EPRbvK1vG4URsgnhOGv9AmWxg+54LQe4GGfHZfxF/YGwjUPiD7Cll1PNMCEGJbxFEpOZPmZiEGTnYjTnIooTcilT/MSPI4X1tQd8XrTlixb5Rie3461mYHU44JpqenWBKB4k9LM/ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbFU44ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbFU44ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C56C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777788453;
	bh=qOTYrW2QNU6HVw7mUXSuhNn4lqcQ4W1bYIROrcrFS6w=;
	h=To:Subject:From:Date:From;
	b=tbFU44axEzvTTuZQZ6SqtmRYkjXqPe+3+DiCvCc0hFR7ZDWhd6Ax/5sUVNxI+I/hV
	 H5KMKMAicsXAHMm48gLTfpwmX8CN5W/wF80WxcoUTub1e9xOegJgJHFwdZ+D7WlWgf
	 lPD5Mgc9IEOEXQFGLJjQe7ieGNyTVOResBCJ0pKjnaWWEq78zOc6L5staCMB8D+CYV
	 cXcPOtAeaPYoU6T2xjn53puH3H8L31IqMOB8jKfUUFSNM5hHwyI1b053oUav8KXRJh
	 z8zkXOvFIL9EJn0oJV/waAs5TfyUq8VmcfPh5DE3r/THQC9EKajxRWW572pI2EWfV0
	 zTjRGK7uuhOBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F1FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778845368.16719.12242863464515651155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9ecc9862a0ff04c5b7f672a8233d43f80ca3349c8b5e87db7358fdf4bb9d88
Date: Sun, 03 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777788453
