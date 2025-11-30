Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE8149C6F
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764499374; cv=none; b=m60g2aiaQADqxeBIlTth0CpPtAL5k+ucv5oe0keQqCkoTzUI1+ohh5LeFjDUa9MZ7feXiHwV+a5Xu9FAyA5BF3gUkmsy+zVkgFxIMUwOAqHWcF2xfRvcExml9ELnGmqxqVZv4i46NrW0e00qW4p41GTCDqreK++0Q8+PH6KGTdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764499374; c=relaxed/simple;
	bh=qaXTYjChjKkNbbAFw0mdypwtdW09R2Pvbeor1dL4R+0=;
	h=To:Subject:From:Message-Id:Date; b=FYKZOseuQOexa+JvMDq0SmAuIgegbIzNwFwYyEP4T4PGH3nRRbwqZqrK0GC0Wi3JGIuII4WtCufS5seSzY/uWslhHkbsFuqxlSsYdlS+4xRpCuOJuMKrjfktelOeEtA24IjyCf2idT72OR2yd4LB5UbX9gfHb3ul2nBMFRCZCu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebh6GppL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebh6GppL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB45C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764499373;
	bh=qaXTYjChjKkNbbAFw0mdypwtdW09R2Pvbeor1dL4R+0=;
	h=To:Subject:From:Date:From;
	b=ebh6GppL/+UTHGJjeT/K+5/QqtmZ6zAnlXOpC8hbwB9yKtLmqscSAAmAxMi3w51DJ
	 1rmxKxo2rSmDbXMwUDe0FbEV6DX71oWsSV78WA3Yq0ETzFWnh/s8Av3avSLo2dfaTV
	 zyfC4ZWhu07/fjnBJ8PxeHUosvi7jubtyMyQfaSU+s3vI8H2LUAehhmkU7RhFIqO0a
	 +QkYDm0MZZHicwtxb2bGQkPxvZJwE8Nk/45CMb3PJZ9RGM1+n4aP3qhVouHGYVjvrP
	 hhJvMOgd3Q/6PeVGF12xM8SnuX7bedBofTSQ8gLkHUhxXgvGtl5TPEv2HxMYKMwlK0
	 USyyVDW+irOOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFECFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449937360.7249.3245944903262839257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb0f26e08dc5be57d92525efd1c0adc28c9e0fcbf07b596934d653544e5825a
Date: Sun, 30 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764499373
