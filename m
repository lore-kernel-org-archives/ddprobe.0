Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0AC29D0D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562394; cv=none; b=qNoSF6XGsGR52GZyKgliq25+fttDtZjbeHYeKwleDiVLS7SM9MJoj6Na6SrfoV+xGsaoRtuXs2XJbggDXB0IXpwTJ5Uz1natlpbyg2rXXE8QBnhpgq76mm5PSjfSYtp1ac1yZ9/GEUK7GedburZu+YrBuNWL0Mutr10DSapPJeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562394; c=relaxed/simple;
	bh=Tv0rAvetRya3bsdf0OX8VtwxjtbuNSU9hYmZHVQ+kYA=;
	h=To:Subject:From:Message-Id:Date; b=u1VZ35YYAgG1rEqWRN4z6o5KoCBDiBD+G3R9MjM4U/sLeSzYSZc1pPCJDjgBRSSe4ItjwfBU88DQdgvek6lU4RkeTkjaaeNIbhpaJA4Wkdbt8KSD3TNdnCtxvvN5RGKzDEVmgMVApEZ9cQQvnRAmVUS22nACOZID8AyPuRUnStY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FN4RENwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FN4RENwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BFEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750562393;
	bh=Tv0rAvetRya3bsdf0OX8VtwxjtbuNSU9hYmZHVQ+kYA=;
	h=To:Subject:From:Date:From;
	b=FN4RENwvV8fof3I521h1E9m57rUleAA5VAIEmR6iASUXNtSh8f4ccJYTlo8L9IWf7
	 MV5C88+E5RfXtPXcxgyV2+5s8xIfb5DQqq7OX57rj52ryXliNlXXHt7N5sOyVtDt0S
	 rQKdnrs0d/vV0tTw6kOooCrWtdo7FkrjcOpbIO166T4PfQlayP5zLelyM3rmWq5SXg
	 mx0eoq+GgXg4ElueeBHL8cjL9a3ziicFB8VltlRpUwA4+uIT3fYKitnrcJAlIeNjJ6
	 AjI53ogXNoXUZ53plbQdNpfFThZJK6y9y7dZaMA3HMTvPu/Bt7WaCYGmfDOYuKmdxS
	 Drk0eEvfm9EQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90027C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056239358.15488.5788044152665758446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565e24ea690bf6b0ce63ef61b7747dee91841874e93a4b11274ffa85b3c507a7
Date: Sun, 22 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750562393
