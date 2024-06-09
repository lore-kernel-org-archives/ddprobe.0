Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F401865C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717967843; cv=none; b=MAPuwqI30QqkwiF5/f173iadH4TLMXF+0KWmy9OpELddsMS6ciQ3pslxywpfx9HaZkOhZZpX5ehYd5Kn6FSquyU2u/ov9x4PDRNhyOCTIrnHkJ/pYuw2MpNoeSfBx4UthkC9S4r6GoJUUgArRdXRAS7opTNRm69K+i18bEY5LyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717967843; c=relaxed/simple;
	bh=50L3oLoZjGP99ijYZMzIxbTG6pySOw8Y215VnfOCFw4=;
	h=To:Subject:From:Message-Id:Date; b=Nkxs0EKxZ6biM1HZrmhVmUAwsi/hrNkqPiyrNNtG8/FnJ81Qa4ebE0FFZlpyjJdiV4jV88TiQuEwO4FFJ7oftpL0OVV2BYwB21YEiK3xxMYq42cwl9y5JNKqfhkmCBw1EhiPQBfTT7heYbxJsaSRh0/07VXtEGAHAW08ry31UkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiB7BojN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiB7BojN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F7DC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717967842;
	bh=50L3oLoZjGP99ijYZMzIxbTG6pySOw8Y215VnfOCFw4=;
	h=To:Subject:From:Date:From;
	b=jiB7BojN0XGjG3tdVPh3RDZGsyHNwcYZ4cR91jZ1CkUdmVWJD8CZPHxbSOBe1OV0W
	 oueFN9ks3xYZ0Rjg9Sah65o3X9Ke2yGU486s+YpbMrLUBTZxL9rprrNkLFTqsr1Ln6
	 x3dxUdJV8EHycOuMVTkUprOGbkvjdEUaOvoKT4UeXnMjax17nr5fDHQxh+ukt6Sw3S
	 THYGWvUlILV8mYmfbNzy4SnAxfsP+3yItjLxWFEcy55t274DOpZcLMC+XFsV9swMq5
	 q8hNtBJ9LMa+SHOaMcBCo2kPago0KvGk2lB6hTfJ2Qh8mCH5ulGizba8yWXhFKghBC
	 I7xCFJZ3W/+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEC9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796784281.25044.15308726657359351263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd37c1f3ed205e65202b30d44f8333cea81e4767084b0dcac330647f1a27269
Date: Sun, 09 Jun 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717967842
