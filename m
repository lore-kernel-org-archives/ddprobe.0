Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCB12222B6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755336594; cv=none; b=PDEMaZk6rXlq/ObUtRRHWq7TD0FueKR8uvh8GeB59wE7UW/FEUJPkaKAdiG94hgiQD/f2qtzd49jLA6NTXkrMnGSSfTzvCF+ohqt7GNNaJUT4vF3XkW7RDYugbTpQeF6YMut3v0KaAsGRR0ZW95IK5EfkkxycpGqHZZtDeeIRiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755336594; c=relaxed/simple;
	bh=M2FQoBV/7CVFB8i3uQbFpPtAvWjRNRYPwIGt+3fgwCk=;
	h=To:Subject:From:Message-Id:Date; b=t1jB8nEQoLr/vqLm1RZRXcwEHxFxdtsqo2gR8Osex9g4IZc74pUb9OkC4lF/4aD/ubF2RopVGvCoGB6xE1hh3pNP3nXxulvl2ZMeDxAiurDMzFcO0PLgac7zAiJcuw4JlA+0jZcZG9PwOoQRoZIjzyvvomJSFkhapVCUtClW8h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv6/sYvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv6/sYvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755336593;
	bh=M2FQoBV/7CVFB8i3uQbFpPtAvWjRNRYPwIGt+3fgwCk=;
	h=To:Subject:From:Date:From;
	b=Lv6/sYvyDccagir0s7vp4Nm2XZnFMWq5/tt/n3LOV97EV3BqeHlpSPVXeWnOF2xXB
	 0gSy4u9SMAdpG+I0dHUEE1KZRmRXkDwIG/kxw4EZpI8BmegYRccfbb5jhjorAiFhs8
	 XquRRb99aGVZ5Afjxn00d/U4SMJMFeCduBBHi4BFMR+0sCPCTS5y5OICYlGJT8vo48
	 SRaVxZNCC3P63NgkrcQyxUJbm38vwZFM/RR1BqF8INrhu3Om7h6ohtHAbWbz66XgG2
	 SD/e5OMbDa7a3d7NIttgNBC7VshNU0hc9og3kOm0qj/jxcuWqs+0bRU8fqumTPUB53
	 YlMSiszUZ3yTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C6CCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533659357.4330.4592690122145942878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3d7d07b814a04e92ee3d3538b4e5722a2c7a8feb147b582001625bfa00da91
Date: Sat, 16 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755336593
