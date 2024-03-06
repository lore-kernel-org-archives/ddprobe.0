Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA4B17E9
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709696297; cv=none; b=VEN/7AQmxjAiRpTGVCowmV715Z1m6KGxj+idW2WmdA9c8Q6hw39EYep/EMWXZS0tA7WlYLDjczfW6jbcs2IxuxoxfUCrxCoWYHSFrO82JsX230j5faJey+dRbyRJW/olnMSYUaYMoiVCVyDSmp1+26OimMMmdKUV7QsDLQMzMH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709696297; c=relaxed/simple;
	bh=HKKOOAWlC26U+k0DFcOSVQ7KdoepiUeRPL2n6CL7fy0=;
	h=To:Subject:From:Message-Id:Date; b=awySozoz4uwHy+x0EQ9XNVKJ5plEmQD/OeQsf9x/+dLo9sHv9YopLwHi04nRR7m6FbbK38B16q9wBiTiBK5fPTYiMOiU+pga6TXm+U4Gj2TTfyZlmQc51VL3eJQboD2kRV7FfsbMmKyhZQhOU7rOQvV/Mhm0yOphZNGwQGX6f/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJfVT0L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJfVT0L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E583C43390
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709696296;
	bh=HKKOOAWlC26U+k0DFcOSVQ7KdoepiUeRPL2n6CL7fy0=;
	h=To:Subject:From:Date:From;
	b=kJfVT0L0uMDhiy+uMp4MC806VzxQI8VneWWEACaiiDE1RV9lHtuoYmP/ObBHCq30d
	 tgVLVpjtBdT+wZnfiiMrAy6CpsX9FLg+Fob0uox4WoLVQKTKaP5w0Hak0zbTAOuzic
	 lRtVqsanhyaYev6okNyczEvePxHMOGFUmTu/nTYIPDgXMWVwDph3l5MGi4VlfaLUHg
	 aQAhhdFfSmR3vr93UYJTR2RXLZMFw+IL9NaU6VUbzRH/LB1i0wiyKk0uibLKmo7VXy
	 7cCOG5qBkYU9TzNjmAAmB+tavQzyE0vYoJACfxRpExjgKShojFwz1Q237wp4QLnFRF
	 UKHTGavMNoJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D5CC5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170969629638.26105.6669547509285510342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb556ab17a250acf491e0d33e189ff587466649098bd736c9f7eb5915ad0a9c4
Date: Wed, 06 Mar 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709696296
