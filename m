Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B69BA45
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725999954; cv=none; b=pV/QSTKRmyfR1szo+zMb1gUhWLfWf5Mg5COafrkokMjkOzehylIDITuZIRfmiNM0DJBYoZg/94+0XLbJcwzGiOjU6Yd4w/DjVbcEs99gnJNwedrQAlaIzty4EQu2w534sW8k2+LsQGd5xbFECCk3OfYsesKcb7dxCMZe5S1pmXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725999954; c=relaxed/simple;
	bh=6jrj++YSKSJWSzL/MNM5a5/wEz9bV7yrzvLXZRuIv4s=;
	h=To:Subject:From:Message-Id:Date; b=lde8+yhl0kKOFnO8+PYutiKXDCQNTtRLqep9v82o/N6ikh47E1gsUSYyCZkMnC/lsEhSDy4am+XhxdLrD9V+ZwWrc9cHeuQ7/ycAGkHzE/G8oGa4BEUVTtah0vp2eBflRrj5P8KJFkbctzxFVvIdVeg4b/e2NOmg/xIvMJmVT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQHsix+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQHsix+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E5FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725999953;
	bh=6jrj++YSKSJWSzL/MNM5a5/wEz9bV7yrzvLXZRuIv4s=;
	h=To:Subject:From:Date:From;
	b=VQHsix+BLvbN7dIlrKfcKtUDxWJMdOqJionLyuK8Vtsgcc8HR044AZhv+UuloAsu5
	 hBFASJ9nxT5FWdSpvjfcaPQao28I/VGMy3olTAoJENMJrMu+39kjBVKuwqp/z4+yjC
	 i4QPzDKWBNmGL0unDj/f60ss+9FN0+Mu7RYQNcWQKjckzazJvj3DDKz9Bx3q9a3F1/
	 b1n5fefCsCmGhtHSoFumFfieioGwr+AWzxpUvRwEzmlJcoZw4jLIooZwWUYJ31MENe
	 UOURG4iloVHU1D3OWmd+qYZmFqucVyJtWX9saFsyyL6Uvh7njfk2CRVi+ZT8UwaiZ6
	 ZJbY5Mcb582Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F525EDE9B4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172599995363.3441.6393041624313942822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b6260c647f4ee215ad9f672f18a9b1847751c1c2dd337b0eae96936e44fb4c
Date: Tue, 10 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725999953
