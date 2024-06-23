Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490A826ACA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719175943; cv=none; b=smdXAZE9G68sQJrZKvU2/G4uw1OkpK0baLx1xdukVeuS4ByWFHzPUpXFqxkwLSyZvLvmc6zd02Lpse5IcBxf7EHm+AKlDK0FXaJjg6QBgZcKrt32kpTwxjt78ELskwiJyRnbS0KNggjjrp9JYhkDVo/tRMD6SrRL62ENeITxwKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719175943; c=relaxed/simple;
	bh=G7lpFdoWjLCl1ZkkImtAdu1LC0PJqKlfwxA+qoyiA8o=;
	h=To:Subject:From:Message-Id:Date; b=ZYlAGHlHF2aqHmPf4KTaJBuDoYBw4M2LE1/AgfSUcnH83z7crPldRnGI0zGKPoHYDGfA3KGDM693BX3HDj8CQvV2gndynRPuIAEAG9y+y03ijCK93qiJBVW2Y/Fclq3NHbrIgbh2vKVOrsgZucqzed8/zSjnWJv3o4TgC03Gs6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFlHcN75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFlHcN75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99A1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719175942;
	bh=G7lpFdoWjLCl1ZkkImtAdu1LC0PJqKlfwxA+qoyiA8o=;
	h=To:Subject:From:Date:From;
	b=HFlHcN75H6pVUYXGZWe14PRcRGuKbCT3dUTr1LGX1mao4X0t9KW7NrPTOgfh1H8HB
	 Mkz7Pda1mJ4x8IzwSsK7DZf68qi0OQ/cQS3UkTT07njIbZncBQmB9kKFHQJHI22H0F
	 4JzvURRS4hXUSaBl1ZkvDhNURyTgeiD1WUSnzCkvXoUIJu1thNS6xtf+3N8sxP/Rjp
	 xeYPWNa38oUiWcz7xtVlzkK1PyY9NuX7LcpgVUfsoFdvOyvuG1gKYc7IPhFrkRgITk
	 rc3WhhHpURQ5IdryFM/Q6NR0mqvFeVhe+E/SjQdGhZ+Tg62p+kilKwV4wamXm6DfuS
	 tXv012sVaftyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3717C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917594278.24900.8340565671279536308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a0c40786475d6105ca5989d4011c40a4b7af0ccec52348fca40c27292d78ce
Date: Sun, 23 Jun 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719175942
