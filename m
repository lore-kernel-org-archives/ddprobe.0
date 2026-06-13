Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F24521D596
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781315194; cv=none; b=a5OKwzVZ12LYnT2lS/u5Fp7xzcE/YwxW/Tv+FxkD2vRUoohzaAn0NkYMao35bVB5bshkePviDwZRQtwgwt80VK33qxKx4BEen5kU7Za++clMZxMCT5hHZb9dfTKnshPWNuvziSLjiUqQVrjz3MsTa6CGPFDAwet0YkbIQd3qbJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781315194; c=relaxed/simple;
	bh=Slek5Qq2/KQGcQNQpmuNBUm/d1YTWZ/J5+pKDC+losc=;
	h=To:Subject:From:Message-Id:Date; b=XzXmHmGLkq479cPsf3TiL/2bpTaE67D4aNST32wu7tmBZxUwGBrpcKAMSjOgaTQkYorZE8EFdEL4iULQF99uK7EXReBpzk+cVYFDG8uIHq+ZCwnUB147UWiOAGxyyHwQmzCFjWWzM4S//UL/1FxBptNWcrXShzOGzOqzCsJiIww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpBZNH2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpBZNH2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08F0C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781315193;
	bh=Slek5Qq2/KQGcQNQpmuNBUm/d1YTWZ/J5+pKDC+losc=;
	h=To:Subject:From:Date:From;
	b=SpBZNH2Swo1n0gsmKSC2w0zDtU1XlcwBHw0yevwGrqUY8kS7WygMVzubABQwrCvbW
	 axuvjqBmjeIdtWa5MhVxl5ktySozBTNwGMNSl7RYr7JlDj0isUP9GSsUhyhDUI3ZSA
	 LJGdiwwsQSLUKYC/sh0t+8/mv1hSlok4MAGMZjEfzt4CzCu0/F5erdw7CWu1bYyYeR
	 wjLMG7vPay+bjUqry8XLBmXkIVeZqs1U7W6vdzAUUjvDi3+hNULtFDt6QywIr1yxM6
	 zFzJR4EuVSeJe4peV5E7QJsOtMVwthksIfOzLwtKJJC/EZI+0UayBa2jajCem1SKPf
	 /IX9hMho84WiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D87CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131519370.10752.567606255002324852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1acd5ac8e75d1a28f455908cc2a4b8dca7fcc29564fb74a6b21dd556efacf8
Date: Sat, 13 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781315193
