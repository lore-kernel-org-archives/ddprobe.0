Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5123D281
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782140194; cv=none; b=kHkVhS40Lv3v2TYeuWvkrHN6IGj9jbILPpI6D1YR+DQBN5ZmNzp0dQVAKpz7vnRSm5qTkgP/vUYxTU49kbjGPB/1LKcj/IuGGP5OVRDE40k1GqKrKQM4htpujBw/Jazh4a6WhODWp52FbbWrNWnkLqnS/dNqOrtL2RHwVsC5ovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782140194; c=relaxed/simple;
	bh=ylQd52tATwxqyo9g4FDiSbXj3OGaFvYkTqSCvU/Pnew=;
	h=To:Subject:From:Message-Id:Date; b=hSftulKSTa/2GqVjqXKV5eo1iGtQjBdIQgHl1TvH3yWZECVaRAkiIC55aVmRz/yuvXPVxBLzWzLb0TpsrwqZ3NT3wmNaZFdkPI7Wj7hDB7kuo1UgA6Mf+7mQfmxInQINa/HpUUv6p3QUubdK5L8mMcUECLAlAflGtNkkRaZkv1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXLwtlbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXLwtlbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E7FC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782140193;
	bh=ylQd52tATwxqyo9g4FDiSbXj3OGaFvYkTqSCvU/Pnew=;
	h=To:Subject:From:Date:From;
	b=IXLwtlbRufXhkmKdbXubRpEY5DQRsXN0NHrHywa1IcLMebTSdwXqnVmxR4mg04HTQ
	 mcy+hc0NYL2hGCKGjEbNJD8NH4ohQDXBBEsT9s29N8GeVw++QOcACCcGQrw8skNGyz
	 pVinBkubztJG3HlWlPFI5SBg2Sg6vyqL5tmBYQV/xQyXFkdMSEhbWEhj8KiQgMu7y9
	 bvqTBJLbfZiYaPV7YyIFUfVfFgZqvK7anV2puEEEoJCCY2nyzwPrmjUF8xLvAKi0oe
	 a64xaqJ63hkzc15y6CtdZF6OjFPu2dh0M/8YmpGEBBtynQlKRMG2SHoNYGuO670nHr
	 bQE+zzGp/Xqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A84CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214019368.22224.9533803349401898124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7166e0ea3cb6ee3f0490b966c944898b1a56d2ec81ef25df3e96c20e1565b601
Date: Mon, 22 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782140193
