Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A413BB48
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780012954; cv=none; b=l//OUiNr+GDapmFM2NcVZFkNYJkGKvXx0iyAfXbANQzNujKXJtUADW1NfSkep2Iv89PctUwB42dKUQ9ngglHfHFc6JkIIXA5ruxWw5K/duPjzzh/DNX1RzAkXdlYOCH3wVom4sEZGBBHvUmTD1grTSa9JLGxUrZa5a4jobZGptY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780012954; c=relaxed/simple;
	bh=2grUuLrS7ZpUwGWOe+JH4j4U5Ned8GVQGnLWQ7qcHbc=;
	h=To:Subject:From:Message-Id:Date; b=gJsCGQ3TCwUVU+cjnfrp/lE7NxXSILocGH13wguhzsXBA4ZVqvwCVTsbZmdIFeulWHuUlG6GToy7MxRgc/IvHt6X6fVdtKqc1T3Kv2jiyFMo8tcJE7hgb7UvzC5NLuDseFIUUHN98t2S6ArFW1S3rDDgigGrJLpc2ww+lthLVcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQPLAbM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQPLAbM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4952C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780012953;
	bh=2grUuLrS7ZpUwGWOe+JH4j4U5Ned8GVQGnLWQ7qcHbc=;
	h=To:Subject:From:Date:From;
	b=FQPLAbM12+lMEQRFt1WB4vDhnaL+d3SzkRhVOoTZVBAiFQ6szUKkG56Je3fnvzktZ
	 NWZjLg03U8k6FSV5XTJKYJUtAXX20tHHvYVsEDblEK9PwNsPWVpSnhYU/PMt/2X8sO
	 kGTRMySGY0JulmUwbZTN74N7zq1qGzbYAbjHQU8bO/RMGlvnUz1q+EeIjmOfx6p4xi
	 MCgHRRV+sLeylmvuqNZXM0zAToiiaWl/1iOjDee6SjIN97bRpCiS5oMDS2Gzxe8xNk
	 BleFSODb935CyxoK1PN7RwddLglfJybnRqRpoeJQSDwfrRNXRxpi/QIbBTXKfk1kWf
	 rPrEA5rLJZ0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA73BCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001295368.16543.15785652331988281361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a48282c89dd60f04b79c4b1817ae5eeb503194847d818549f0496e3cd9da034
Date: Fri, 29 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780012953
