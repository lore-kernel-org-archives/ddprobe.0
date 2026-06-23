Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509273932C3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782243394; cv=none; b=Ad0NJfAkcKbhy+YAMhAtUcnjULOS1DCN1u59DtuwPFVshTCXQ/gSibVvDqPQMK3dFEdKvolruUgwBW2E22J6jKfpqOxgWpm1A3xuVv6ogzCH7ISawFy+C81cdHgkhFnlC3JmQ5Q3lkBf1E2ww/tPUCGeJiFx1ct8mtHE1LO2ORc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782243394; c=relaxed/simple;
	bh=9TpzciHD8Y2oDOqkdJ0jg1Nj/HawCzh5PoMH9eBjPnw=;
	h=To:Subject:From:Message-Id:Date; b=H1HdwTVACUVNHxpMP1/ZlBxbeHyKfalSbEel0GGwVQzYRFA3fBCLARSyTWhUym2RlpeUC2KSVZQuNoEMDMrUNPmK6Bbi6Eo2lUyJuOUc+V8HLi4qh5bc3EMWOJtXbfpcA0tyMZDwN9viArIlq2Erz1UlFzrHKW8Kdn3uBKGHsvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFprpdpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFprpdpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8551C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782243393;
	bh=9TpzciHD8Y2oDOqkdJ0jg1Nj/HawCzh5PoMH9eBjPnw=;
	h=To:Subject:From:Date:From;
	b=FFprpdpXaWmqquQ+1Yb1jwO+9+u6Ooj41qW+0AzWfOvyzPaO42jqu4AUeSTjXi6rW
	 Pi9M4zeYGcGkwPLkYn3wVkGSJdf/koxeGL1YaaN9tQdT+gb2pindpuLRiH6Nkgjcgu
	 vnKVjdPJFbC8KiJXyCydXEdzd+aRXhsMJRHTbhZHaLq+hyA1Srg9+aQN+5kY+dT+9a
	 wWn9oBD1jTfN8aJJqc9XKeTx5u42i/oVA92yOklX0OcGp2bQS7cKohX/OAQwIa3dCP
	 t8CNyGBvuOTN3D7w3lY4mw6qehLY3eqQg8HsKg9wpSTduB1SR08+raHNhyrxn3klKj
	 GYQo9mZHQeIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB100CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224339369.21482.13609414497804659825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3d6c2cd671748cea1a8c4928bb81f98b4bf9b6004262aa88c14503c7dac589
Date: Tue, 23 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782243393
