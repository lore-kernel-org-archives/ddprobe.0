Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ABF282F5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753214394; cv=none; b=SlCmjEAI6gH7U89cGc86dTtBtP+tJcydRvCV7gqVRq6YnB62rbNuJqEwcW8oSlP0LunpEcZhil6VrIklbPcG36MwOx7Dqe728svCDjsosIOLfTBNgkxnjqgZdovCS0lQtrFJ3wttg52q1RqVxePD9ncj6gf7dboDAQQrWgL2/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753214394; c=relaxed/simple;
	bh=c4/B9UqIvYsQ409w9rsJUXakvuOOiDSnorSk+8ETxoo=;
	h=To:Subject:From:Message-Id:Date; b=iTiYJM+8CYUbbmRR+wA0C35rrxOOcQWAc/3MlIznCXaaaJuDKRVISh/prKRHdyEobVTzgA/ZvKNGaN25H/rYoKqTwgR/BJlY2IAziAwVuRZlXaUAtppGDXrL7ZEE3o53tqXzyjUpnR7MauCAM6jdzI5RqJi1IbRuLQ82oaD6n3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBJGGGg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBJGGGg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753214393;
	bh=c4/B9UqIvYsQ409w9rsJUXakvuOOiDSnorSk+8ETxoo=;
	h=To:Subject:From:Date:From;
	b=BBJGGGg88551/0l1tuoYwB0grlBQUzJckOpJEet2zdaC9q2B59CbWxZhMH7EAVhf8
	 CYx/+38z8SLdpMZKmEgRJhI8rJkZtItxVI0eSVF93RYC6hLOk4GrzEDlvIvw5fAeyx
	 1zy1yvRgjx9KcxcmJyG3I8+izcGD0DKRAUSFfZiatkIW0YPBCvM4SqkchK6EvyxenK
	 S0NYyvXiw5KohUyMyjL205fJgo5DfZrxprLuWQWgvrrQdP2VA43sN8/xZ3zEyxXfNk
	 wn8PcQZWhhUkhyggvKgwTm1+8HF8Heh4EQ7yJFhm/n3KgTob7BL13BFF/OIaR9uVC/
	 YmTXCem+tdZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF92C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321439358.23199.5338037454378114355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7e49f6513fe94dc3a17b9bc6f0b4dc389732ca0f813ef11733b334b47ec489
Date: Tue, 22 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753214393
