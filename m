Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632BA25771
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788323434; cv=none; b=mRKoJeqJbTApIMc2HTk7zSGGGOunJ8BEspbFq3MFOE0bfsXL9LjCAMSdGHbFS4D6Rj9dS9V9AwAiloK5XXp9gnuGyRDfznxRtoYnA6cND58gDvYTqC9/3XEiTZrV+0YQgePt7FifSH1kQDNG62hTe3tIj5U5162YJoMnnS/spE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788323434; c=relaxed/simple;
	bh=XfhBEHyUpr6givIPxLW//tOdJU8bysCH/X6dWE+Gas0=;
	h=To:Subject:From:Message-Id:Date; b=NVvKswmE7ixD3ie/ix/oJFIhH3+NEqEeD2ZMwwqs7M6z1A2+C4uE5Pt0hKvaPLtWSSET0ribmeYtYP5jXRP2c1qSVnI2bUAH023uY97a0lGMLgsj0maB5hlwJ0XRGCQq/RYjcxGJLg0tBOOyozFg8K2HUEorOnK6VYWOKXfmPMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdMetBHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdMetBHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CF9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788323433;
	bh=XfhBEHyUpr6givIPxLW//tOdJU8bysCH/X6dWE+Gas0=;
	h=To:Subject:From:Date:From;
	b=KdMetBHKXtyYicLHoUCJexgNiH+RnGA7i/qpXShY++igpUwDQfBzJLVAmPnJE2gay
	 WBuk545Dhy9QN1RQFT22hvxAP9Enmsw+PhuT30J643j4i+VcgEkS6IvGCcw94xkSHr
	 eficJMkUyufxZnAeRQObnrRXO0rcIoQPegYxaE7SyevOGFo/Opat6/cylOk3k72VDL
	 w+O2KlHRlWsFipduElpuEYO1GyDjK0NI1VXzj0OeAwIWLShWieH0CBrVr5uJtsAr9L
	 b9iKWqUFnRcY9VDPu7RhYRnt+3c2Qx/+6SdhlwOtplcRXeryxDEahVXZg834/WFBya
	 ghDoR3wcALPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F2FC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832343369.20206.533160469073964088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65262b37a753b6b9c8c5c319e15a338eb1fb0ba57ce4602c5c6cc262ecc05806
Date: Wed, 02 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788323433
