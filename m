Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B66C1C8603
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754424594; cv=none; b=AKlQFfiPBTTojtfec9mo3285/8ThPMNpQ0Y0waUxfTG54gLwk+tvHNv20jHAX+ms8y8t18K+zVPIzZxGYfpiWas1NdiEyPXp47RhJ72ecfHWm8owTQrW7+zbT4PIHHTaudP9efg16c+TJLBWpSvklyPAWztNpZxWetgtHV/uF04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754424594; c=relaxed/simple;
	bh=Igai1gbItmtpZ74B4XYPotzWL2eTKAEiT0uQ2suOhvk=;
	h=To:Subject:From:Message-Id:Date; b=CL5zoOEO2Cfm8oWMkuhYi2J75BCjH/JO7SZ+qsMwPAx+zhlACXJ4xFXDq4U1W15jNJ8b4EF7hlkag2G5uqxKo0tx9J+gl2WMT8jiTbeT5VfyvDlaDWrx2+tpsrKNpDVN3BsH2KukB1CWdAIb+foPqZy6NwkCzCn2ilgasmZ1yA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfJ1hiKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfJ1hiKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8081C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754424593;
	bh=Igai1gbItmtpZ74B4XYPotzWL2eTKAEiT0uQ2suOhvk=;
	h=To:Subject:From:Date:From;
	b=gfJ1hiKrBf13iE+vyVNALBP3Cl+psgBKgohwDf2H1W45hZUhEWDoW6pG1Iy4qdRjB
	 /dtQMdEIX7k+dS1d3N0jwUOgXjPXZKN6QDrgIXNygT3m1fjtuYLC6jyRN5iKt6n3Yc
	 XtEvJ/SdTB5BkpZBal0/RbY8YBD2qLBTNHFdU0jx4cl/JFU9qdxSmoSqCwHUoehDpx
	 aYrkKeaC2XjUiJ67szJLh7v/hRJsMTWUuPU6JNv8TjxA6566tIIXN6+axmj3iLasAf
	 WYIOq9Kbqt6grVsr4BBpRPHa1+UD+3JRR2ed/GFU7UzI6XOG+BarpiuM8PoghaVctP
	 5o5uX1xUDRyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FCC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442459357.26898.6832931496069463951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ba357308bc631a3197f6cf7bf0abbf0610bb3f18d1be0c76fdda0043bc11a1
Date: Tue, 05 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754424593
