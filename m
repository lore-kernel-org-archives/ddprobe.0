Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06114BA82
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705936097; cv=none; b=m+QCA0QdvKHyp5zstzscLl0Wb/Z1t1KiWMpLy7PwrcMA0KK/pNDCa7EmnO2jBLp42OXOmzkc/dHiZh8Z+vwZVUNNAPqYTFfg7UJgjT68XdCXyZtCuOdUNtfzCM6i2VmtEH2wWcgNzm0PNIcIHK6Pgbgdw9HvzVIisD+EBIKSn8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705936097; c=relaxed/simple;
	bh=GPap/9BSyM2WWGws0yenDm4veFKKsr7m4EkCjTKdUJU=;
	h=To:Subject:From:Message-Id:Date; b=Q6FNpy74JQXR20YZkT8HRKl1/4X3NGIDbnT4Olz0UgjM5ze+6cG/cgFlOgKrltOXecvL2AiB58A3HbLraEa2YIaNCXADTuv+2pLAInTe7raP72fsrGCwpEy3FOXymkCBTGb9J8oUNm4YzUK/WpnXmSStsabpL0gAVAEZJBscncI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cir0WMBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cir0WMBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFACC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705936096;
	bh=GPap/9BSyM2WWGws0yenDm4veFKKsr7m4EkCjTKdUJU=;
	h=To:Subject:From:Date:From;
	b=Cir0WMBLaKcejJDHSmw+jtkxC0hSZzTA9LLJb9I2gqadNXI8eLWlKd9L1ia36clqV
	 mzoMD3f6pJVBI9tAvVIZhTD/apCC+J6jW4+8Egc4dRHwIGJ5+w5EYXts1zhGvqmr0N
	 odSV5Vp+JjqOU0ogWBHT8oy4sactv23C1MuPtrezLRs0JhUw6KRqUAGNNOAUePLPRe
	 HkcSpRmZ2q1KdPUlOBkymbCu0utspm8u7LCj9qdwGFXOI1W/l2UIEc/hdMGhRcIomg
	 t52MG8yKbHb0v8qWA1Lk8UYHfHj0YUBPvENdfrKSAdcQr8PeomZp8M7CZYHfvemAM+
	 OM7LAng7VpzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C815C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170593609637.2573.11542439913782861708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71788e4956b4eebc7a8737aa153a15910ac94d7b261c2288e587b4564f2838a
Date: Mon, 22 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705936096
