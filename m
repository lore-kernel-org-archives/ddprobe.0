Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D6BDF5C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713636023; cv=none; b=HcD/GhcIx1SCyoUli8JyMYqN4NDKEGwBV0FgUCqrSX5kmHxIiBe1G6jAcScxwopGIAjprpacyipCX4RqMdGEAXojINBCoFMtsrEXrsLMWtKZtg0/lrdAo48o4eM27hVXslUwLgP6oyTmiVGlOJvO1Nsxuo30mAikJfah8PBEhKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713636023; c=relaxed/simple;
	bh=yvsKa3/Yd6eZAviqRNczJLXdULL2mKi+uLyoaZRiwRU=;
	h=To:Subject:From:Message-Id:Date; b=iA2Ftubeq0/6ZMnxnSXCHGYKmW9PKgmvkbX/IlZHhR9dnM3a8MfobToOy7yBi8UNzTws7MyTvWFmbAZSbATGlf53bqqsnBNIHVb83XsDfA/9sqjs9nivtV+IPuIdOnkFUAPpBblfjKl4ed2fQxTbFhnV7fxK6FFlTUz4Oh6o6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esuH3An5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esuH3An5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9702C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713636022;
	bh=yvsKa3/Yd6eZAviqRNczJLXdULL2mKi+uLyoaZRiwRU=;
	h=To:Subject:From:Date:From;
	b=esuH3An5Uv6rNEry5DS+EmKcO9pDg2wc1acLQwSqZ3XdQ1tutsTrhXeeEgaKPa0Tt
	 OXaRdthmTYuIehiuhDvisGMv4yn+M6mNCcvfdTTh5JOIRkHHzkJ4INiSYykZHGZp32
	 nLQdTSpPuQv2Ux6Zf+g3gkbpLO8pFo6uHIxZlkcUA3FHJSfRtayIUHRvkiRwl/sOKG
	 3uFJOnx4jDBu6guaXJXfL4vjFOV5e+WZoRUNpSILkQRNHyVG4eGfvJ9iDqZ7cPjhvB
	 k5+pbkMG+EGmwwf1b83N3sGuG3vJoO4DMlz0h5B+AqEx4uFYECPg7TfV83XWb/d/jD
	 jerlQfw4DnumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C590AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363602280.5527.12139322467680418360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78559c69c5a9ac7287105f9fa1917599e6ea07fb282103f7ebad028fa7ad7040
Date: Sat, 20 Apr 2024 18:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713636022
