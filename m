Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4B71C1F22
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792233034; cv=none; b=hffKJseyxxG5LIvjwu5mqSBJhFP1cMkt5HwTo0XlEVeADbSLlC5el9wTsAP/VzdUn1AJxe5pTw/OA4/ykIgPRuiPFE5PDR0s6C2UxIPRpVM2sON5AYSQe0YTjCqOxgU1gdiyRuVEFwN/W8TEZm+qJ7Y9seeQ6u1J/Y1T/0klH8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792233034; c=relaxed/simple;
	bh=acABJZEEyRdj5YYf77urTYYR9FFqQJLswv1Sx1ox1Io=;
	h=To:Subject:From:Message-Id:Date; b=ixG5JCwen6xI8tM8geD4sVypC9TUj7MsPlkt8n3f62QVvFAKzJHvDm32u6kkhKBJAkhH0xWp3YC0OKJHqhfB24pzJtqxeDFhGXXXBvlFOQ13YxnH0UrT/InYXz7B2mBuURJ6Y2zBzRJ0jzdweUlWZsSzgynEJFaJ2NdfUFm8bIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH1x/X18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH1x/X18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3AEC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792233033;
	bh=acABJZEEyRdj5YYf77urTYYR9FFqQJLswv1Sx1ox1Io=;
	h=To:Subject:From:Date:From;
	b=oH1x/X18U7Z+XD6L331kNKWcDUmBdwm9XC5AhKT/sFOW9QTeWoHz/jp2JEh6A7dfh
	 rbkJa5d60G0J+ptLLEv1UcoUuuebGQWT3F6RIOLRIy0ganjuDdmIhb0G3tZzjNmtz7
	 Mxzp1mFY+eDDEV/YRN59hVIbLkuMxTkLYZ/1eqO6Voa8bdpVlHxZJZ/7qDBi1v4+Z8
	 5CC4w4IBC0shkNmgqjH/t1orpkAWzVkUECqsKk7pWZIWpxxhOBBYXZAn/37OurbBfX
	 9Q6E4mREZkVNkdiX/Jm8zqsC3/ZSsO6m/m8qhGyteeU3vZjZVkbMkkSB5eU1rEjHR9
	 u/yrPZ1SvSrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DC7CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223303374.12953.11104640921441104158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddac33e13bc6a31933b6d5f087a5afa2f81cb3b5a4375cbbf5b6d10131ea110
Date: Sat, 17 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792233033
