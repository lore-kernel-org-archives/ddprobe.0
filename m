Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA242206BB
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742468994; cv=none; b=EEiaYVlHpgezyl8dYv/ioqmK2X1Vx7s3sVusx58RPvsgIVOw6Wog0DFL6g5JF7u8us4sQ58Vw3z/rOG2gaqaSHzXAcPt8REE0I/83vAksKAzkd+SYcZHVAKgLo4KeNUvUSp9sXONonvp9GqZisBA4zn4Y83R0CUIfZ5uV3RjtxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742468994; c=relaxed/simple;
	bh=fmQqvy88N5JKjFFetbvZ4P2kHBRNMkUdG5PW8kH1Gig=;
	h=To:Subject:From:Message-Id:Date; b=Z4xq2lwSZxU6VmOf+0bTz+QHBrAH5Da3hG0m03QzF+eAosv/HVcmLVOak3oCyAJUZI7YRkPa6ks+tO1iB9g+XBkD79BVpVAuNMjU9MrZN2of1Ez8h5s4kZ+0T/2qDZUdezg2CEMKQYlcSIPtP/+tXwxqK65nhGEgFbN9QjAOG/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBDEdwO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBDEdwO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD583C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742468993;
	bh=fmQqvy88N5JKjFFetbvZ4P2kHBRNMkUdG5PW8kH1Gig=;
	h=To:Subject:From:Date:From;
	b=uBDEdwO9TdmIwHuqwOa0XN4pqV9700VkeCb/A0IV1ci46fMh0DI6GVtaf6MfxcscB
	 SoD10K/otHfDSWKIysnqr060taj4IvDDkjvbbuUZhBVP4aULyjc8hoiHLQj7KolcwS
	 kKK1SDhLVTzqStOYQksyRUgLQ3md9i1ExDMoE87tTgdiPAhCeUwtvcVDuQb5fN5G80
	 trwssc2wCUcE/TkOxVSvxffxxx45kvRantv/etbeCdAV7940nIhRzk90WPuSiNmg4a
	 wI7QKRrR17le20vfch5oLvwnSsAOFdQwWXxBEKYnhE48TZzbwZclfzVA4gVA/wtxzR
	 Xa28Knf92thgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB71C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246899363.23966.904162746159597069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cef73159079b149bbf78f659d94652448198d2c856c82b6ac567c72ac847b6
Date: Thu, 20 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742468993
