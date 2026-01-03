Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278252629D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767406434; cv=none; b=fMNw+gTns5QUXwL93MPRaw5p8Jeh3/ccfHGoiLg+shPtfaHRqloOdX4DVzD173yJ9Vp1mTHrgzpvNYY61fX7bpWsgCQm7wVmWb9UIJPV4KzAVcRZw66VYpNrMRF8Q4O8mAaRU8wy53sXeQ0kIXVy/t+L5Mi+/ZT/+Yow9VB+xIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767406434; c=relaxed/simple;
	bh=tXy6/ndwy1NqXuM7ZbscYMlh56uIahnyy/7ktMjtPRA=;
	h=To:Subject:From:Message-Id:Date; b=MBUOcA077+sQmEzOwkf+iGE6tnXuHBLGTsk1a0APJPBgfXeTfrzNI4kd19sdWHtCUoyVMDMWo27fpMh5wCKEHWfYl3YWr1XvRCMN7G6b2vCe9x7HZDOm3mfAY/2ldHCWlnIPoMTgWdmqP6uVlEvv2CqwNMBvqG9uSowOUD4EaNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHv9uWp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHv9uWp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8184C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767406433;
	bh=tXy6/ndwy1NqXuM7ZbscYMlh56uIahnyy/7ktMjtPRA=;
	h=To:Subject:From:Date:From;
	b=GHv9uWp7VReeqZXdEmOu0dF4N5zKVYbY5XDgKvat3E63cR0yI7/HBz12l3cXqfHTO
	 4+RBm6Nt0lVLDGLNVnd5AmWS5gWlqJn/Qs6eCMfdsudpCFOPra3dSEde6cfLXdfDHa
	 0VVr2eWJIV2CrnpiUANv7jtwtZAHN6en8iqqBSfMuM8HEShTiyD3OcJtvQOrNjTFSc
	 7wPVqLBEf+/Ta3STtvxnxBD1lx74vnvq9DVP6BEAVy68ubzH5aDTCi2MNJyAPUHWor
	 F/6ZExCEzibVgKOwnwZlRveQJrvS5E7FIXT7NLUFyJ+Nxbm/Y6zKPh3uEP2D2tul46
	 WAoTtehmxrXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B7FA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740643357.25072.14853570406074836646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d19905d89dfaad4e03d32718654a9da1eab4b6a5437bc7975a63ab99097cf05
Date: Sat, 03 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767406433
