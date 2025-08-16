Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDCD79EA
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755319795; cv=none; b=JEg6d8Xt+8lzjOlfI18e/bE79dddfrmhW/5UvzjVBqApwH56k5DNLJqkk0C93iPwY0Jynlwh1DkJuCTpwy0D3XStvq4PFxzEFvfdBY/bq5x93DBTGpg5rvMgQNtoN4sitEJtprnCD+vpHI7CUbxpV6iftjCB4fW9IXQZnhVh9oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755319795; c=relaxed/simple;
	bh=apgPJguzmOViHVxIuz8MpDJG01qEXN8SFYtkuX1CU8k=;
	h=To:Subject:From:Message-Id:Date; b=rBV0eomT5D4HkL5Xwc8tQoLfGv9QT04TkaebEdd+IuzYHl8plXCwC6RCfXXoXgahPL0A0DNHxJfrJMqhU/XhBlrHmwsNMY3gbl0wj7sTzKZiklIKKeWECPY5VzdC4MuJG64uVk77AX5JSyUv6ejeRQgXAZwzDKqzPz1YoN8VpN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GegF27dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GegF27dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3145C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755319793;
	bh=apgPJguzmOViHVxIuz8MpDJG01qEXN8SFYtkuX1CU8k=;
	h=To:Subject:From:Date:From;
	b=GegF27dvFGmdFcrq6UQwQNQo6aK707OrFApPUplpBj12WWA/jciESwgkC426G5grJ
	 7tWofapmLQqNXA34clqqwEMqqa8TnrKPU2Etaoutj8jpY0JavrPlC+loOEUza+4eGg
	 SGjpG9yQh3Ij+xgsV+xCI6H/A08TMt0EopT/HBMpaSegwC90JufdmkBWnNPorB1kp3
	 ApWNhiuasukWuHOm1MVZqfIPsUdAYnM8rSSN+/sIBNu96XRFrIhtJ+bh9CUMfLv8bo
	 JZ4lOVwK7OXBMlroXT06HAnCIYwyTNCR1Jx6DT3/avvAjljs9US9Z8OPE2bT0sRHAx
	 M+510qoBLbHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92359C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531979357.5854.9185915613203011447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e9bf0aa552f61cf2be27a49a469e53e4e36af81be201115fbfd5d2f2c5620e
Date: Sat, 16 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755319793
