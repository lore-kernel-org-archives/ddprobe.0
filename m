Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EE8DDA9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773816294; cv=none; b=nLYFAiky6l4JdWgmKXxKpx3tNTrenBRfOG/vPCHsKX151tmYsw5ALaG0alonw+8QayjmfMBMrA1KefQkLnjNvcC3f1ASKy/mOg2DUOoa4D27EX1kpNR3EOb72MbF5fmO9sbpjDvGyS4mtyCKMMcH38xCN2hpmdHUKQIIvYl6IHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773816294; c=relaxed/simple;
	bh=rMx1PRhGKJp0/qnf6dotTV4Dhevkf/EO78Ww78BtODo=;
	h=To:Subject:From:Message-Id:Date; b=dOMBTkgsk5QjbOUfphjkEfwtdzMLuzupGireIvhLQz/NCBOPdmS9vwdu+m3XkaPe7gE5dLPFRYfQK6Z0JkTxqOjfUMST+vhir4C6dc552M532koDkxy5oViEHMPT6tLB5pT+j2oiOOaM0/+espyA0/kPpJUvmNTOkMj1JwoM7cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds4gRY9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds4gRY9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC1C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773816293;
	bh=rMx1PRhGKJp0/qnf6dotTV4Dhevkf/EO78Ww78BtODo=;
	h=To:Subject:From:Date:From;
	b=ds4gRY9ZJFBLbTgqlMfbraeuighQkVuCVnB0LzIGk02ZVmnSwtxj51etuIyrH7J9E
	 FWqE6zwFAXZEedHvrBf6TVOvwKN6hi3PFntYdbv4bXHTXpTGlx5dk7z3CcdBdT1Wjw
	 KsHHULXVIDIhAPwcxraWwbxAOlTxHv9/PESAjG6Q3B7j5wLe75Q7MPrqQ3UPkJ+ZOh
	 LEJ21REiqwZwQpGzNw5ln+yIWSZ2YbZyE7Esr3+jqCGy/6lAVeZqWUxjWwKRRT8izw
	 27nAXK8aieDVnVHUlqcdlQO4EIRDxPzNoa4KVrbNAOO5KelGSYPyy0od0kauZ1ViXE
	 cwjpn2Mfn3LDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43CFCD0C3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381629357.30578.7219448435999242213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ede719618c5caac33d1bbaa3e514f014e325884e3fc26a03e8e49b7c6fcc067
Date: Wed, 18 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773816293
