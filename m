Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FED21CFFA
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757235595; cv=none; b=Ap8thJwNa5MGD8EtwwpKUcRTYqJuk+SfYMMXQBii4MupLfKLWj+NE+vSQRXWKAyqXmPB9P0nRwnUlV65OsIIDmqc+wtKQC7kN6vjfWUVgykm/HYup4w1DfcSj0npNdqMqF1rRemG7AUxb/H0/WloWuOhfiQTAaUVn0ee7LEFeAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757235595; c=relaxed/simple;
	bh=FTPo6eitKUE8fPqVgLQ0tE72u/NEuxCIP1nrjmkP1p8=;
	h=To:Subject:From:Message-Id:Date; b=qNG88SSKePgTkTPpYY/uxWgr9AHql9HhgaNDLpIVcNNeryNN4qTE6SucuEuFShBHjo2BSLjPjSaeYsypZx10MiABSwA905+9prPDnZRNy+HUFC026/7XQ2CNZlDlOfyZJTO+wZJ8+M1jy+3gJy+an624fpFfy3p/BaUgVrt3VWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mva0tN5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mva0tN5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757235593;
	bh=FTPo6eitKUE8fPqVgLQ0tE72u/NEuxCIP1nrjmkP1p8=;
	h=To:Subject:From:Date:From;
	b=mva0tN5bASgSrrPdZOgRiUCYul3nRXv3EqLYVprWkIwho1JS+gOGOJdAC2Qugf5TA
	 7pRsyceudnL3rJQilwH752mXEXGEcJSXGE8+VQuHHghw7kb0IlRAPbS5MfRvl3awnB
	 KqwPI2uV+my7zE39Y23F+IZw+cEnZS1QvJyDjSbi57Y6+X0fA3hTDnLv9LkGSjTmqz
	 oxGHqwHMZ8Ybqo8pnhxSTQjXOM69crfWjJHFuHThMphoU7Rq1d9s/ryEqWytFXqm+S
	 VJvOHQAS6hV2nbvXQq0l4eDoCmZ5i6oo3EWBKnYctCK2AnHLMtG2yzSPTZRF2MAs40
	 QX8SkILWgPVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A1CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723559358.6545.18386961723001741221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ebee4c22be5942311f3134e6e20581ad91e843501f5e45ad3205057a25d663
Date: Sun, 07 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757235593
