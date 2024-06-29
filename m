Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4883E481B9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719678263; cv=none; b=m74WHEXfevwY/2/+GLB1P0aRZx8VdLP+VArczAkGLkzZTjbZoEwv0eawqF/YApQNWerbsTvtjlVO9JqKrqg5Y5Qb/IExNfUdHQiTgRuVHjjOBZN3LJGCsKKcmzhIg3PPLWxhdw6AiOKFi6x7B4Z0HARPuSa4V4XqTxRUnFv2aXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719678263; c=relaxed/simple;
	bh=yG7e8OtYYLI2ktAYWYAMKPMwGxZtu3oIvFul9yDfcRo=;
	h=To:Subject:From:Message-Id:Date; b=PuZjQfyUG6FmT60hfltzXF+nzA8x3f/EVc4udeSR3qlE60GsoaQdjLUHsHFSsjj1YKKUI54MvAWdUT1Y/ccaVCmpZe6Yd+ufL5v8+fZU7WsO44/gva74I4vYRCzQ3vci0/hp93WLyZ+HSRxTXiVo5QvNMRS0BeoLg5Lz+AhqRJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI10WALu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI10WALu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FC1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719678262;
	bh=yG7e8OtYYLI2ktAYWYAMKPMwGxZtu3oIvFul9yDfcRo=;
	h=To:Subject:From:Date:From;
	b=cI10WALuWK86WLTTrFPqndGUt7oMD0tRLl5E1r4YsK31/JP9cLIeLFgBGyDaTGq4Q
	 qtCtBsnIAJ0aRXbKwP98vG8aMDAN0DeP/S2Bn+ZCK4OaluLC527jOzVWekn4L9g8pY
	 pH0MozkIgGHE4q3LZtt7tEb5EsR6q36SC+8AtxU2mKnQTPOkhYNrY6bnHyOVzJKFpE
	 1KcrC8txZgFmTL1Ogrqjl/OzDTOIQjzSgyt3rXUExqEzkc4ej4tH0BUz9tTDjTpGOC
	 q1GjfzX9ljC9PZpUJW4MhNqchNozasdvx5y35AylFrlJOD+pnaNv0i/C4hf1s2b+sA
	 fJJun+By2W1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6572C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967826278.8828.16104918284540657686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee00ddbae8a00b0fc063e68df0778073c77ce8302bc71da4a81cf2c0f8160e0
Date: Sat, 29 Jun 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719678262
