Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042923EA8B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771112094; cv=none; b=ZSNLSV35QaNuen2052f57dDw1tKYWt5/+yBs+pTRFY5By5HVbsL7exifWXNHbpwWoJZOqHlURYO6uXOhGJseG9sD6T5N//Ket5LoaueBWVk8ctLb1u0G1JZNA5nVRYj7THr8ZaS2GEAbTU/w1h+qGWaEafNCw3onBpBvwJgQ+E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771112094; c=relaxed/simple;
	bh=f2Q/BeAmCKeQDjZH6YEShFX8tc0wLGX6UphfJ1fmJ3s=;
	h=To:Subject:From:Message-Id:Date; b=itwr/sVQdXaoqsjCbXFmNJfob3ocGyDMGsnDd7hQpcMK3vhn5wGMQA2CU8xlZ2FGXrfZsHNfJAip0QlniTlFReIQCwnMCxZ+gE4aNP0Yuo3bnMH6gJ6MI1VY2vs19u1i403hMETpQ5SKp3vj05aYVvGzM8+OJj+dQXxnK6XUOeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXHVhMZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXHVhMZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82FDC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771112093;
	bh=f2Q/BeAmCKeQDjZH6YEShFX8tc0wLGX6UphfJ1fmJ3s=;
	h=To:Subject:From:Date:From;
	b=YXHVhMZI7t46yaA1wFKEPPW8OZYJUQKzxXS0nGuiYUOIuAqrndKoaDWHby4Ry8yHM
	 rAPrzxv8ivB38sf896idd8TqFkOkQK4cDarRCeHnLyWcr3uxUFvTpMHLb359TFVEIf
	 efO2cJisXEGeCLBwLKNXcvMpp69G78Oa9pj66pb0uj58rLd4vnII3/tAAZtjvevK+e
	 VOZM/qOd1ql1ubhstqHFFrHar0P0DrDZopds9Ra2lAQM1v+O/k5tkwvcSwPTUsEsir
	 7VlOLRIcMCEaHXA9fmcZ2X8DrKXfeVY4Pt7ywrtbhfjNMd4lFGxZNxYv9fLbz62/tO
	 THRJFgMIOGvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDE9EF5858
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111209363.8956.12090800750736771422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9849b3626fc4cee7002c93967b09b0286e23add9b3eae86eb6bcd46a2049c238
Date: Sat, 14 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771112093
