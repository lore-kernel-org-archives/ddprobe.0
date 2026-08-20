Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694E3352003
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787252434; cv=none; b=unFAcx2rNiS07Xtu9WI/YOdUAaVDXDdkLFOqjy7YVTqKpGbEFYtqBsW7abvanTfFv0hFPo9GXEDWJZGB4r7mx87wPxMaUPVwIAHrDMBGr+bRgD+8JI0PuCVfqk59ZexVbo3ac5fkmEzf8j2Cw4khMZMaXynTZTVoxBBPynP0sBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787252434; c=relaxed/simple;
	bh=uReY4XATnRfpqUVfxPCEAbMtBB7WIXeldhW2m3rHPls=;
	h=To:Subject:From:Message-Id:Date; b=NR248Mo7EdEXSLLYASupvBUC83rWj6DPDafnzzFqQRmF2zoXHLbITWzX7tYx4ikXjC9xKmpH4kZ958K7UYIu3RcA63IZRanyl0u2N9lq7QFEIPDB91WOhgz2xPlLccYY7/DUb75MNwiAsObWQU1yVGtW3IeGAvESIcM70DolcDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz+YO/hD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz+YO/hD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC89CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787252434;
	bh=uReY4XATnRfpqUVfxPCEAbMtBB7WIXeldhW2m3rHPls=;
	h=To:Subject:From:Date:From;
	b=Nz+YO/hDFok4kszyR8Ea21zr30Bn7BT3R6RE0Olxc4WvEeCvrjzLIUP8J4imJhQfe
	 +TJn5skvsY5Wf1VRsdaxoh3xUxT4fAvIVJUeHfEwWGTmnpYI++IFJw6ARuqPnzkfVM
	 aBOiXr9vu24FcJyg5p4vrVEfnseM2a7f1iWro7iNW1f4uaGhFgRqjNrrDX85hngZ2f
	 /GU/9diWCFwlnDm7BMcFag8J2knYPwMBy5it2U390wyA8r81MKYyqs19VAAI9dJ6Yb
	 fk9q1OVi3UyVYB+LA0X53mG0QtE9aB6d+GLgj9dFVlLMKb2463RpP+PkSaYuVqY6O8
	 3lgQtV6QeIkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED1CC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725243376.25841.7604588750434249080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf4bf8b7d0b4ed84d983cf07b2ccdf3ae74c5a3c16cc602706c5d9af072c601
Date: Thu, 20 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787252433
