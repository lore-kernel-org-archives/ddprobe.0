Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C39D12C499
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755028194; cv=none; b=SS5xLJ+DvimP1OUTyYwSYtwIRaaTmgBtTCWMb7/10LrP35wBHuB3edaGx2ubuxPY7oZh5NGtobzkw2HllmjFi7NtKD32A5tUB+cZupuc9fmmYcbThSPN7cSr5YNU+X5ZuX2OUaLAN4vWpdOipt6F0cGWGHz+SFsmlvzReNjf1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755028194; c=relaxed/simple;
	bh=sXvh52X5h+VqJ62zxGrQVMSr4s56DKjoIbfSx1RAVQA=;
	h=To:Subject:From:Message-Id:Date; b=gXUKs0PR8Ak8Mr4A9lZIA2UAVUkdSVie/4AGO7sW9JHLsEV6shDni5oWDH2hJxFdq1GRgnMNwIqbhwY/75ez8/IGaPsrz91Y5Nb331hbEYyEqDRJZ7lHE+EkFvF2AWidLaGEw4j7aUuLn//lECyxBL/av2GYwZaG0b16/6VFRqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JagNhGeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JagNhGeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4454C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755028193;
	bh=sXvh52X5h+VqJ62zxGrQVMSr4s56DKjoIbfSx1RAVQA=;
	h=To:Subject:From:Date:From;
	b=JagNhGeN3NMAoQUGTrt+ttl94cfFhQDlGAhgaKRX1uit91hQm5k9tpOAg9b6vTBrg
	 CTBgwAslW6YW4OU7XAEvEji2qN7TifKQCgzgkwu+bHoxDQy+C86RJ80abYu1qKFGcF
	 xJ+gN54EDVw2LZimeCWIQaYQMuW0m4ibxY/CSY7Haoqr2OdpCgWlZDBnmNDnmmO+cZ
	 20zlmjMteO8ZBXXlY5IByyPfoXeeF0sgtukHMv62lsMKiSHqdj0qlL4VLgGjUzgc7H
	 O+MwTnYtOM0z82YPMMuvT5uTm6ju55RgIeOgpUO407min+Va5OSwjmy7PEXKei8k2q
	 Gl/Ihm1udNBVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F75CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502819357.12951.4990280181079369828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e5a7af1b496057d9da7d05106492dbc5f63a2e58fc59bb41dea62c7369587d
Date: Tue, 12 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755028193
