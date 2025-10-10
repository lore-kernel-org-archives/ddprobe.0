Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D628689C
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760100594; cv=none; b=A2Nk864rjazSEE3y9Y307PNyleKGAyqNYdBKC0cm1KnWvQCp/Acz3hT94VqzDHq14SSoz6oIphfEjj8NSJYNuy7+HKTrBO3jyF2aNu8KOe2h+uQwespwsirG+PBQ6brDeyuFxwiMeG/V2nytero4/lyxq51X6IElA/WY/OPvjg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760100594; c=relaxed/simple;
	bh=Jh3BrThG3khrn/tyBYWeWUrN74f5+fv0GA6MbwU8JPg=;
	h=To:Subject:From:Message-Id:Date; b=LkMMBZSKxS0pGiejs23r+6jWJLyueBYax9jWTu12/MYqedAuVEc4qimBGSbDMAmwOkKwniFcgKeGcL5axackMqkLJIoDjOiDkaQs8fytSQRTgSr1tzWY9h0qA8eiOadqyhiwAhJW8DfL2F806OnmqkoQTGHXyNOFueavwft8UvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EezQLy10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EezQLy10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52BEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760100593;
	bh=Jh3BrThG3khrn/tyBYWeWUrN74f5+fv0GA6MbwU8JPg=;
	h=To:Subject:From:Date:From;
	b=EezQLy10acpCek9jJNOuMpnIvOV2/gqIJuT+HhbcUZxCuvw0HHXQg3HyFrK7Xq4Xw
	 LyBCFsC98qMm8953evj4MLGl2iwEHbc+m4tiKRzbITBvoOahuNWIM8csQgvCvjK/p7
	 szexNRpJ/uG6Gybk83M9vpj8tmJEtBv5JrN/z+v8hUHJgtJQp+ZfJHSkmoyF8Z+Cf0
	 4+ZW5CTfq4JhxNJdRPRs2knD6ukEWEZIkUQ6MVDY8W1C1LvTR0qA/Yau4IYc7B3KOc
	 6ruG9QQzcMWuygsUpECd4kC8w9vsfvKoUqDHMQodogX3WBgEZ2H7aaTI1nlaKTUZbj
	 SBLoSMw7EFWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92325CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010059359.28416.6052458835725126439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e26bebf768db77ddc6c14bc1d8fa1aed430f9fe9c2491193ed4e6d9480a467a
Date: Fri, 10 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760100593
