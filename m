Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B458B67E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765588374; cv=none; b=AjiyLHla7PpIioSw5YM0hRYPlZzWP49Rnv0xSDEGrqu7e/ZHZ2EgjOvxwxttGiZKEW7OdSEJqsMDSI2c3qEjZFtl1pjWK+saE8T6RbLNw1pl+tTceK7iEM/Zijz55zpu6/UWc3+SacAozBgkYyIOO+krfDh29H80p69zNM5+wOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765588374; c=relaxed/simple;
	bh=To3iiZhxtUJcZ3gDMoG3AEV7SrGRDKjNxSEpoV8EJi0=;
	h=To:Subject:From:Message-Id:Date; b=VEAjb/l47e8Ca8/RR5cN/V+XvoRux1Gvrhgc11L8WIHg0h0t/VtqRIPs4bYb35CgJ24evo00Huu2UaOVNRlUQ77ymvzTnTQqEZPueUm6wiExBJXFXkx3gfs1Z7pPeKdwkC7oaM3Zc6JQ+mZ1kt60rmTPcmqjHZrocQ3ivbK7uQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6OlnyAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6OlnyAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77DDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765588373;
	bh=To3iiZhxtUJcZ3gDMoG3AEV7SrGRDKjNxSEpoV8EJi0=;
	h=To:Subject:From:Date:From;
	b=S6OlnyATKBiMc+mQci2moMqQNr3YFxTi/wiVZdyNhyuZ4TwXZNC+thAPfZy7L2ADi
	 bdGmCw8abvg8W50o7vbmkmJapP/SOCzDP1ZUGkfEXY2Z305qgfVdORv4CZIvLKm32Q
	 DSO2KSlOcycbqPYtIdwbvuywqZG1X8IymFkte+XIEbKYhM3NiavDQeu/Q0fnZNMmBe
	 0H0NZKNDiYcU6hVLfA3fw+jK5BmagirE/ufnTW5kVlZmFcc+ScPbW5y+Csj/8TG4HC
	 dorjkxI1nh9uNDoysXwDGo3VPQBvQntYvKbiEZOs4iqTQCGnJaB7KaQo7ehZpB0Fhr
	 9WIomQrtouFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1CD59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558837359.20364.14149637821422439254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3e35ef71a69e60d322af18a7440b25abbbcb7ab22c6f7436a15d167e92c7c0
Date: Sat, 13 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765588373
