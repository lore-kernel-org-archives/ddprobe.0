Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5A1188A3A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764518574; cv=none; b=XyPAMFrkkgiOxoc/24j5vvKaR1Gzx8HyGlAyPqPt1OMEcETUd2BHyh/6lFe4LoHC8+vsoaaZz9S9M0c1VDOxwUi8DNUjsUCX9LwmRs63pnU9QTMEx2m7Z/r4wcBLc5nWywackvRrNeJduBO7mUwcH82rgbTcjbc4WNrGKspUV3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764518574; c=relaxed/simple;
	bh=6S8l7ct5They0LYgwgOHLqvAntS9uBU5Ixn40HPSD/A=;
	h=To:Subject:From:Message-Id:Date; b=sG6Uc03Wy26BvQq/+nqP3trcW0Qq+lAvK5Kx8ZndQsoP4q1gxBMzkaRmhzf/v3INTS4j6KIirNDLU4oB/eDOHUR6JPfZYuNz+wBaI4CWgqNH1F2mpWwRQEYRNOvlI5yFEqp5dXR1S65uIvAgdWCHah8TknlJM5rtcqaCU7uQOb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHPEOSac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHPEOSac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FCEC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764518573;
	bh=6S8l7ct5They0LYgwgOHLqvAntS9uBU5Ixn40HPSD/A=;
	h=To:Subject:From:Date:From;
	b=pHPEOSacW4oUTX/+t/x+p3UjukvAh0lD5F7/cZAAXxVvHcALpnqV8jkCj9Lobpq6O
	 +ETAOG/I+ATO77up5Wnf3Ou8NfbA0dYxTmy8AJDvD6XPtA4d7EJOKFXeSKhZX/SsP8
	 2xKH1g0OJiYLUvK6Tu7prB6Vhf2yKbXx1MpAZNkwAcmA1roQ8NQdtejbOdORQtjGKZ
	 F3HEvG9Y1gqEU8IWKeblP50Hiz8qyN907BTzsW96LYc83fP2GiDZV2kjATFpqGEPlz
	 R0fR9VcTtQPzEhB3WM/1EQvMIabDaE5NfazZljKZX00447KJEfhq1YaK8vrn3+xBV/
	 hUFmW/jhRUO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2EED116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451857361.10791.16716302468752692222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75013ece57ef35079447d7afb5d79ddadaa9d40c16fb9725ce33162b0fa36105
Date: Sun, 30 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764518573
