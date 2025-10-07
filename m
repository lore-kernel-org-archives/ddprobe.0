Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DF42E03E8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852794; cv=none; b=FcDp5xbS3rn0Ye9OcQrBCsMLogIyEnMweSmW6ePxKgdV2Jly8x6j4n+xDXWd5ybXEJdEdzpcyEzJ17Tek+6LuzwIjCJ4LUIHyl53AJPY3R9oyfrq7qwoMYhWLk39ffuB0RhLNPKNnsgG78p1kGpea1xpkrYawppASkmXFfORON0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852794; c=relaxed/simple;
	bh=Is3FSz6O8B8Vt5fetDsD5YLKMq1ulvFizu6syq5TdLc=;
	h=To:Subject:From:Message-Id:Date; b=arfDzJsw51/JMl23CSY8wq2FI9MXnxnExvPyEGG69ja3BqLzSLizlUOOl5kCD/IwcMvJFgJeG+D+VkEXg4d1bA+/Vjv20+jE/zMygfoM7dsI8WA33PiXZ0g3Bpt01YPEwGNfLkQ+TrIk4DAq1E+WtOq5HyCYR1jJG6+BdWDQrAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRwL2IS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRwL2IS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759852793;
	bh=Is3FSz6O8B8Vt5fetDsD5YLKMq1ulvFizu6syq5TdLc=;
	h=To:Subject:From:Date:From;
	b=XRwL2IS3v6AdDLVI6PlqN0miT0YSzTzYNzkRpbaEvWJDZtcYoyVwZUmgQKZDWHJ9w
	 IRAbn/mey0qxejzjtRNUHnSEh3ZaLGHuSaQvebhPu9sNJStjBje4eE+VXmGgNNT1S1
	 m77sfzC46ikSGTK5rFVwE934oCopgENczGxudQf2mZHKjCajL0JDRF1TOtvYQBNtyA
	 ngY7Ro7F7aq75xO8rkGJnSs3enPf6dvPEs3D7JvppSvHlv9oZaYfS1XjeYVdvCYI1K
	 3lED73Jg2rWhhBDguZYGgbwPeamHL0At05dmVo8FIIXsPxV3vlF4SbxWrAEf1djbFe
	 sLI1V/NgzW30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317BCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985279359.14888.107730607683110904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06310f95398ba5da343984ce6d66434490108972da3651d5012f1a6f1dd2e1ba
Date: Tue, 07 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759852793
