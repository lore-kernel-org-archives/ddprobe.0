Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BE11CBA
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741597134; cv=none; b=sfSG6kj61x2P1O1envzrbiGOn91wYnAMJFf0lDb9RD5XkgT9j9si893k/Rub4AvaJTGgy38Ow/2kKW9FltZstn45AOkxKBANEh0IGufTRTH1HTDFhM5UHl6ftxVkFozB0+eL7yFypme/ZFgCc6bBCjTlbrRub1N4zO25tYxkwCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741597134; c=relaxed/simple;
	bh=8A0P5p+74QnDYIkOWiIIJQnHKoVvrOAghFLx5raGX5o=;
	h=To:Subject:From:Message-Id:Date; b=TU6wdr+jm0VYiEoP7QQNdzcCFnaUN+KOkoSIV9tmdGz5+KZOG/525bv2TmjBp0jVDjSkFgcbkBu1HD/7DAtHxu7KWulJwWxb/VPN0Uo/lkf1vGkMpDIVAy64Pe9gGg+wxp8gVKtBMPvByhvS7UVdf0pqYsBNBLbkRDjpsDAWGk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XayEQMgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XayEQMgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8045C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741597133;
	bh=8A0P5p+74QnDYIkOWiIIJQnHKoVvrOAghFLx5raGX5o=;
	h=To:Subject:From:Date:From;
	b=XayEQMgl0x88RmXxQ3dqIzikOsFrmpQas1Y7SjH9zleHaZ1RZhsmUYobEqYVCnOtp
	 WEaUb8Ocw/Xb4muptTcJkYZKry0H9gMbc1oFeAgnLoY5f3YiGha4erAgX+DUWGrmNP
	 JgIjfWWhCGdfhyKmDfQmJL66jnA7rInnGkjEQb5pOysfZy5SYmDuK0JHpmq4YR2HxN
	 eNmBCoMMCpuIywixUWCiXIEeslwLmx5j7BMGUSV7cIuYuFoxGLudmue0NmMoQhROSO
	 TIwbIUnTotrwUamu8kNGGDcfc3ViX1DVrpCrfC2+CUsjO/kpmhVSIM6rFVJXMWfTtL
	 EbKsGiXNdYzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F31C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159713360.15558.2479941588068822895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6fa8ad1b16452f9f82c5caf0b5595342776495629adb86745cd9e4194df590
Date: Mon, 10 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741597133
