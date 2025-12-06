Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C18C2D6E62
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765005174; cv=none; b=d7VDkuGCXz0DHgCc2c9Ryb4jk9khLNTDWfW1UwUyR1SArS3ThQWTB0ZR7q6NR+laArAiYLggsL61sOD1BD36n7qIW26dXstBE1Xe9mR5HVTJrpIw1vkp5yeEPvY/NQkN2vTrOd6YB2a1ZY0yOnc8s5M4AeI00GVIJZ+F0XYoECw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765005174; c=relaxed/simple;
	bh=PJdMQG2onWtOc8EkatD/sXLkK/zRWjT1L4eKxUFGXrE=;
	h=To:Subject:From:Message-Id:Date; b=uDDa2f7v4GJ0NoXS6RIzM7BtNzjW04Hgu8PvYM6BZuVtD1CY5P/CIuB1M3lLZ9synMFqMu9vX+kIW9gA+j2pDTqcvDTmgQyDEJrFCQ44p2IhsEBqBBeI1tjz7xf47lgmC+fjWJ9rrYo4eT7SXRxO7wyQJTtTt78FkfBWQjLP+UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXi5fsMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXi5fsMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7987C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765005173;
	bh=PJdMQG2onWtOc8EkatD/sXLkK/zRWjT1L4eKxUFGXrE=;
	h=To:Subject:From:Date:From;
	b=MXi5fsMVEVPo0XBUSFFbEQ6SLIzcpn5zVymvlBXV3rcfmz69Qu2+TL0WdW6Z9kH7a
	 Zicsvx9xEB3WaNw5WZ9M9i/XMK8L9pV4rfHhICrd6iSqXLuS5p8Ak49PDIsFFfmIRB
	 19Jsb01nGkoJk1VVUUXDsqjV66rp0XYgpVm9/gBXtD3CcSoxvnhbQIiSDDMSXmnlBG
	 fbjBqrK7MtDe5aNcm+nscfQisTh78uoS/iRXN44Qvl8kRGWoF19WFOekuphOuQnXZm
	 4tY1W0AODbb42SSxHWTKX6aptuu2b2gsmoLvRvjxIn6SvvICuPCcpLREZTLmyGROwh
	 E8cwByg/RZmpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B066D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500517361.16570.6988598059985987054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82a5a789d31b6765acdd6b83ce6120bfc79770b8651f054b9e4bd9c98301576
Date: Sat, 06 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765005173
