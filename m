Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D694690
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745153994; cv=none; b=CC48TTFNoiYq9jhuJoDNmjaYLOgCrY3mlkcfPLGBn23eQWgr4BuFj1jOVQBcNxbiNOUm9dkq5mgjNBFIga0bxrUBlmfU1BW5AHYy/0K/KQUIw4vVgY1kbkX7Uuoa6XO4SQVUJP67OleeXqff9kbhc0gNJmRRMtAM/ozMW1ppDRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745153994; c=relaxed/simple;
	bh=skCy+gckXgH7OAxS1tdHzQ2FXlOVMetPwpOUL6AG/bY=;
	h=To:Subject:From:Message-Id:Date; b=PlMMuwCMBh0Jxl8BMcYinZ8GUErEzGZW9+7yhHvfT5wJR0w1QcO980HxeCj1FoRDBAg1VDgkdxGTcEDEvX7CnD/W+33yyGcQUz22V8cy+PRFvVF5DvDMjYfKxa4c2qpCNcin0Pw6bBr2iDomZTTyNxyszmWqlMDBmQgf/rkU10E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E342vFXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E342vFXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDE4C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745153993;
	bh=skCy+gckXgH7OAxS1tdHzQ2FXlOVMetPwpOUL6AG/bY=;
	h=To:Subject:From:Date:From;
	b=E342vFXnm0ZC/rYlPcQqD1WIhY/fRnNp3fjEDZxFLM3wyLu9XwwKSoxZVK1X4ARad
	 MJ02Egqifi0BOgi9xL+0W3rT3B2If/grpZzSOC0A0O4he+Uyy3qZtZcyJWlNRva8p+
	 MB97NXWOtlcjXgdIAT48G4/JZo+8RURCssBeNR/cS4Ygs3l5qFZYeSv3adw+L6NQmy
	 RDVqoTdaNw+KGqOZngSKGnJ1ALkbmPsdpIrbgtq4UCWC/ruiX//pL1/8kR0ODnYegl
	 mKHk8LP39UjxSbY6+VB9Hf7S/e6wrvhIvt4DkjZhr5/LSwQYR3SR12MfQZPu7j3ZrO
	 SjcAhXZnwGBDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99235C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515399360.14942.11251834804047797835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd2499bc66dd243adb5a15ce8cff696dab3db763f60e9b542aef143d042dcc9
Date: Sun, 20 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745153993
