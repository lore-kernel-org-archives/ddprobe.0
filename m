Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060EA318136
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762369194; cv=none; b=Kdpe4Fs1TZRYbTi7DpLFJPpkPb6+zOHmUbxEwg4SuO2Kbs2yobQamTZ/hD38phGNZdYJJ3Ew6PKHgwXA7HNhk3ryyBBLytvAZYgEC4m0FPjLsEiaq5S3gtml5lclGi1+lYOaf1oh7zEikDdHOq9J/K+FE2aA+Pwj/UbF04Bcq4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762369194; c=relaxed/simple;
	bh=0utHa3KQP1ic9xGs9b15gpgoY4l4UNYfSH6VWRUYvq0=;
	h=To:Subject:From:Message-Id:Date; b=U+DZdQJciK537w8rV/nbBWjGvAOT/U8KpRXjzNN4GY/MhjdL1O1ex9enpLzqig2RiJEktSTiaGGcF+CUmMsddcL0mVVBkGjC+Ty/gYoNKvyGsLjCPEMyvdNlWAQJRHj/idrKfS+b19CbtSuYKtmb1bW7ENWvglShX3MRw8OXf7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhY0ta8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhY0ta8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7C5C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762369193;
	bh=0utHa3KQP1ic9xGs9b15gpgoY4l4UNYfSH6VWRUYvq0=;
	h=To:Subject:From:Date:From;
	b=EhY0ta8ziDVxzTG6tYPI6lY6DSGDRGb7LfRA2lZvNduabOj1Lp67wL1cvp/avpRTQ
	 Llg9z/yy/kLyK90kFp1Aiw37LJaorJwEgE6QJ4m8D0gaG/yS4lJhpij9x+4gs1ObJ+
	 fsDQ+Vx9+NwbGvhx1EICs/CWbrHElH1Bev7BDCGZg677InnyyFdVIRrdROpltsvMil
	 FF8QWCIa2olWG2wU1CVpDe0ORQfRa5IBapHzrjNw+9rqGaUdiEV+lXO0TBIpbl6dky
	 COCJoEvH+FyuRkSHaFb17o4vpa937S2PovqCurGs/x3f3G3qfWGJeWpFC1chtkmnhY
	 FmNxUfb+evkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE07CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236919357.3796.10183772356736007136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db4edd112d3bb70304d201a65d53c4264c922eb6d99f64936320bb57ef249a9
Date: Wed, 05 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762369193
