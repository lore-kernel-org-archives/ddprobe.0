Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450AA139D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747876794; cv=none; b=igHf4VlSBPQU8fcqPT/BmGnbRGEOt/P9L1+1Re8QqV8XdRbNpEgyHa1HLvxpWZ25Bg/d4uD6r97Muo5MUeltr7ciMF55BK1Ank9IarqC6+Ik8Skawu5fQ6Ug2vTJA6VZxruydHK5nYYLNUIqgeNHRLvN7EpdEUJzGGBjKjwFG30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747876794; c=relaxed/simple;
	bh=/L6vY2TyZpfxqz5kPxefinhpiKRegFK3jWCAaB/BFzk=;
	h=To:Subject:From:Message-Id:Date; b=fmo3JUvUbNGkxNSgfADjM+0enoLlRhB3S3ysK5/j9MJBH2j9qHJ5ptSzCnRXHeZaIRkHwbtRuNGk0SbbqKpOX4grzra2IABkYrwnD+fxuDvQLOY6WfJHcBlmHVIK+XgBIUlcBsjT7S/Zws/Tuw4WUq5m3sTqPI2IREEoWo6x0OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT4IFWS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT4IFWS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9D3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747876793;
	bh=/L6vY2TyZpfxqz5kPxefinhpiKRegFK3jWCAaB/BFzk=;
	h=To:Subject:From:Date:From;
	b=FT4IFWS2/NDobr02rAzmkCyUC56VL50UuSdtRISu6eDSJJpy/rUFopFNTEdxylaZM
	 HEcrG/assH4uCdpV6a8pcS6z96ksTlpau3L7LP0QPKzV/0huZPngQAuXzm+oHUDNJE
	 h4W9f2wQvAxHoEC0XCCXNk6OZrT+p90MlFUSXQz4QczytLV2jNf8p5mSqDGTW60+sc
	 s+Hgn9abyFJryi5iPHkAv2X205GzTuxpr/yGuxuOfcJaNQNCBH6AJL9NDmZ8oq6toD
	 hco83Poo8oTcuYSkB+JtcLahOqpGBcSWtpTRSAbmwl3y01Gn4fXgDEBRKYWcmh4qdl
	 +EeFynXUCkK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B3C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787679357.13831.12636405792366848111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a65d5620bee9f3185d13748afa7cb76668655bac34b6eaa9ca4948c5b045762
Date: Thu, 22 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747876793
