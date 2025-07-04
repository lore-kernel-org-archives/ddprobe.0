Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353D08488
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751589595; cv=none; b=fJMRyeH3QclMlrsu9MFiolIq0YM6e5ogjD4unTkA0MQ2XtYEVhRjlFhOE3BV8HsydQKUlUz5iloDc61xzO4JOE9WVZfUcZLdDpI8r2/DZ7tmZmk+F4/Qqfbm78aKdrhRB7wjkPwk+/zwxlM2J1s6JDobS2s+nt8npm8nupnHxqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751589595; c=relaxed/simple;
	bh=5++AbAf0vAViLss0+zOje4lb34zkgucesja/bBC88zc=;
	h=To:Subject:From:Message-Id:Date; b=mylvcXieG3N2sbm9vq7dWRmKDbU3nUUw5K4VxquqTAFcvNbw5mMcF+XoJqIabBOJcX2oBiKrvJW1OzjmEUlE3pT50ywU8W54EeCfldLRAkc5dvD53huOi4xJaZbD/HEgXag/7+PfNwdmVp68+VrdpuonNkuyI9YBSoQpk7Mleyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxVsM9wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxVsM9wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3137C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751589593;
	bh=5++AbAf0vAViLss0+zOje4lb34zkgucesja/bBC88zc=;
	h=To:Subject:From:Date:From;
	b=KxVsM9wFxAiLRLcKXE12RI8zFXEEZJ9hsY7iSGteB/XHJkLiOgS6l/p+/AKR43gsK
	 ApuzHbVN3TIH1d8itMiG2MT9Jqu23CLVu13hCLmMzfUi07D+MKnW8L7B4OCTe1q/MR
	 liamh6V9ZcgKl2P70L+ZoyGCp39psUY2zjcOav0/+bI4Sdw6IKmSrN4pKdBTvoBeT7
	 aFLm4SE5ovGQDoMKW//zgJHI7K+raGIqoQroMG2gLZvs9WINlVlVO8BMWEEOyuz1A1
	 VEkqp2DcdwdtFKMq9NWBPDbbGnl15CWf6VQVWLliB5xcqk36LNC4r96TpslVas+4q8
	 7UeH6Wn6AnRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94714C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158959357.23262.8597096327433958725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c632a359794b2e88268d42903868f54e3b1985dc9c474ebdb714577f834fa16d
Date: Fri, 04 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751589593
