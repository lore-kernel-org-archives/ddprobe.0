Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2693859EB
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788202234; cv=none; b=K4Bf3JeFWViiJDef5iJnWH9ut5tyf4RL7WVCYHeOCq3wfgqw7kB6UH8AG0pOfYuXRSGHGiYj5WL2FGNcmpEmSmQ7G5TGpMwv8V9akxe+mtC7ETUx16oSMbV3USN6rVVzNAJT740YqTAONPC/RJ9ZOzq4unQFLXOgXMClouIiHqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788202234; c=relaxed/simple;
	bh=bBMLdKsE0zM2mMNQCC7gFtStml+DY4Up1XpwS+YN6Ws=;
	h=To:Subject:From:Message-Id:Date; b=loI4/URhLrb8J0ZL8J3H/T1oHeSZvvuejl7FI7PkwE+18EaIL2J47ty6TiDLs3GpO63s/iMoA1dMOjF8vzm4xEAkuZYzRwQ569VTNtOfdwot9W4VY6ErKFsijIlP0YNCGmCwLYjvMcEuCwhvsBNmgJPhZFrkafPfmgGYNv1SniE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCkY+6oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCkY+6oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAA0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788202233;
	bh=bBMLdKsE0zM2mMNQCC7gFtStml+DY4Up1XpwS+YN6Ws=;
	h=To:Subject:From:Date:From;
	b=sCkY+6oAG9bo0h7FD0ewCXoVADGOa6EfT8HKOSFoeWAzz0cioO5L9OpZwQ/OxlJly
	 5RSbxgk+vCrc0J6II7JWoAqQfp6CeubAbGUIj2il7zrHHNsyk4NihQmgY5TOS2cnYa
	 L/qsDdFAG0OpferNc7PdOloerLk6d4F4QpzY/xV/Mx2lhcwZoTITO5zS9caK9oVzu6
	 SFFGmHygVKIj/CY3R4ZyHebD86cQAikM+ISoPKac9ldY7KX4dlCj7WHaFoVT9Vv/fi
	 rWgTqOhb/MbD5ef0iI58XrGTaTXxU4c0cIkgBBRRQUxJVfDoMKaN106xULaDJqnVZ7
	 TtgV6kNgCcnZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B2BC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820223368.19186.17529135780421611185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6f3f132e0e3b0e1c0cc03f00c6a181d943de02b02bc2b791358459e7d3f084
Date: Mon, 31 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788202233
