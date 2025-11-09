Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0057C1F4174
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762711794; cv=none; b=Bsdi/C007X8b0Mlzt57z3RrvwH0bmW5jhWY02Uldc2RH7GkOcPDEwtU37ZknJ4y3cJDztG1Clp2fRAEfHJnEv4Q02N0rdLwVzza6l+Kj3ZqdJAAfFNMh+iSqWzKhuU1VqrFedlqy7viU2pflS6Pi2JRD9MhzU4Muss3K4ZXFr7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762711794; c=relaxed/simple;
	bh=IzGyaUC+KD77oOs4POoT5+ipvxUWI6orgg6HMNW9baw=;
	h=To:Subject:From:Message-Id:Date; b=MG5tYodaUmk4Qu7yROcceBQvToyaDpMT3Aompn8f+xVuo47K4jQz2cUREaJutH1tCDcASmEqruH83zkL8DoKMJ7ID5zHCftPJIix/YAfxKnkwhi4xsNRCzeeipd07RwpfGYV8QlCPuOykC/9JRQR9oXoIROiV+tlBcJpyHs86B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkysevVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkysevVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B345C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762711793;
	bh=IzGyaUC+KD77oOs4POoT5+ipvxUWI6orgg6HMNW9baw=;
	h=To:Subject:From:Date:From;
	b=kkysevVXkClacHdY/u3xq3PdOP2hpNGbAOANC0cGgT8c61F5f15WsiifqS/XDzz6e
	 v0JAfTjqr1duNAiyzOa3Kzy/sbzBlYrokz95HcRn/q72kK2hUiqb8v5NPI4XNXD7MF
	 eW1kM0AX/Yrpo3zF5lhXt+0IQhmGyU8kBHrIRaJmrUVvWUvlkRCPcJJzc6JhZfYDmc
	 K/dcp6IyYkcOFsloisVvqu7Ior+hN4pzDWmdGTGE3Pl9tX/+aD732kkclbw1qJa6t3
	 9gorT6BHWgEpAPAwMLdVRx/XiunUBbG5fnOM0gDpKDGW2ltzimZNORGvypDR0GIXaw
	 vAee1UCRYaXEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD3CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271179358.12662.6205886682996486557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee854442649c89b0529d861e3554b0c4afc298e1aee35ecccf6f621b0cec30fc
Date: Sun, 09 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762711793
