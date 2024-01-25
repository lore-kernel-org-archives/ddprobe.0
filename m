Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D9E745FB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706203697; cv=none; b=pwDCsvtBiK6//Zj1ZzYzVOrbAVv+y8c/4PkyFLT2c6wy7Wx4xVglBy6sFosy297bi3uNUiH/pi+13wBD0ZhSCOj2YsrrbKsPtjEwYd//g9OquwDBZAfWLa6NQM8v2NhwR2zYgwuZUE6voB13snoNskskgcm7j2B9FbQVN9BfsF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706203697; c=relaxed/simple;
	bh=Z8uFijphAE7S0QplTfLSQXZ4qpAXBjhYxRe28GJKBl8=;
	h=To:Subject:From:Message-Id:Date; b=GlDT5ghsEfpzvXOKohesA1LEZy0XmjzGWQAcOcmpkSWxiHz5uwhA4ynWaQwDSt+OyLcBbJg6Rr/UqcjHJdVzg64yQSOeu9faMSwuou7V8Eep5jaMe7HWSYBm36FPHIUTTiVY9yv56/5F/pDNSZi+1o0ozmVuNZXPzQo03jCAdv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnaVa+yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnaVa+yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A6BC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706203696;
	bh=Z8uFijphAE7S0QplTfLSQXZ4qpAXBjhYxRe28GJKBl8=;
	h=To:Subject:From:Date:From;
	b=rnaVa+yfQhL4EuX53+d8Q916BScgzQ0H0EDXlLFTXvP5uvrXy+ZNTK3bb+dBVar5Z
	 rGeMMBQCCl/0sPB1qXTB3M4f6qSaJxH53vTnsWHivHINgv+KerSXskBMCFSp/PUdiZ
	 6N9u+VcHZuVVxDmN+DHYQrlmd8TMvsfwFdF5FV2bWWZXjCS6lv/GCeI2aMv64o25d2
	 n7Fz68MUCdONvwkK/IKhyqTwq9eNhSgCroPwvOmWaEQVT1am4LLdSJXnyHlWjcpQlV
	 j9MpZ8ec3s3vRh2cB/4aG2DkmquHDjYCOxt7+aa5461jxPL60K8EUJvVpPNG2DNP+t
	 yUNUrRuqAN5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61098C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170620369639.16690.13019418638192340706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec0649ca0b839508bedb79bc797109de0a84242981e4c58f2b9bf4a73a57284
Date: Thu, 25 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706203696
