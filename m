Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31170361DDC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789220434; cv=none; b=idh3IPAVWHK8MWzdtyTBFvG0Fjd/TVxKUEfJcz1XtgyppzZIwns+HJ+uHlwH8OGA5wXrNu0o1zzVYGl1KxymuT2wOqYH+64WA7nQH2H5rQPHpLZSrnlif2iHsh++TDPyIxi5XuoqIZcOrT2Zu8s8O+NNp8ZkYqtKsdkGRtWVkys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789220434; c=relaxed/simple;
	bh=Rch88yx5+hLuI97e0+pKIftc93V3cMc1wD4HVqw5+Xw=;
	h=To:Subject:From:Message-Id:Date; b=jBjRNjr7QgbxlbX8ZEBvJnFXmg5A9hyv3HNdkGc/Ef+woq2XJ7dH44nYuWRwVPZrFL/hzolLhiIGSTS+XrZQvvMpOnqXmQ661PHW1wc4mL7nfuE1pEGDXczQCyjPbjlPoQ/4q3vMBaZfH8DL8vxWaenpZy0pLujEd7ERIVGtkGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7tMbCsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7tMbCsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1533C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789220433;
	bh=Rch88yx5+hLuI97e0+pKIftc93V3cMc1wD4HVqw5+Xw=;
	h=To:Subject:From:Date:From;
	b=t7tMbCsaK1Jq3eITE4pPY2mJZZVojrc5eTeWcfpLjzHQLddB9d5wWMPJrKp4fOOUm
	 b/PuF5u21OEo1gIclT7SostTO3oSYodpNTqPt5aYhofp6HfkF+c3pbVxQ1AAXidzBU
	 khWoQhHvcmZI+d/6MC+2F9+p3QtR9ucRsXMQrwzkfukPz7QLO4PI1A1yeEJggfQ6Le
	 ZgaoLDCV2QxavG8guPzd58/vJlRSzG/SnZ4RvqY5oJKat1c+V8Cqw3djEJ45ymyK00
	 +SwpeCvKAfv5cX2Y1k7XEaz86c+zUD0l6Y6FE93FytlkcYTlIHpDWH4A/WYlotsG4h
	 aqeUV/bd7IQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9CDC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922043368.18984.8355932377380207359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69c764c197763ba6715783743c2261e1c6c255dd6a4e321f975a8c3f8c098d5
Date: Sat, 12 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789220433
