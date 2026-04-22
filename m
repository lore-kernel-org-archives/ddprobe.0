Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B434AB19
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776891454; cv=none; b=DhfdVWF2IxXRfTYkXByY0raMtIiFl/uY5wo3XBEKqXI/L8N9IN+XSJzZ6BGRfDrAbwH/hgxz18vnP01evoDBFtrbki5euTa99ZMskhtPt20rmBR8F1nVIzlIOA0JpQ9qhJVbCrLw3WRLP0vcWjH7DFRGyMm3pQcgvI9UogH2UZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776891454; c=relaxed/simple;
	bh=1YrM6oY2QOEK9kwCrO7MSw9+E0tcvjXkrDSixCvrFW4=;
	h=To:Subject:From:Message-Id:Date; b=sNv1I5r6/2eRyY1s24KI2UiewUYK1zaMB45pfZMN6RpkM956vM6O2T4L5e1gP4saoZcUCIPzgguVvjiiH9XYz2SvuEh8qVXq1xScvyfff0mewWhogUdbZRNYKXCDT4oO27TXqsNTfhj8MQWchCxYc9v1FEDPCCdk4JKbExfohDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpDpsA7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpDpsA7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECFDC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776891453;
	bh=1YrM6oY2QOEK9kwCrO7MSw9+E0tcvjXkrDSixCvrFW4=;
	h=To:Subject:From:Date:From;
	b=hpDpsA7RlJ5B13Ar0aKHyvk5DLo7nGgoxKg89U0Q8HvhgVaurllMfHbF2c8rnGF1d
	 aadUraDQYzcmLgy4TfxMxbWvVLeNG99PNsDG8uZ68my8ZKzQ7iJlFi4TdkTYRPcbXR
	 DrVA47nEjPYq/uIgx+WVFNAXthTrClHNLJydkJVl58MDT6/HYOpFDjlOnGX7ThJ4dH
	 KDwg53nCe3HmbnCFvxCINAb5ftCs9rjvLPO2aM1q8Q5R2p0uLawv5capWvhSU0mQIP
	 oAT3dPsWzYRl0Sg+mUXw0V8o6k4SpIlBG5o2lKMskNq0Aqk6FPGTmwjpBFhgRRPIpU
	 r0fJNbzRnbBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF756FA1FED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689145368.26666.11476226886644470419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651937e3535cc43d783a9fa09d597c5d7f780493e639f81ac60fc569912525cd
Date: Wed, 22 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776891453
