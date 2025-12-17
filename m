Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE8234D3A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765971234; cv=none; b=E5Ouf4jw+5YZOcg09Q1qybq3qUfY+2W6d1OYjH1vKT/069hizvVVCStc0qJdRWhTqkmLliBuRrRicBdFgHBN76pP3hinqpGUFknUUufdQXrV2emEF8DL/A89zWbEwjaBE0rOZIQsxXOIu/oEjNT8Q+AEyV3NIgFuUZfl+EyRQSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765971234; c=relaxed/simple;
	bh=DfF9TbW51lnuSt9NtfE2j2sePVG89goErLcOuFrNWNY=;
	h=To:Subject:From:Message-Id:Date; b=EUgHe/LMtYxhwsi1mja21/zt7cIDP+unBXj7c0xe/mRJKDES4ZqOTyXcjV2Ctlf93pzPZhYg3JZto2lBkdHVfvT2SaWaxbRkwVhM9x+jphvIgZmwppZurTgSa+RpNItwoUYixnjuJcxZBJUm8OrcPFycMHxlCIX0sfNJqjL9LqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw6VyyLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw6VyyLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2102C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765971233;
	bh=DfF9TbW51lnuSt9NtfE2j2sePVG89goErLcOuFrNWNY=;
	h=To:Subject:From:Date:From;
	b=aw6VyyLggcSCpQd5r40p0HK849S5oxgY51xqgl8whlKoX1AyQHqEWG83v5DkekEL4
	 OmzYsvkXNXYIYWyigKnMpkKg5vklMweV//DQP3YaYFOTCpKf6EME3I5jVfjNyv636F
	 iaWcXACfyqF9MXLStfSEuMeJ9pVYAoEpEhQghoSRnzz/pOvpXr1SCWKHaOk7lzPEU8
	 I/op30RqdQlU1CF9SoSs0aCnIkUQwYzQmn8qXm33Siz6HPiO+1lv7NHMjL1+wM7y+9
	 NvcpeO6r7XrNqxkg1ISzlG0iwiKqMy7HbVR/GujfmHZ0+hHPnR3XWQ86/3ZTaxcgXn
	 cUNF9FviULcAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90336D6552C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597123358.23793.3403035222024444464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0f03f4081af0229a6b0e853ee5791afcfb237516df44dd71432479d020fc1b
Date: Wed, 17 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765971233
