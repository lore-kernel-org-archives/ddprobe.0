Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42411366816
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770732234; cv=none; b=DpwZCEdL0oekmAAWLiycOluF3H4CmAW3wIvawOjpZyhcSe0dkRzWcxmEFVRLKlZfXIjfuiRz/EZ5weFnN3io8GAFmLmEHbX0kAxzRvfgQdSgHFe0HdY7Q3bwA+VJLGZYy/XqoVTHmp8qt0oVDZPiqVKIoPucu6dC35puOUbpgmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770732234; c=relaxed/simple;
	bh=qXIHZmoUURTny6Ad9NJUGWLsak5EUpjE6m+W9geyH6E=;
	h=To:Subject:From:Message-Id:Date; b=ZSJKcp8MD14tV18TVde5z0l+DshxmuMI6nTk+RcvbJ85RhT/94QOmlQ3UpODRKNfLfO2GNBvCzFQ9uxqpPCBA+gdyb+no4VGUWCHnTCfF/m46Kl4sHSat1X/YPSjUx14cQ0G1qoO/h3ecG/MusYY2vPYdy4yUkKxQI5jk1DHQmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJX5D43r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJX5D43r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6EEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770732233;
	bh=qXIHZmoUURTny6Ad9NJUGWLsak5EUpjE6m+W9geyH6E=;
	h=To:Subject:From:Date:From;
	b=pJX5D43rnsLdn5DgsbIO8eHT4XCy2VFT3EVKozuTMegyG//1xTo3mFwiADhBCmju1
	 yeGhhsNC4MTuMmyihPjGTWW7LsQR6LnNYuovedOwcMK7MELMOUWGRhSmbQeJX1x8Jv
	 6OM+33MFr3/BFD+zocGZflxvl+Te/8rbHrz46TVzaeYKptraOtkCn9r5/lyctphmv/
	 veMASDbWPDEDU2UQOBk/VLkOqf87laPxmfJ+MQrrROSzvrLfeIUncI2REGpHUC9/Z4
	 c5x7WJCvJw4mOjutk9XvZTAk2B+7mZ+3l3di2uMLRXtFrwbS1gNUpaemdOAGlc0aAk
	 DNypyN6nLXZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3545EA811A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073223363.21259.13977271614262331345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aeec95fae27652f3e7d649b6bac67765d2e26b650f338a31391d1610e3c1dc8
Date: Tue, 10 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770732233
