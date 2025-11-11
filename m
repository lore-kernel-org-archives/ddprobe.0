Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEDE2FB621
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762829994; cv=none; b=EEo32W6OqbIq0aL/bRg4vk9+jBnHi85Ta9vb8A0c2ARvAZbULV9xQ8/SUq7hFevKQyxAsTnd8jlLO5C5qKXjeyXR5Bl2/mRuMbL5UPpCbqTE6nLN/Zu0ixNeVqROeAgdspnZMSxYPI4gb2wsAc8ikTps7DNG2iMjPTX3vOu0+9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762829994; c=relaxed/simple;
	bh=wRWiTQCe2QqECDjp7EFnG4wrZAh6jM6mhtNiVMm6dYY=;
	h=To:Subject:From:Message-Id:Date; b=b8JCJGfr71K2xaB/Pp3Jg9if8qKDf2hBwSH2rr84cIEtIOhrrzCNH1+YehuNFEJnfPzbaZxvG460XCg37ttAnUGYwaJ3i9LqJaBX7zEq25QmHnKo8ktiQGK8m/njyy2v6CHGV9mpnUqEfVLqcNIGylvOZnzfBlUCRW6b2i0/R1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqSKUD+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqSKUD+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762829993;
	bh=wRWiTQCe2QqECDjp7EFnG4wrZAh6jM6mhtNiVMm6dYY=;
	h=To:Subject:From:Date:From;
	b=CqSKUD+o98LmbYqt4JyctiOOt3LeCy54lmRxOi9RLnyChPPW2KgQTsME6/Xw5kNjA
	 RIaE+tiQ30f+TSiyPYKw7jYpcarhkMTaWyFRSJqTsH5zjKwxkaRU3LG9qfSiaSpSmd
	 NfmD/UbKXllPOvIWVJwkdvL41qgU9BXGOYVzejUCGGP4fqrSWyLvzgt/5GqP2V0Jhu
	 wZNIYP8e5YfUpnRBLGpVvNgNuvZTzWrV5oweS1IcWyG4BzvueKDF7rOw5TZB8bCYci
	 8UISzu2gFjR1IkFoZtQoB2UKeCuI0pTnrkSbpVHA0PLE+scsUf/kjSUC/bCHPinC7I
	 NXhXR4frAH78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91790CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282999358.13777.7176615235067830529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f04a172eeb5f9167daece76baa3a05dd0b786b33c2655e0f2aa3e78a367e59
Date: Tue, 11 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762829993
