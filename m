Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28D645
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749514794; cv=none; b=CB3Kobq0flYUDAihQlgT7mQ+YMKVGdlXpuMK+Y2DCcjKH5B3ysShrp8HirDUbg7xCvLDVXZ+afzAJOW/D6gi+mxKyJtUXPf7dXWQOIrrTC1pDeisrt7hxorg3tpu+xCuIHEQ0QWnbCP1g8hkJ8Vh9rGtukfLnNlHLo329aMCtp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749514794; c=relaxed/simple;
	bh=E+/DN6HXUsO7OWYaKwudFmESazup4TLYs9TH+mb2854=;
	h=To:Subject:From:Message-Id:Date; b=gWOZKN+DF691kAI7AYGLNwNGEj2etCACq6q+Y9qwi68RWj+u6Ypl8t/AJoZCx87MXchw7uIAIm6UzxA/SbKCMDBhT7kp1NDh5QkfkRgGQ0TEeL7NpxpE/6Vr49rOWQw87ftNWF9tIpYaWs/V/Q0AleZPmuPH5NkrQyZdYBgBPEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzaBde89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzaBde89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749514793;
	bh=E+/DN6HXUsO7OWYaKwudFmESazup4TLYs9TH+mb2854=;
	h=To:Subject:From:Date:From;
	b=YzaBde89MwcGT4COu5G7LMH1mf7ok0nnjU7n8im//NknED6L8CeKfdJrjonpxRkw0
	 f7uMbcNSitoNTizBXFAYWjQ/ASipGSgV33fCQcTov+mi9PQEfWRQhQhBXbnineYpK/
	 TSidgoE2WMKLtr4eKahwnMcYk01ZUxPnx9N2SviTVS4fFTlYK5fAvFGCZuumHSloT2
	 /TknJetHTAXUcz6xIUZOndmu4PEI6PbmkX9QsJZnijhmp4CIKPBcQiAoX0g4Hm74bK
	 m7OMzkfd+ko6WELawg8GvKmo/wuA2Cx2yU8OdiW40kY51dXezkvypaiWXf1L6T2Zsc
	 G2Y43LvCJUwuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92433C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951479357.6365.1214847588270722567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aed5b904de16eecfd8bde6c731a8a8740f02d4aa5029bc40ce67610336c6e4
Date: Tue, 10 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749514793
