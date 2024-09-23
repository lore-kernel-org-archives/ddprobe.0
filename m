Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E42726AC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727087754; cv=none; b=MaaiSTf4EfyHlcz7Bn4adznSu2QzQVnNOzbaxC7W2xLQeu4jt5GqTaEOVfe37Axij8HhABCeLB+LAnFoZ87iNEyxmXGXvze5aNBS/Bj+cTcoJVxfVbiOAv7NXkpeUU5sNQyfcjhFt6l2VJqf+Y+T6mwnh0inyOmicvHsVNnuUjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727087754; c=relaxed/simple;
	bh=B3RjLI25YKDIpqHDP1k3IQwrx5AKGZWHWspMLbiREBk=;
	h=To:Subject:From:Message-Id:Date; b=BXfymu42LVQ6oe5iB+6+p53UlFsOexJG8qJ11C9okkPeokSK7W5x7A8zRnO4tbncrEyq/4gpraUcQ7bn4YBVNEmQs/OozfFO/7BvXfajrp7/QblU09UbT2fYY3Dp1h5frohU77t4Ei26c+/RBVEgbdNz0zfEwX/mT1bLW3oWS6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaPTZBLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaPTZBLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7532C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727087753;
	bh=B3RjLI25YKDIpqHDP1k3IQwrx5AKGZWHWspMLbiREBk=;
	h=To:Subject:From:Date:From;
	b=EaPTZBLTO+Typr1s6AiLS/t/ytHaW9+aBmwi678Xi61y5yZ2xUf4al8nBi0PMidjU
	 JBsGvsimssZ+C+m+oi4PhXvZaLYByhPoWn1A72MomddUZZyUT3XGqowxbmtaLtZHZ/
	 k3RbgpQx8rgMMyjEvzYDwvEmlooagkjnbZ4mR6A33ckcLviAENM3tCmMMFywfxRoFJ
	 Aa1xxtO0ZrkmzW812DkCyuJuDqf//rMS9K8JLvw/7ocQ+p/vGe9PbXi+oYdLX8cWah
	 RL2WCc4RX3sfAJYfCQIkYDC9BH1iH7PsP3LYlEBMglOsEN92pqdZhFqsfoJudXk193
	 X+2T7asFH3JlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91673CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708775358.8909.14516226326621231969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447bd97fe8238db767fd7933912aa9c9fcd7067cba01ac5feac006e0856028e6
Date: Mon, 23 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727087753
