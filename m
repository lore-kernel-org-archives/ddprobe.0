Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39522DF13E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769557434; cv=none; b=SreJ3puIj37Bgey4f54C0TYYf8y45tQ5iKV+Xq0NiC9yTkEIohE9MqzNPfxcqS9FAV3opUlnMRKUsZl+SMQCdDRTGTr5Z59sZhb0UZwES08o8RbQd2eszN73fy24XAfS0KsBMzV894HJMpb2Q7XWIYKiMoDrhMqa22ZY5bIgFgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769557434; c=relaxed/simple;
	bh=tw01ySr19Yox6DOB1gec28Fpvp+QpQ+wgxXTlFde3j0=;
	h=To:Subject:From:Message-Id:Date; b=ihWesY7B7VGaLJNRXqHXLv8LDbodPN/xG9vuWXf0wR+7oA3Fix2kXMWJXkB/o5KaGodDcdJ5g57JhE/OjqwAvJdYQReLfjuNb8V6qvfqILtzlBwgvcIepA7djj9QCBwap0b+y4uhohPqAm0iukZgzzKURU19l5wKA14rRl+r310=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj5vjyOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj5vjyOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984DBC19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769557433;
	bh=tw01ySr19Yox6DOB1gec28Fpvp+QpQ+wgxXTlFde3j0=;
	h=To:Subject:From:Date:From;
	b=Xj5vjyOX6AI/G8uDhZv9RIPhTexzQ9LvHQGAzp36HFjk+jjL3RbDLutrkh1ETrXVa
	 gImjVDi2W7JGTYZk4dgQSFy+iEl2MFUn0jXisE0AjR1if/11Se/r6QktSaD8BrFy1M
	 WKiW8lHts/oTdY+U6l23mbAyb/YXip/D3L+PtXZWrYYx7PjLYe38fuMEQPHVA6fGei
	 YjhCD/2HE1/qGHlo5SFPMI2TE2HtWtO6Ffvhn7NwJJUFs0Tnqr/9iAiCTTKDs3x+fx
	 r6ZB9JajlnnxfBSxcuhQRRsYxd5L5YPmqc4eeSizgRi81+CTt3xnGdaVoajK7n2n7y
	 Bc006gKi6xgEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955743357.23287.2657338729798223706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c591d5cda60b238757181137e8e1716df098bd442d90378f613bcafac5b7d53
Date: Tue, 27 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769557433
