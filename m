Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551431C14
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720657043; cv=none; b=MhcpKrXLvqSdMhbROjsGhvV+GNCClASK2Wu6RB2jBuRA8OdgEjq3uEzBFuAXbVMgTN0z4s1Bym9uMW0OjgfmNmf+wPGmnW1pmHB2swS4azc4ZF+oetDGBLuXnfeM1rGk9rY2ksWrLX2VNXoGmT978PU3V9CLxpieIJTECu2k6MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720657043; c=relaxed/simple;
	bh=ZrWjOFqhwCv5ti6rdmbh9vx3wUazsciTFnK9h5iOt8Q=;
	h=To:Subject:From:Message-Id:Date; b=Smudj85ZwvvfQFyqR9pyNpdlcYK9BgmTOoXhgss2xS07ez7XvcKpxk7c/UPl7X94cku6IEDs5oIZEDhCh2cv07mnMadV8j/fO6IkoE6RJDw6t2d2SczLAjIU6n94TCHrKOz1lNwJM+gttvjOaNV/sEkBi355jaKwUPjjfxqODPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INjjS5m2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INjjS5m2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BF7C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720657042;
	bh=ZrWjOFqhwCv5ti6rdmbh9vx3wUazsciTFnK9h5iOt8Q=;
	h=To:Subject:From:Date:From;
	b=INjjS5m2USr9RVnD0OUOttiGvoBvZubbNnnSXnRKC01IVZP3ABoJ14BCql4g4aaLj
	 Me54y5rUKnGilw9cWqIDWS43EnoYKpDlwS1dYgXtEnxXq5eRMIb0gNtHbE9RKgaN8C
	 DEBLbJnntvUIXCr81TFtMQ2BQLDw7kJCZ5AJRKMkGGmCujirDKT1i3hyBGwFTvG9TW
	 VCMfk7O3yWz2j7stBnmVqW/Pt2HNzii2A9zA0l/udxI1NcEso2cKBcUEWyu52CwjoH
	 v4sH44Vkq10bvV7XhOiIyu4vyaSNnJEC9FO+DyYxheVSnjQ7v1br+T4tN7vywUSOjo
	 Ai4h3He8ucunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF946C3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065704282.18509.15351786478909958896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a8dd90d60964d24bc695de7aca52abb4afbbb3154f5a3e5fabfdca5c86f3ce
Date: Thu, 11 Jul 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720657042
