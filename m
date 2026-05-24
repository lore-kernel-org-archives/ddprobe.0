Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C833B97D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779657154; cv=none; b=eHG+P7hGzbd/tbsbgyiD4CadleqGOR0V5wx/T9HL69DWUmaE/JGn1fbq1JLtek5BYKVq2HoBxWcpu2jIwoSRwshfkZW+jCCYOOSzKdCo6GtOQ4KCPGPM+ul0yrPZQyfQi5iROWI7ZtW+RJw9MkB/FWMS2xoJgwhB+CK0K10wSN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779657154; c=relaxed/simple;
	bh=ZxN1qdDPj9Aix1dw+IrdyJ+jBHR//K7NexgU9BMog9Q=;
	h=To:Subject:From:Message-Id:Date; b=cJLYjcAhnIO0IzPuzXOORxywdkiABABp59EFoLHCfXyXZ48V4h3V2i9lgy8fqkht7FVDi64b3Z/J6l6NlfvC943dpQTACKXgJx8GIr8XVLroJFi3v9wseqzcOvmRT9uj1yKWgyAG+kGem+nEpcI3XLJPpnWNYXdxIey8SYKSlsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJClQL15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJClQL15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C987BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779657153;
	bh=ZxN1qdDPj9Aix1dw+IrdyJ+jBHR//K7NexgU9BMog9Q=;
	h=To:Subject:From:Date:From;
	b=OJClQL15IUujKOjsRC5weGQu5esQU+ORMAnWkr9TfTWgihs0GZLuIfDwD/jlu9AEK
	 WnQULrbCbu5fn2fkVHZMtzeBf9Y6PsmYGvE70F0+W0rnMQrKRrmbs3GvAQ7n+2UG0K
	 nVSjt3IcLbo+bPxGKnbQ7bGSY6A+79xuD8A2apI5v7vmV4x40u6I2hhAT24h+ZEBkI
	 9QOFAnOiDvnTc9lgkqwlBRrXS8wUU++0uIFxQO+93KsF9V4svWUzVO7SC13YG1RNXe
	 R3cyutOKJz3l7ZkJOv11si9IEwN0YYWMFrynF6PbdpUelsul9eAVWPdSO2Y7bl59Kd
	 jbnuhDZt3c1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF384CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965715368.10606.18240296093173865396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7379c79df0b9be8743ca1eb237f3e2941048c6caf138612308fe2879ff757277
Date: Sun, 24 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779657153
