Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5FD265CDE
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739555334; cv=none; b=AvoGEvG1UED/As+a7j626fVLrmo6ZN0dpyT6wHIxdQQnnXU6ZVNTwdJYymMJhN3s0nJg/b0bW06Anlw9LElHk1dWNVZstOdlQ1wHVQvSSfD0+i/gIfkxvz3hY0LdVT3+BPniQan8pOmo7iDjRhjQYgCEPirblMyx0qsOzWdNRkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739555334; c=relaxed/simple;
	bh=AYQuvqQ8WzODonZdGt5y3TpdMvVESLyy+axwhuKIeFs=;
	h=To:Subject:From:Message-Id:Date; b=BB5rfNMjBAOe96UNv3gbpazFMOILKwoxsyp0MK7x952X4ZlbhtmLfz1PVF7ROxjAkLT2CKUQgUqLNMqSckHnYYoRxhEKFy5/Mj2egv8ZLbFeCLrlCnTg2RTUk8uscqEgoI0xQn3noxNreo3+yGgJmJKNTpZKoDuc+M7KlTF4N8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpcixU6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpcixU6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5F9C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739555333;
	bh=AYQuvqQ8WzODonZdGt5y3TpdMvVESLyy+axwhuKIeFs=;
	h=To:Subject:From:Date:From;
	b=CpcixU6gs+WsOHzL1VcLwtorqvl4810HObyO0/w8XmVZROKd+bkqr46sq/Y1OWcZq
	 j5ULu7Zcn1obyGRyvtsfyigsTaGGlwjRvdo0qFJOjPpsT3qHI5KrDSxrbjqKHkf/nJ
	 MVvm/SqX4NN1mBhnfVNWImvwae/SdnO5gbvlBhzRNoDMLAvNi9IWJk9hIskybdFu2C
	 2WF7b6rI9cr3QasKPuHIjUGAvlmgvxYuJUnTE9Ac32Mgf6NsQpGpt2ZVvTSQ21Pspr
	 YjUNr4sudRDKIeQ5zCq8oXDprLKcpvCfSLGVbERGDNf3jdsT/qATtG2z2ZrAgvfJLe
	 rKSHqaWZKe0hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D8C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955533358.15523.10945080435287862907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe41e88b5ad432f15fa121760eb4021f67d2c581dec8b370ba6e00d5bb7ad01
Date: Fri, 14 Feb 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739555333
