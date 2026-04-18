Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B9253F05
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776518254; cv=none; b=KBQ7HresIrVNtchFO7/LrmuUkR16oxZjUi265YoqMCWd6VYk9sI8N9vHnKsOY7U0NfSbSf7Gj+VnpyFIQzbFsIX/Mni4EYhn9U81HwGj1NtX6MLV0FWhWVtuvQCEqY7cyiuDIOWTZ89riI49RfEkVhNEnE2Os3g3UADnfOlF0QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776518254; c=relaxed/simple;
	bh=MIffup9YUgfcPJLkiAybQP0pQf48SpSLZgiQZXon5fE=;
	h=To:Subject:From:Message-Id:Date; b=RwKO2JV8cXJzZqeFqk3cKDb3suz5SQn9JJfeWELorAFfQyaNWrQN4Byhuhioii8Vry3zXOhvGWk24KY0v6ymTN13cEJvOL+zoMoNCkwz/m9U5LcMylUdTLAUYzoFSQF/CRucNwLMZ4WvyOsIBneulK6+FCFIuEmBfICiMUcm7Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7wNVb9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7wNVb9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB66C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776518253;
	bh=MIffup9YUgfcPJLkiAybQP0pQf48SpSLZgiQZXon5fE=;
	h=To:Subject:From:Date:From;
	b=R7wNVb9Hgc7mQWB/HUF6c0lqKR89lNlEuuXgtPc6P6kvv98JTsNvNpWUAqdQU8SQV
	 X4u9Uw/IbG3SYf2FeJKXjANDg3eA9SqwdrT1ccAIsu4ywsgQkyn7TZjs1/KAL8NFAb
	 urx787La5VDFoa/n9EP7s97fl1jiXOOwgFe62G6vks2dQwADWDnwXq8isCgupuut4T
	 wnfgVRAOr6JvUPWvt2x8VOp+NjELKYuwj+2JQaTRFjl+cAD0RchzXompBuhGk2DaY3
	 CG75b+303jyCUxDPh/Pa0L058iR9zCJXwZJXLG/eFy2AzIG1JCzO0lgrNUMg8UnE9H
	 VQh8sVrQcQBMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC91BF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651825368.15212.2857548050050609159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c490a16239a1e60bf8fadd176148e64d82cec7d741bf666fb5fed27dff0ba95
Date: Sat, 18 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776518253
