Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6974BE1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755736794; cv=none; b=CMHFM9ewmPL/Pxuhywbfeh+CataTSisY8f2SCtDxQkOfg40OjPkIjB+nsx/GYBzd0P5QtbhpWRjTmJeVi6VJhbUGueVAFyqMzyGPN3iJ5xMBqXsz6BhaC3ZWyt27/PadOBsZDy88PByVGHSUrRosi2HPHIucDfILkTH+zGgqVIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755736794; c=relaxed/simple;
	bh=qdRbfNtglJ1PsRuqBHr/Lf0Fw5hbMLvLFDdKP/Yz7Tw=;
	h=To:Subject:From:Message-Id:Date; b=FU4JyOFQ/M3SGndxuG2kwMcoAxxAYQ1VvH28Zw6Ogn3poGsmvBbWmMbr/dvKy5DeyXkMktVD8Xa9ohJdxrTapl3C3CPN8zHh5PkMi7PNTXyCz60UNkOiSPMSapkedRO2nwG+p7Dj3A99qpIOnIekKJUKw9V3TZ5oYd1h4fhBQSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaE0vjgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaE0vjgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0763C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755736793;
	bh=qdRbfNtglJ1PsRuqBHr/Lf0Fw5hbMLvLFDdKP/Yz7Tw=;
	h=To:Subject:From:Date:From;
	b=CaE0vjguIVTvWR/BBI6rQLm5f7GVF2QGjUYOEcA8cTwGXsi5RJxj4VleRd0VxJ8qz
	 yBd/FZ2vNZbO3bm+C9kUfrcd/UUOWdg+PYBroJqutXJ2YxamQQlvSLyuZY/Lg8JttI
	 dnAEM+XXw5QpzSJxsvdjCS26L/Trd5kwPYnkaMpUdg1ROskQPZEBZeJ5H1XlmPSnvP
	 wwj2G/dDA+oUxC8dLV3h9eUa1AgU+6VmxpGgm5Mo5xb1CSdDbhku9kWkMLzyRgbh8b
	 kiUdpzga9Qb2wT0zdoERa7r3qZvUxawcBweZIrMzhk4IL06LPw0kfjmjk95dTo7X3O
	 I14H7mKQA0OSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3FCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573679357.21370.3941948916916132096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a8a1261e0927f784f94e50057d9202a6e73df483e02458a6b185bbd98d2b48
Date: Thu, 21 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755736793
