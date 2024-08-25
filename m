Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47563A5F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724574354; cv=none; b=Q0jW9Bce+Uc3zOumNZpuNG6Ff4S/mJ+vgagmYDs1SrckytU4Edf80Wf8F07UccPptxbFwSTwjkPH909Uey3W85qQbTWX+YJ3trWAzQaNScFYGfNQyXr9ZCRbC+UKOh38BNUiRrvnWDGfpfPgiSC/IIgnVBbxbh4GK515uqgAMC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724574354; c=relaxed/simple;
	bh=gMQaiVZbcN2k1ai8S9MuM13vFESpqBCbGXHgJxQpUhY=;
	h=To:Subject:From:Message-Id:Date; b=olLd1z748XO0IFbX8gKkTKSQdkizE08HiQOb74kOVXr7JbK+okr3bYJUOuxAWVhK6hbaB+XsX21l1FObL72ojox6x/r0iZlEc1O7VznYtPKRplMMr0T/rPnmm/hIVIFlicf2rtzp80pk1ykYMtaoUk7WqFtKJelzA+zVZs1rWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zma01u4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zma01u4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1298C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724574353;
	bh=gMQaiVZbcN2k1ai8S9MuM13vFESpqBCbGXHgJxQpUhY=;
	h=To:Subject:From:Date:From;
	b=Zma01u4M0pY2n6m8xSnirw4Acycg5G8rccrvwX4ahv6GiXV+/NJib/JoiECP6PW9y
	 40xz025pevo095RLP7xonfGFNGilJTn0mKDJoQ2vmJkznMlrptcTcn8JuCd/BD6jew
	 6XNDsY4Ey6uJ5ET8y3nSueqCOg8XbUi+cp2CGmpKahN+33gwQ+D8lUx2hZMLsP32cJ
	 xXEU69TwKCWqwxceyb63Hn6Qn1gJM3ksUcOBgo7WdvyEmgqPe2k+HUbAz07EnxpD5w
	 fdTFmwyM/8P8OxB9+Bp4d/E3aB3Stx9GvYB6lM859ysTSv9tPpqTA9a/LLwbvFvHG5
	 RKEYM10aamf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A967FC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172457435364.23725.8182758579145656306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ee7d438e524a49d0fa873b42883ae6a0796e749cdcccad6581ed3ef25a04c4
Date: Sun, 25 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724574353
