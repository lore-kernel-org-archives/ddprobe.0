Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695E81B7F4
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713765023; cv=none; b=bDFhkFkDtXsCJfxj45QE0J5dh2x2WgED+oQ3qNLOunyuzmIxA3ea6LUMlig7wqKS1x8lQFkdS/aAK0ugL8gYL1LyZzkz7t4d6BCm/fIIgxk9lY89IWIX3srNxQDps/YKWgcKdr88BzMmGCQdGKNw1UVwfg/0V57gFK1BCpZqPls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713765023; c=relaxed/simple;
	bh=V0DAUO9KsEFEX000qYjBEO9hAY8vfjZVwt7JwKLFVfQ=;
	h=To:Subject:From:Message-Id:Date; b=ZUqu0YXwkqCo6yW8zKQ4hacDdildpOOI8VPRxa6AC4PtqZNlX/SBHl+44XquOjeaQ/FF6Q+neBe2QnMH9PvOHeXv6ZfJVftdO2qjgMnPMVEpCCZkG1eNp12Y5gvytN5v416MkiXn+T5jj4YEkNFGl4zk7eZ2T1lblzZXfeIvYSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZj6lxB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZj6lxB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF48FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713765023;
	bh=V0DAUO9KsEFEX000qYjBEO9hAY8vfjZVwt7JwKLFVfQ=;
	h=To:Subject:From:Date:From;
	b=gZj6lxB2AV3/SOkPzH+E5ngXCmSOU5V0+3gp2m7ZJFp3dh09WVHqGQ7HmAU1r/ov7
	 +rGVBLZ+SWJpWI9FFP6mvn8CRAfkP54Ql/PDGwrx0qrW2Fs1ZfuqPUSfEapXlbyt23
	 Jjh1euFF1WrxJ6pgCgy48k/KVdnXjjl/T08nQYA8mONQI3Xv5NMmYpeCOyaVVLwUTZ
	 YPZGtPZxopP0LXmojmpXBvvRbdT5oloDeagSE2rKgidfAIs/lqkq+9peAN/4Gtzi5F
	 VRR0VO8dVmZnA/js/IhLGZZFCicjTfJC/pahWFtp5JMKod8jDf+2QAxsH8BjwN2CCG
	 emFN0syhvSgDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73FFC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 05:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376502283.15597.13684969458574835962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4559faac0ee19176bda7736b918b5e949529351cc7655be4bdc1a947ae8f050
Date: Mon, 22 Apr 2024 05:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713765022
