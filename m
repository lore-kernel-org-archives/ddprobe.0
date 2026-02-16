Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3AF1E1DE9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771214094; cv=none; b=ZL4gg2x8scNhYJzoXdQebYJjH10jePJcACFVfkM1dkfEOIJ5d1a1zAUMRinxD1cuq4JGYPOlVw+9XIksSCpLya1lU7xHn/HJQ8S6VdeT88Qt2vf3vvsOkndRtaLH98YelEYfbCc6QrlDSmb68K4ryiefsi9bSoqIEPUOukZZGjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771214094; c=relaxed/simple;
	bh=CtXWMkCAUAwCXt6RHphxDpiSZlIjnHjlzMDWEkhrFWM=;
	h=To:Subject:From:Message-Id:Date; b=ZM9itLl65Ypi6Sus4/8XVKlHp2jaytGdm+WhJ7dgXoUCpYE+K4QNnX+t69qeJXpZx3IMswmEkLFeMaJjGGOenu7vzEXP96UkkuGw0XdzH7/zmRS3i4kyZ2XemuBiIlCMWhVX8J/8di5iE7TUS8TGeUAwZG+CAk3Gc+VlaBc7JuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdnNC8Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdnNC8Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51FDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771214093;
	bh=CtXWMkCAUAwCXt6RHphxDpiSZlIjnHjlzMDWEkhrFWM=;
	h=To:Subject:From:Date:From;
	b=pdnNC8MeYnxdiI26zyMtcF4SR1T/0xFYYEat3dilmGu7ZWqAQVjCVGnVFZUUPM8HP
	 Hwm5W2SmYg5bx5dAtD/i1u5vQFc9yyXIUoRvHVPW0TUitHKEWzB1TijKjkXXyQKdZJ
	 lKJ4d3L6A8MYLeDuZgcgwfe/cgcdSgIH96DxhcR/bAXKBBiDqZI8k50dubTI2D6hAr
	 u3Nagt3IQC6kXD6AVwPkPLBD9lbDlSZveveskq7AqgKR/BSGPMHY6kPbALkn2f6AMg
	 zN8Ey/naSmtKgdJ0mxyt7fIkfJLugfpCpc0ZR7BN9UO0fGy2/fmSDUIdZKS3u9Ct0n
	 J9H/HL8nytO6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF3EE63F25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121409360.10862.10383242615676690430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f364767721836eb1bf16cfbfcf2d645288f0666ce6f719384ecfabe18128dd13
Date: Mon, 16 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771214093
