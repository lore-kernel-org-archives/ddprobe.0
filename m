Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652F23033EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786458634; cv=none; b=bliqXuvR4ZT8IZzc/GS76PC4pdSWWTTWcTrBgk30G5D+GXQW8HrSbDaBsTuVworYaYOuF266h2jI16Ew0d9E/Z2SV1C1luE/arjj/CIsPVUOk3IPD8gzjF5LjeZKC4RcuqAOwbwfbEXaLCVAT6FzC5Mi0m+FFHU3y65uXRapX2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786458634; c=relaxed/simple;
	bh=YaXGHQLLEVe+olihYIIGuIKTSRWVlBx7uhY9XSyMX6M=;
	h=To:Subject:From:Message-Id:Date; b=ttvEBXoPO7d2hQX35fwNLLvB0tg+fcYgJeJyEM2IiNNdjAVrmTV+jWb1vfNt77LxG4KHTt7oW//YO6dYVcUlT+eg4n189d/GsQhHlRZpOjjDfqx93Kz3CD2wfk1DDvzKgWWMxF9ov+AlvK8Mr5LfssrhajFgS83H0DMshJhUOjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNKTibJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNKTibJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26C1C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786458633;
	bh=YaXGHQLLEVe+olihYIIGuIKTSRWVlBx7uhY9XSyMX6M=;
	h=To:Subject:From:Date:From;
	b=DNKTibJckobgM6VGJLao98l83AKxeqAF2c3zZ+/Y78Tnx34rab0IOfrQPW7kN++QQ
	 VRL5PQkBJKBUV/tL0nZIm3Bi12H6XSyGd/f4rcygTNUSrA6aAwve1f1ffVaIKVnPaD
	 ybQrdfHXa7OssRjFuBF0jHkMQ8UB/PpVzZNm5cIHEE5puMHqOCSf/p4Q80OIequozP
	 1ND8E/F/HpTvm8Ss1Yicl1gU/9mTKgHeA5bJDGhKOyAQrmf1fsfmt0AhSsh22xHp6C
	 wkubBJg4qUYS9ZEYvhuRL7S5mlpYyGLn8HfavJqhTWxBLUN5rxHo+5zvvk9wH9KLJz
	 gDT9O/YxUIEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B593FC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645863373.2854.6590006175777133638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a39800426b2145710f7c0fed14cfafae3374527dec7c807303f7f9ab9724fb8
Date: Tue, 11 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786458633
