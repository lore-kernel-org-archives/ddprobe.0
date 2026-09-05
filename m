Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66443285058
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788568834; cv=none; b=PcRgIbbk4Ir0WPViKSGe1IlGn8Sewi625zgZAer3CgBW/HROEedmA+NJEsfgGUqYlmqwfWT5KjBTK7jK0smI66aLDy9cTgIvLBU1trCgthqlhNZ52sG+gYD5M/57jXD386aeICXQPefiZJHeIMSMgNAR7m74M3xYRG6P6qe5b54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788568834; c=relaxed/simple;
	bh=cfAAzHq5moBaawcgQRpi11hO8JG0zsgP25WGUQJsYbI=;
	h=To:Subject:From:Message-Id:Date; b=Qnh1vCbS1e6i/eedY5ngHKAiF5helxml0vavTFqVNlLc1XkWjGdqYS7tixqjxi1SspmZsBPYLdTHh3wdmlayIyIsvmXn3YE/2TSTB8ZkehhNqgV6aVQkPVLRZw4A1tlwhq98DiteiN9Z+jpdHA5hFHyo/Mg2VtNN4DQFPIvndgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITexrV7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITexrV7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C2C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788568833;
	bh=cfAAzHq5moBaawcgQRpi11hO8JG0zsgP25WGUQJsYbI=;
	h=To:Subject:From:Date:From;
	b=ITexrV7MxnPzlmWuS/Q1V3hwH+XDvebvwWFnOAugneqyVWquKZJE8BCUm8kxUjQMk
	 kO203BPdCIJAp0T/FDaK5MWIRGuSMDZWiWcFA+4kwKeNwjQm0vINqlWWhVUZWXbhDY
	 2RNCrLkInJhCFstB6YprpPot0Y1gErGgwQHuMXn+BCrvgNjJt5XVQH81oPtKLh5DYy
	 MeeGnCnJ05q5YjTXcBMrAZ4PROgfpEDnMhmZ3igl4UwAy0QULi9vclfF6/B5I5c5EN
	 xhcrf0UcUVZ3Hl+zvMPIANY8pjAqgY9HOGzVLnWGNgt88vWldhfMygNTaUpLS5S4hF
	 bH4Dnztmt2X1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF03C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856883368.15051.8173459326950603750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7905bcb972ff9be260988a5477ee816d1d08af7e7703a4df24e74cc16f4c5d19
Date: Sat, 05 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788568833
