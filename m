Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325FA13C683
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725320754; cv=none; b=uU7thiEgFPVqAS+oHltiCP0z05HsZAOi8uiY91QvL0KhGfNgpqZGHB8DB5kjoOh0WVi1h5zl/78uQXB94ULlRbAIGeqS+JelN0UsM3m4lmtiTESzWKpTHfuU5AGpiOgu0bQpwT02lype93IuIZvrsf0N4RYiUXL2bmDF1B0eito=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725320754; c=relaxed/simple;
	bh=SzbAgUmL5vnrfkr6rKRG9mI3XOSRABvfHSbUA/ZMShY=;
	h=To:Subject:From:Message-Id:Date; b=Wz1Eb5Vc9z/VBoUT+7xvi00iAOjkP1ToY90BkZXBPsXEmMeh3/cQJwjRmPkmQ6U5DMLttg5oHC9LpgtHbrqaCWx7Lgk2H3eGn8PbWRPGlVzwjfVaofbaLzvp/iQLOf7Af4CIKlmC0dBhGo3lrr+mSMRWtKjezxJJAyRvv2VCrzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGjiLK2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGjiLK2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16CEC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725320753;
	bh=SzbAgUmL5vnrfkr6rKRG9mI3XOSRABvfHSbUA/ZMShY=;
	h=To:Subject:From:Date:From;
	b=SGjiLK2hbKu7AFcZlMSpRzBoIUL1zoYbwII3NFstFKxNR1XZzJf0iqOjN6nJqIJQa
	 Hs2/BLDn9zuVsCkFTt4/qfRjTFhAzh3F4W33fd2bJDRoR2UnzqR5oblRWFTfe7aPJl
	 SVVIbohfIK2otGZ3EyZxZKw6G63hnsLoYHcgf0mWvnzYi71ZSUewaVLlsa9quHQPdx
	 tL/KsaGjt7OI+pHKfg3E0IVeyRd8EOk3G/P4WmEzr3hJT5koSnC3S9YYlXVpwSxFd4
	 v2xMIoD8sgFGQs1/iBmpjOxbAociXvPVpFXgoTGnVRlBeTAmXkv213xs+W5X9O3eCA
	 0c/FIA2tu0hFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE5EC54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532075360.17234.477382889640860346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2aa0f08e1cf07fb1350fd0adbebdd0fb5b2e2b203275ac256391fcbce9e95ef
Date: Mon, 02 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725320753
