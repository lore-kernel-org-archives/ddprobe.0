Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DCE1411E3
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714983743; cv=none; b=Znob62m+tP7iOW8YBkO725+HDDC4OPNawlN7D9+lMhFhIZlRHMxZQ7Reo4Cu/8j++Xo25Wb8YPc/5M0MVN9QB6E0onHBwMaBIzRjHc6BeKZiMAUmhJaNG75iE0aXGWkmNh1jyQAcc6VQYm7aiCu3zRmYHda+zEX2guWJ5iKnDGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714983743; c=relaxed/simple;
	bh=XTHp+hiMDdYy49vW1kACP4kWwQH1Yosp7bfWQvHjSlU=;
	h=To:Subject:From:Message-Id:Date; b=NvomCCKJAgOtOHly5CB+7U0AiL9UWs0eyC/Ccr1jwuo9VOc08mmIPZESvVvGLpattK/KlVp7uLxM8+yKM0uYRzKbV93TIYVRWCvJwKSVQeU29d4hmB6TjO/yGL215rehp97BDM8seUMlYa3EfY5Yqjnuy34B0EpGPM2Lz7O/qIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQuODJhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQuODJhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF6BC4AF18
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714983742;
	bh=XTHp+hiMDdYy49vW1kACP4kWwQH1Yosp7bfWQvHjSlU=;
	h=To:Subject:From:Date:From;
	b=AQuODJhUVgXMbZk2xwr7lu1Wyjfsw8OUclsL/gBbEFhUn7oG4+/nrwq5ZoMxt3Cpp
	 MKZLjIGrB6cNHvEfk9hT2VwzyJq2Qk3s9WHLQ+JFRSQHKa6w0AwKQhD5wv8Fa9VGJl
	 ujiFQhjwgpEbuG8FFexr4pBQsGpeVnOB6quGbwRhfrI63/nF2EUbZboZZ/wBjjiD5r
	 pvtH7YNg003jAQ5bdoDuyZBzeFZRAwaKYIX0mt5uwqwvE8t7dU8Q4qOMCFXTRs6dyN
	 e3Aqtpe2bWz1vjnd9DCX5cq8oMz4E6usiVCjry+ZyHboXmWwKnuZJE17xidzZsBygi
	 iVzdJ9XlZsygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98C0C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498374281.4645.7134785797308948527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1a06db10c7bc81edf7761f675f509b3154745fbb68259c36ab8e95d2bf73ab
Date: Mon, 06 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714983742
