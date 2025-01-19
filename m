Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFA414375C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737278154; cv=none; b=EpaZDYbA+zVMdnkNYf1MCPB69P1d1nLAMoOsZw1KSl76oStr/SBkc/84tueJjrpPh4uidFEsgjgrD48yQVmdBbPmP1BET49CMKkvYvEVM6Iqp81fkM9S+eTKr467ndw/yyRHGNgv/xOlzg/LJ1Jye1eSnLgO5oK9WSO9CtcgLm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737278154; c=relaxed/simple;
	bh=0jR++SCA7DW2Qtsdz6CUqUZaW9Ftkg+cxte8DA5+3Eo=;
	h=To:Subject:From:Message-Id:Date; b=FGu6IR4K56+2ZzMzvByohz//+HCHNH2H+e0npx9txk0abqfMg24dD6QqkninX98riub7rTHp8zQJxEcREcW5i8kBLhbwMDzvC6yRTPSQ34O1QnwqlkdFmIpyY9mghU1NQN90+RsqsxSDdwmiLeH+R0hJC5QeCEJNcEuiSmctkd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLTI9cXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLTI9cXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C3C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737278153;
	bh=0jR++SCA7DW2Qtsdz6CUqUZaW9Ftkg+cxte8DA5+3Eo=;
	h=To:Subject:From:Date:From;
	b=HLTI9cXLG1ExoFVj8A/CuLBPifNsim7XaN/gLH4GKR0BpLw8sTMrccxRX2k5W+UlK
	 ygaG6HxBpL19JtCc0zvq+9q5VhZDU4+0FQzPLWHLqDMzB/NdyS/D48Xcdn4hD/t+vm
	 BvEnUiRS9/MTqYXotalmtH/nC1InIzVbBJc8ke9W7wEgJmSgo1VYD2s0ZosxbKMiOV
	 FQ2JDsurQowfa1bz9CLKg6DqbcM+UaVqVj31trXqJ5GSy7N2Nb8H/qfLKAOcPeml0d
	 1q9zPM6IFnfHooHLd0Od80HtD4hnGcRUL3im4ADoy1Qmj0VHddiwkOHiFaYmvkVtUK
	 uSDb1Jj41eg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262AC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727815359.32426.12362970246210505600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8ea47cba7d98c235529322ca72b6bc9ea3ff0d4584827615addf0249fe2cbc
Date: Sun, 19 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737278153
