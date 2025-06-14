Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DE1581F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749894594; cv=none; b=RioRf/E6FScxF7RZ3IW23pH8SaCfWOi667f3Uq/Mgr2VgtD7rI88zPrMhX8rZVd0gCAJsdraajGwThl9RwcL7nAnIs6e9Ox7rca/itW2rlaO/MwxoS6cgKvLtAr//ZVWTzqmWlFfv1sSQj1FfFbGo+Yb3EQUz5N/gIZzNzY6kIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749894594; c=relaxed/simple;
	bh=i+FrYcyPj5UVX5sWJjTVkT/c3OmvRf5zN81zxVacKUc=;
	h=To:Subject:From:Message-Id:Date; b=PWK1NFLLctqsFjFzVEUgiDxU63SwGwsfa1hVAsczulKbcSQKdqin4gHi+2BEQqdPXt3bNbke34JvoF6uda5gJvEDDuIuyxQFafhC7NqSysJMSwnE4Dqw2Vk9CPSr0PWxBHurdt+2KvJ1tFTkl66ZoWHhHFcFIHWJroPc1EVWeLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSTYR1Jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSTYR1Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749894593;
	bh=i+FrYcyPj5UVX5sWJjTVkT/c3OmvRf5zN81zxVacKUc=;
	h=To:Subject:From:Date:From;
	b=eSTYR1JowwQUWf4yej7MJ3RNJ6HV89zTxMRPVpH6qygfn9Q6oss0Sl01sIeiK5GU2
	 NpTUXDek2701XP+7DKuX2Sr+D6TE8BAxmjzaEn/qYDaqGdqDonUJTimz4O6l0/hZnB
	 Jp2wBgKqKSvuDvWO0DpciuZObfrQ4/hUaszVfvkEOwIgbVtDtWYY/Pkf36+o1gKRhn
	 XHIRjDtouVlllTK6+7lzOrWZsASMOdBQORWBAsjoUV+Q8fztiZ4rfdHswUw6Kn8D7+
	 GeDrxgmVTeL3U2jKzJ57O3EDF3KZZPPxnh+ngpkTCnlbGzmQs5VKDLomORu/GTjSRT
	 SB7lUcDq4zC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91143C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989459358.3699.8445311791900574741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aaabb925a88ed35f0b2a8e5d994bbbefecff072af7cb8c785d8985ae23da209
Date: Sat, 14 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749894593
