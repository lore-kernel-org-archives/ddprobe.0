Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC9219A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749606595; cv=none; b=uemPgnCWuzvXXZWxfMruB5Xf8uK4ggZdsxkfraM5s1UBQR1fPb2DDEHiul8zCH8tRNuZcUYMtMWU2cDI7BD/4Xlf3YfXgXrf1PCnsNxbsts6PFdDxSeJsnELOF1vFMZpde1N9dlJOT6OJwN35aAIgQFjLd8Ntvni/rxqpW4aLdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749606595; c=relaxed/simple;
	bh=uiCZ/Nn/ifW7DVr8GtOIGGvityP/CHMcHtjK/5Po1Ms=;
	h=To:Subject:From:Message-Id:Date; b=dRlCkbkcPEH7tcXjFfkp7GIaEKxllgwg+yAedznxyRBkIXLO70RvzTjJce64Qr7YNFit4slg1omO8tqzMuPvrq1OftRpBliTboeQkIPVxhSyG5T0C5aqiIRV3yoyKi93wgS8h1SnMZN9AQvvxw1bxo/u46sla8QZ4nvt2HzInj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmTT9D4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmTT9D4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7857C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749606593;
	bh=uiCZ/Nn/ifW7DVr8GtOIGGvityP/CHMcHtjK/5Po1Ms=;
	h=To:Subject:From:Date:From;
	b=WmTT9D4d34L7lbsCTQ5q7TF3BhPoNO7yPqYFHyQHA4Me1WHiQNupC8aznl4kKDb5J
	 4MB+49XzKGy1hKYb2ubQQI6ncMIo6m4NCWigF2xS+eCsL0KghbzVnOB+4qecrvdAGA
	 tkAT9vD/3jqvbGf1JsNBoRsKSswiP9HYkhXPDqN3aZqu1W/woPYqd0800ZxRsKNvtL
	 d+x+pIJk7MzvYZKHiAbTuJVwyXYFPkbkIFle/eoeKru1/GKevFZC3IbeJLs0Mr+r/Q
	 usSteG4I8fnkXUnkqKfXHZ6/QPatK580yMvTuToTcJB5beUee14cPUBMj/cpvOmi/+
	 wcgdr6Xfoprcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94023C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960659358.10039.17818446177959159319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46644a4bc9f8db92358496f0965f46b862e61dde6c625a567e815673b5af8ed1
Date: Wed, 11 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749606593
