Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F27283123
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746547194; cv=none; b=IUy90jV8Q+OD1GcDUXoLoMzzPTScaaVYfJvD6mtTwN+xsBSruJsfrD60hNz4vH85n0Bd2JPt6Y775asW3A7K5kKAXMd4onrBxH5D230h73Ua/NitklXL54/HQ6SM1ltj8ilVg8Sv3vlozq6yddAVwzNPexa8wGeBHnhlW4KyupM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746547194; c=relaxed/simple;
	bh=8lfVz0EAuXOHofRxsIvnKW5dy80iF56CqKcCmVW8mL0=;
	h=To:Subject:From:Message-Id:Date; b=T6OnRzTb4TMxTJwJWqZwWNeo3ZGKpn9F4ZFYC6Bp7MGCdpoIOysAk0BUJfL2o5UMEGUi/5vkK8O1y33V6fps2GiT1pnCEF+wLbqrZnOk5jruqxaI1ONYqSPxPoNRFArf2MAWxZFhL7WcxzziSdfz4JFKy65v3uIiH6F4wDqr7cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7NtBofB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7NtBofB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ACC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746547193;
	bh=8lfVz0EAuXOHofRxsIvnKW5dy80iF56CqKcCmVW8mL0=;
	h=To:Subject:From:Date:From;
	b=R7NtBofBECE5GckZcWeoaNrnTIsJxiLiARXEuGXw0dDX9W17+C8F26SbDR2hY/gdH
	 OiwWODHc9QR1orfqMUcb9h+g/Qd534Yr8NXsRmMYAD0Xx0m3LX6u/3MiVlF1yyRU6M
	 N1cxfyIeSBQ5oGmI315YYbu8rNgMTWTlu6carOUx5IAQemWaL3uMmp/n2h6gReatk9
	 f2LrYGNygE8u8L8PBG1V4BL5qZ0br8jBEa90eFsQVFUtlTa11AvyX8WI0HV+1jYhWM
	 ujgXeB0Z1RDAgCF+otmzcTS90FUn0TMhBjMcIAXWxEhxD0zxwOIqyaxgUvoiAJ/af5
	 QqZvkcVvewbvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E884C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654719357.15448.18322542974312321050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013c83dc1f5ab9a5bc7b8c5fbb095743de52690d2d7e7b6de37343aff0efdd9d
Date: Tue, 06 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746547193
