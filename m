Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CC113C9BC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715250143; cv=none; b=i5wyTPM4+5vFkP7vLNj1GA7nM2UHe1vaaiKb4JPGAlrsPuDENedc3faZPCbXcxb0XirtfmegzSIupgsMuGgD5/6Do29L8rjZVsoQp/XJQCI7pN0Beew3HePhAfSgAuTriIQdq5yWkFlWeV0cGYrX/3B9iJMQkAKuRHC6ukPExs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715250143; c=relaxed/simple;
	bh=xMTvgIwmaaqlWUwL9LzFcm3b+1He1rxwelwk9sRKC9w=;
	h=To:Subject:From:Message-Id:Date; b=dgiRoj2FKrUosoGHP8ocy5YV40e3Soqx0rM5xqpJpG5tmHIx4c+Jhp9+VNaJjcwFC12M3r7VGYwmfeTJnmbVLaTc0m/fOMd11ErQ32RliH/qKnRL1Sr9oQCYEjju1unMXGHK2srtav0Lk1H3hns50Kbx0RX3jW5MhDDByci3NZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pyks0Vk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pyks0Vk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37BBC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715250142;
	bh=xMTvgIwmaaqlWUwL9LzFcm3b+1He1rxwelwk9sRKC9w=;
	h=To:Subject:From:Date:From;
	b=Pyks0Vk7uk2m9fViDWC7YHhTnpY6w6AkzGBQe859Rn4gzzYODPVe3sZXNia1os0cR
	 ZuzcKmg0GU7qF+s/Ggg7vUDxOvBXX0RPwq1YJVDTGz05GtCxXzLMm49TDxKDShJDoj
	 zpi+DFfh138Fz+H5hS79VjTv1ZnmcLGFu9kIcsWg1bWksPTcdwhr0GsRJzTQe9xT2B
	 Xr4NZr4g51OA7t6oYt86K2/Zzsi/4A8oNSTBGFUbsspsTspzqOlpmhd9NI4pkFeedx
	 POwfIKLfqUnxOuC+ribzOjCrEfYG9cEa8F0QFn8yvR6ymbz1ZYbliDy1oeUsMvsvyc
	 9xnxLuuthp1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBACAC25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525014280.6536.10486778349203841885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2f937e14bff04102c10688c88f52adf40a6c0956bc6bcab44cbe1bbbbf34e6
Date: Thu, 09 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715250142
