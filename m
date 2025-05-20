Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3846D258CC0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747758594; cv=none; b=bJeO7iauVQd3UX8YlWOj99uDBgGStjC8TxPzrFpD4UeyAzv5c/nN/+ZKRYsOYXeQVhCPBrttTc51+7RnfhW1UPMQ/chKaiYVTQtePixprRheGqoKnClPhCiQenmmCmH6Bo4wzf7U6OtlBbtQy9nUSK9yDtjRyxS1yHyZhQNnZmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747758594; c=relaxed/simple;
	bh=EsimTew8HpUfeX1vw94LWNDZTurIKIwNYlsQCuMIVSw=;
	h=To:Subject:From:Message-Id:Date; b=gVx6v6TNZdhqnXle4b/T/OZ0FhiSQA/WGeJ3jYoocEv7ltjerv430A6cz5hlYVf8hLZdBWvrbdgnSeNIYWP62xruCNMuxPwS6nJopJDDSZXVah5fwnQZtrnt49maQMDI/5CJgsjdLimJlF0q4qhruqVOhMZRaFyYBoBlqzRJjaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okWAIEEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okWAIEEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F79FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747758593;
	bh=EsimTew8HpUfeX1vw94LWNDZTurIKIwNYlsQCuMIVSw=;
	h=To:Subject:From:Date:From;
	b=okWAIEEI7xCtgz9ImfUphV5vtc4R0ybY8vVY4bsgPHHI/TL3YflEabLRTeWfJfiFG
	 Ws1A2hrd5DsgxOm7Edh1yBI0dYaJwVZvCzFKJLR79Vp5joqopoav6BJ8BO/smi5nQS
	 3XJRHfWtDMdRuWSYy8zYe1A9eStCjK31AxlL0wuvihEOiS540Wx3arfpjcxOAvzs0X
	 0xguqKUORyyLP1PTl9oHiRYswGFsbGoiRorMJR8t7RlRPt+EBwRSI97lX/eYOPSfcu
	 LhJXllblWu+bFUMoRVMaoaOjhQEdv4OpqVPDKwdCj/IrVsaZdDsj772Tc3i3itNxB4
	 uJ1SYdfEVMm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD9C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775859357.10101.7270296191264627098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85da052d919b78646ec94c45bc3f3eb9ffdcc00414e99911b346af610650cf4f
Date: Tue, 20 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747758593
