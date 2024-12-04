Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE031F03F6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339754; cv=none; b=s7AzGzegLAGPaSsXUd+j0m29XNbGGHClOIoZJND7TqVUinXdKYObY0t8uxl4s/NPN6d58O4HA2YHAd98Z5kAtfD9IbcxdYZ7wpUUrJy50ysNuSszh/Cyt+oyY4Y3OudGMYmKb5iFpcdrkmqs8rjzrM4oJlSPBBInsO8HILLzAqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339754; c=relaxed/simple;
	bh=6GwoAGOF2OH1YdJ879hyo7tHsZuzPw92Ch5y8EPQnY8=;
	h=To:Subject:From:Message-Id:Date; b=XfLrmJ2GiLWU8UE8EHsbKnMneJ36gRvuXNoVroHavzGau/fKj1lvB1PrHSUfJBckugCMGtgLmlj89TcSIb3uO4390WkVNijXJ2MuYS/tp51e2MYjT9gFrrx+Ci4Uppm96DA2ZWE5JHnAVjVXbyNlJefpC8Vx9tXB//Hh/veFIeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJ6K95kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ6K95kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5768C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733339753;
	bh=6GwoAGOF2OH1YdJ879hyo7tHsZuzPw92Ch5y8EPQnY8=;
	h=To:Subject:From:Date:From;
	b=pJ6K95kxuaEvPCgZcrHnKWTVv1Kg+hoO7coiRzIVvPCUMTNe/Uk/OqJpPAnmFwetF
	 FFQOEMnE0OPlHV5uC844mBXOfKKB1FiFLmL9Iet1aZMejnwSRJAxzZewPg0gJrwnwu
	 OsGZ0PL1DVoi1NhfuZRMjZzeWITxs1jmSYwR1xWLfW3HdO5MEnigMCM2J076Li1H0L
	 8p6y2prfySRVuChM31CnAileEU/HTbcH7ZOq10bUjC2Rda9HiW3Ss//9xhPoKoFKBR
	 my3xqImgUAw8mvuc2eN7Jbavm4vUgOz7i968+yOMBU/g+ZcSACG7rbb3z4ynvggqo7
	 JaN9HPUpgjkwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB35E77170
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333975363.6380.15502891216005878558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bc5f94a8c6487699f595c8d06abbad98e81238eb7c36f2ce0cba87440b47ef
Date: Wed, 04 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733339753
