Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126963EF663
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780676074; cv=none; b=fz30i6ywLDuIhgOFNfuSEBR3MEGgd7nmRap0Vbmqw1pxe51OnhEG3q0cExaX9wzDuA5VJhkP6sZ4k2+JXMBMRnfWIwh7PYu9XOuVQLL02W5AIOK8peUlO7rQk3LmoGIj/8MCCUfztc4ykIioYQdWVUPY08Cs+6l0HNINMkoCCBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780676074; c=relaxed/simple;
	bh=3MUyrLasAzMsDqc/qz9Dbae8UMO3MevVpDJIX+OvjT0=;
	h=To:Subject:From:Message-Id:Date; b=jh/fvliDGQhp/teWHRM7B7UO/RvFtkpq3bA0nBXXwG9KI60KiZXwSZbEngjbVxn71nLBBXguKwS1unGVglx4+urCLnTArPhiMv85vIRDdNXuvJCvm1avEx/+tXwqnmuDCDT65FWXqI6F0gQMSyFZAOFy8HYdD+hws3/JYBvj2gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3+hfzbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3+hfzbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC591C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780676073;
	bh=3MUyrLasAzMsDqc/qz9Dbae8UMO3MevVpDJIX+OvjT0=;
	h=To:Subject:From:Date:From;
	b=q3+hfzbg85TCiM/K/Rh+EYdITb565L21/4PjMiycds7Q+6G+v3e5k2SZWOUZpFxX+
	 EIz7UMcNTaSInessZh2YxMy7SbyeFLIIZ2mcG8ynroIiq2cxjkNofdR9osRsFzxOv9
	 +yUez2LUwkadaNFFL5B3GuSNSfT0dzDio0Qtr6lMMuGxRD5k/Rslz+76W3IE5o5Vvz
	 minx0T4ayxb9bRqxIhyVIDrhC5vAkqah7UwlGsT+76rJnEuX3fGMN/9nadDWPgBEHn
	 hzs7RwWC6MAmn8kisHk4txXAy26cAOFU0Shy+lnaIsLb4WntLpmwdo0yXCa1V66DE3
	 Cb428a1asHofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3ABCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067607370.6311.11647666172093550135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1af963247872d59f22bf6327c5e7be7e708736b0540bc62b66bf43b6e0a0b0
Date: Fri, 05 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780676073
