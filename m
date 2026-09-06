Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEAD154425
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788703834; cv=none; b=F8QzqBSHOzR5GZ58Xs5Oh5rzaslpjmHVeFzEMvjoJsSNU2K71pYeqXbgql2q73HrO1MGIxWDJsUiM8JBLuPBTJbV6x/vddpalKg0bQNuhfCKz4tE78UkEA5+EsViiRQObMNJlFWQbjAGkP0G+4QBM51Jo9cb8GiHrEobt+b5BPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788703834; c=relaxed/simple;
	bh=q6bsZT7LQR1i+PXWaGKYj+iwiKBLCdaZWyOAnBvYW5c=;
	h=To:Subject:From:Message-Id:Date; b=J3yyObRzVE8WFNow1APeFofOV62TlTJU4MVHnlbdhjNQAvN3wbOS5OByjJjxT+YIZOFWX0C5mX2DN7KaHADV+EfrqUqs3DTyft5ZSotcteZlkida58k1K9L3ZMDC2YQlNpBrcVx8gLJqQD9vy1MY7tEu7/7TChgef9MAzG3W7gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/OEn2It; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/OEn2It"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788703833;
	bh=q6bsZT7LQR1i+PXWaGKYj+iwiKBLCdaZWyOAnBvYW5c=;
	h=To:Subject:From:Date:From;
	b=A/OEn2ItFfdg/SFo0UNCnJ9DjtEqeRSALnkYFDQrs4FtJiNwmILV07RAxOyFMRhpf
	 vhgN2VF4m5/Di8hqMs2deuZGc2CkjoYOpSKOZv0WgfgKa3XILZkK8hA/rZ3fEqVkm6
	 Ss41maAqbGDnv1og9up8sqfw/OaPy/m/xxzmJDKPcA3zCK+G91zyFbVDP451KngSmJ
	 qhKdUfxIniCQuAh9OvvMq2C19omAndtb5N41Tr0nTuZMcpbl3XIp8ydbTnUMRr8pTk
	 qk3CraGMnRYVbkayYN6wT4QJhnQ6oeGfbBRMZwQbqK82R9GNHtGVuWxeqItJOVt/u4
	 OTvFLVfkSpSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE83C79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870383369.1732.12623390847957418787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601f02efbf41e2438f8d7124ac0f57f46f1d9d5ca691a1c28b5255cab6958fe2
Date: Sun, 06 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788703833
