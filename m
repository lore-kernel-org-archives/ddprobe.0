Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34927253B4C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748359795; cv=none; b=aK1fTJSoJeq0xEz/hDlydGngerZjB1rFaO4y0qfRNrqypW5K2FmTX/OU64duMR2gNRVCOdVsvmXQUsjTStsjBPrTfBblwjtKcUdUV1zhkTHEZ2MHw+mBLLhwcsnv3S+y8pGAgxKG+D/GrdRAeoAQGbW6X1NYQHHyin8XLMafnFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748359795; c=relaxed/simple;
	bh=zZPU3gg+mopbiNVRs0fEUsRCGpi2yqKsPOEyxFMbr68=;
	h=To:Subject:From:Message-Id:Date; b=Ejex0HDfARQvfHbUkTulg9HlnNBVAWcQO374s8U11Q9E89QbbqYhCqXAmhuJJZOxBW1Yb0G/jAJwKtcquLLzIFk2h//+PWDHXrEqcI76iFBWGrJ1/LlPcGL+KOtcIMQtDt2HuIxNAxBhPpAH1fus/KglUEd8tWPPMJAETvEo+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctyPdAJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctyPdAJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748359793;
	bh=zZPU3gg+mopbiNVRs0fEUsRCGpi2yqKsPOEyxFMbr68=;
	h=To:Subject:From:Date:From;
	b=ctyPdAJjzDD4wYSVMt712x5bIySD19JW8RV8DAqwp1P13qSjM1iWatgCSPOg31exd
	 9wJHOqxNiDbRURy5PH3aFedQXRzqamXTSVOuXeL1CABq+bsu/RM8W2oPLqEzFK9Jph
	 E6bP+YbyaSrUw8w72NHD3g1dGmfrRDNocjCxGY2uLN78gvQQAdULIplAgnhGShP+9t
	 JtfVkNqOz2eTC3yghDuN3XYdoKvwBFaMovL2Hw67GfuPAZhJhqwnhJxSf5VdHHhM2N
	 BpArCOPs22k0qF6yYeNQWz296/00X49d3KSqhoACad+umOB8h2UWYiMntX1slwVVdA
	 X7CRAswfgs+kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E634C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835979357.11913.16714381427233232426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22d96d15bc2bd3452015ad63c9643c53a498d9d835db4b233f5cb58b07730a2
Date: Tue, 27 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748359793
