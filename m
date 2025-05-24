Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DC9288A5
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748099394; cv=none; b=fcxO2NajxDW6XcTb7USJEizcQQ1oXygu1MhlgeQSRxqKxmXwXIPST+ySF68HfYvmOMN/LwSBWFONzCTGNjN5uDtWOTBlLkVUcR8Wxluz+5vNiSAI6bdk6n7FhC3HXM5/ZXF/wVyXg2MY/FP/C9xhDY1WtMNYic/Ljm+f5zCXlYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748099394; c=relaxed/simple;
	bh=mX2LL94lvnWjqtQIS0767t8QttziH7CJ2FqA+mwW210=;
	h=To:Subject:From:Message-Id:Date; b=Yv++2YT2/m9hLfbx59q2lh+UpKK42zIVVlJmJLHw67Auu4XKocxwknPDjUfCzRZza446kJbWzwGavQfu/TCM2JCPO2HWwLmgVhxQspq0cTyDfv//1LElIdCL5UDneLzrahUZcd5NIAiG/AMmXthn79wCrQd0HOAuduPOcns1P6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBHrbnef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBHrbnef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60BEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748099393;
	bh=mX2LL94lvnWjqtQIS0767t8QttziH7CJ2FqA+mwW210=;
	h=To:Subject:From:Date:From;
	b=MBHrbnef2rsLjU3IcRGq3IiXDPpYY1A/njrM5BTaUGq5G+3wdkaM2dsPbgsez2Mzi
	 Hz/uHpmXO/AFny5cO0Dy1rrG5WEqtlUOp6QIOTDJifReBuvFOb6C+Ooq407hZZ0egO
	 qc2aS5J/biyuRKcV8Qhf6/gWwLchJWJiOZFj3f0pNtJRGJEZFefYFJE36aJ7Qq+wjx
	 IqbFWPHxgTgwC+78odzxVT67T199y2KuRpMEZPVuASR2/kPzLMaQphdXigS/gdbFGm
	 AZRXUO86KbKzgjL8mF1hmHq4sjRagyYUs3P0DtG0QojBHRAX9+5wVdyubDbCzctHX1
	 tUNBWGfAazPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D6C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809939357.20983.11950188787339539223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32149261ccd56af316a748b6421c120afc40ffd09573aac6f73dbf3b5a27027c
Date: Sat, 24 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748099393
