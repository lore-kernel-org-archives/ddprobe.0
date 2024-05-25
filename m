Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A02210F1
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716609803; cv=none; b=HAhvsmrRDh0r04s9ygZzmdxbuhOEhcfPxUurYk8UyHVddAGCMjOrVjuLr6SlHmA90oKrUHYUW3EOTEgTVspujO+FfDiaNashAZKLyufZjBVU/HMdm5dS2pkiGC2C6aTPhF2g8Ph6F9BSvI8l43+5Jvcksvnzb/ZB7+f+j/7iD6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716609803; c=relaxed/simple;
	bh=m/FWzgIsEUW8Cub7CwmBNjDGAU5GNROQONXBL9PJjNc=;
	h=To:Subject:From:Message-Id:Date; b=JcCVr5WyaBtU2wkCHgap5onJfaf5eslX+Mk7gdUF5enCmIbjFyX2Q0TYrAogqxH4qP39B1tKeDq0HT4XgKRk0XLrkbr1MAZGVpok/u4oBgoWvt06R5xLI0gqJFDd/A+5w1H6zURnujhGNFsLYjjHTFsI2Ynst+KKwrEhhZ2fIOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeoCcDU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeoCcDU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5027C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716609802;
	bh=m/FWzgIsEUW8Cub7CwmBNjDGAU5GNROQONXBL9PJjNc=;
	h=To:Subject:From:Date:From;
	b=oeoCcDU9Q0rCjTSGwQzF9RcitHoPKoMsr4nSCCxMWwm9hWzzDI3u3mh1Zvi8K35f1
	 HQ6qGHx5iK1k7+on3SdHeVhKIP3j571sw42enwHwjFJ9+PLHHkGVsMRVg1J10tkK5d
	 2dQbxO+3zw8ZskSfTrlvF520XW7vU/GoRQdcp6DXLmcSvFvnOUOauhqNhsIZWBjg5s
	 ZqfpYgaUMszT+GLI26+QRKPpBE1wpCChcJuDb3I4zFiEB+JNYDoKSzcBwvHDd9QFoW
	 PRgzmGUMtIKaY07WzzBd5wOYQXBi0tAWlBc7YS7Neaq5fHyAaW1JEw81ZQalR4Xd5o
	 xcN6pdyu3vEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECA3C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660980276.17164.6734470631458565086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98a25460429b2328e13eb381fc3b42a73bdd3ce8e4c289df39ddcef4c22629c
Date: Sat, 25 May 2024 04:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716609802
