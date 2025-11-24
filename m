Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002DDDAB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763945514; cv=none; b=iQAn9v+kPXBWCMJZ4E/Ge3Bi4mx2xBs/CSK5dCg+diebRb/cv9eWJTEYZxtnA+UPsQ+IOMPlZPCq8oYwKEqeai1b5z9DAVtQTgrRYbgfcZZG96sjrViNzn2HEr4Tz6nLrKduzYONf2yvX42pgli782/TkePGT5I8tMFqKP5eC1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763945514; c=relaxed/simple;
	bh=MMS3Iwa7SCQT/si+3Z3wmmXkBCK/8kA9CdFCw/4M2K4=;
	h=To:Subject:From:Message-Id:Date; b=GaCnhsYkt29pLAu1bBZqO3082+nKEwmAxNhIQ14UkIZN8XhgFp3f2CkqtziN3gqo1Zd4s0tcathN3/ZMD9bV24eK6in1r0VqkVHFgIwL0n015WNqTEZx/rcQhHfWI+tD7/zoXq7Zg4R9R48x5474sqPCuDvTfrmZjf2zEyejRa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZAPcD0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZAPcD0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A652BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763945513;
	bh=MMS3Iwa7SCQT/si+3Z3wmmXkBCK/8kA9CdFCw/4M2K4=;
	h=To:Subject:From:Date:From;
	b=pZAPcD0+foHtwxsDpYfDrGVQycXxC7BNoGo70m3oVQEthciFjTbCHClXacncegGdg
	 UZZNyHv76RTGUrCRfvFZKkk1PsdV6no5XZkVM1WrcZmh8lqtasexkH4jX6YS9uZNYI
	 DhM4zJag0kH9QFu2aGTUN/+GcyWZ1TVA3Ip0o1IeuxH/alJlqvBWLqpNQMPRtOvVdC
	 0VP7M4n3RGZP6pKiud4wXT84VRnfayY6FS6VANriGoIsqpq9vv6fJUr1EVS+YzNcw6
	 IZQWIjzZxB4vDt4ZaLhmGnMqmGnQC74Ag1k1O6T8GFJQ9pxRtcQowTUPU/8UWOOYYq
	 eT7gIwOFsPNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9710ACFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394551358.8552.2818702360691308586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02f44c21095c883af415dcc7d7994d2d85c8562da98e7a098900ad09d4f8628
Date: Mon, 24 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763945513
