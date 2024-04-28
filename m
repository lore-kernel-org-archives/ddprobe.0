Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E6423BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714277543; cv=none; b=V28cO7evlo8GUAIhed17L98AHSTfaDBNvtNZVyke/ZUTHM7Limj3i7C0LajUXUePObvU1cOsAe1ptUuqPrCou87Ak0O2YNzw0IyVFvEHrLYOfNH5bpetsgu7989DSSgHKk88JPujiGtZmKnKAUjVVaNgiOlqBeg/XruIXQp66es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714277543; c=relaxed/simple;
	bh=LYQiphp8NAkv8FOgW69396umftOmNKVA+2zOfjHWlyY=;
	h=To:Subject:From:Message-Id:Date; b=KoXczB+hvX5VcIvwUIKHwoyN959a/Re7P9/xC5D1gc6dkyaYHAxG/3LKCnWagSMfpgWVcoMkp7Z6EdBfQlJejxI1jya+US7PJhId8iFWg320yBKOt3iuEwO+wJkSaWf8e9qjCI7hOIrdWbOz77e8YypcTxzHtRCfNRcXklMsfCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad0dsvar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad0dsvar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7279C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714277542;
	bh=LYQiphp8NAkv8FOgW69396umftOmNKVA+2zOfjHWlyY=;
	h=To:Subject:From:Date:From;
	b=ad0dsvar8dkFj8r1BL9ix3HaJnDe0omJogwxYmRuZnbfxed+nvnrplODeP1I39WHx
	 Mg5HxHuIw8dpeQDhjuAbrWQ/Ddb9V+1VFfjNR22mbUFaI+cjoyRc9/CzyiXKNMHmGT
	 oTogqjo6vRGEevbIKExuhbAqiBCo0sfpTRJvTFV+Ef1aja7J8TIcDUZroRUFn1Oaby
	 WBSm5bR3jwzmhAODP5NfmNNupVoKRN+DVMaI369JwLf4vkyR/ayQxieH86/13wroKI
	 OC47VS4otFo8Uw2b42D+MutIGtkeNfSHD+i76kNqA0g++Wv7N7z9J6T5GDYTd55jrM
	 7XvheibfjlpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D8CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427754283.12788.9855195600046375841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbc53981fa5f3f82ad37e36bc46e2a43b5ccae018fac7ecb6846ea29e3f3779
Date: Sun, 28 Apr 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714277542
