Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F17322127B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745537394; cv=none; b=NPCpPsazuWGr4BRB31Zhq5EVVjQ4SPsSj0We2Jf29PiXT0HZBiD+zEgIlriRsAHjc3t+5/vRSwJTKavC3POOw672Vow8tz/ZyE8kymOXc3MQo9UjxFWV0DvkbLTE83CZX3h/GSKA7kmV2x4hlAp2kwOI3kq1ip0TQoCJKEz3Clw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745537394; c=relaxed/simple;
	bh=KOmdh0lQ3w+/OseKvUleLQ0kZEBFLhZFR+WnEsy6BpI=;
	h=To:Subject:From:Message-Id:Date; b=RhqsUIZGrRH4jsf+sZNUCcDPfivdXUYZo5MMM0eyAhCi6qVugGkLVoZLk6/DPRqhFC0as9Ov0gK0uBzt+Dlp230kL0S34IUuTPGw7dGaxV4wH7Lc7mjas1oejNa5DAkOOi1N+EIu8uaLBJtCDvSFXOviL1gG+TEqxfSxCBI24ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCLZ+hU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCLZ+hU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D4C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745537393;
	bh=KOmdh0lQ3w+/OseKvUleLQ0kZEBFLhZFR+WnEsy6BpI=;
	h=To:Subject:From:Date:From;
	b=cCLZ+hU5TkHQlyYzXY3fkMs/gREfMC1DR2T5UIV/ffmxBK7KoYU2R4frVN34ygONi
	 rIG8airn1JXd7DDqQRj9r82ZZkeg/IQ79PeKORwc9DT6MltA30N/vHfRFbU7PjSZRN
	 zFAembm0E5F/28uiGeCKMCQLRRqYzqkbzMWG/bq/dc/ZTxoPhYVFStU7JQOpIMFnmw
	 Y5TrECMQUB4WQTr0WI7jgRrzIUtJAfwQyt3pDur4qTZX0qd1pKFQ9ZyCwvXo1am3sc
	 bZmXDaSqxLvb2j+sJ90fsjdkUyJmzOVePw5HBsGgj2nGxkN+t7ND8XSBWEuROFyWdV
	 sznSupOmcqhnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90420C369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553739358.2836.3544676158505396313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a05fca315bc435b5b29df57234fa4b4ca20a67aea1ad187ac65040a3431b442
Date: Thu, 24 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745537393
