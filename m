Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA1B1361
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721523954; cv=none; b=DWDi8valwjmwDmzExg51OZ0/n8c4hUQaTY9myX0W/fo7gP2HKHO0pqkXJqz6Bn3xQNRJP2qB0K7T9adVQWbq2KMDeGrunruwVz8JQ1KvbkoK9PTHjRiuAVSSmUxsOlEuEEtWJNj3r9uVI3v03x+TNH7sTaxYbEjTcJmPeVoQarY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721523954; c=relaxed/simple;
	bh=Chd+2ch2MN68NQ2T204xwUovgJzr46aOjoUXUhPfLLs=;
	h=To:Subject:From:Message-Id:Date; b=Fz/HOvrIUbKBF/Du1d5WLr01UAJDdrzvJbYtcMRsZNq74HpRKjKoXQZ3AWfRyXUGi6ULu9eIsdnYvGi0ju02+JWb5MkbkLGGFNss7SdEiRxX24UVt8l7C5XZHC+Ts44NHdWjmSxXRuNMkrNc3Dlj3P6EiWtv9hsxH+WAaqsdjZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyokmPUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyokmPUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF108C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721523953;
	bh=Chd+2ch2MN68NQ2T204xwUovgJzr46aOjoUXUhPfLLs=;
	h=To:Subject:From:Date:From;
	b=ZyokmPUy3BhqtM5GWvQ5S4DwYCqNJVsFflbK5t0P6rewqH59pasZmW+o9jsQwTBfk
	 Cqk1yuZWqYEIstqqfQnXizapa9f248khIUD38CpTvE0NBZEoqMzOYdVrag9U/Yye8y
	 WHQdI8gEJD21GXYu4t7JFcLcUl4Yy/BsR82KaRCotUQo5XvunHpiWby90qFeglSK6t
	 qmaIXuOPXE1gK4v6uRvhCkJkSkqTt0qiU9Rpu1/C78rD6jh/RePp18YgMaJj5i978u
	 D4dOL0mpj2vnsFkg2D+juA3xsqDiyooSg6a8C9mzqEqzXZYJu2J7xjqYnsxPkQpXls
	 PVYGuK40RyAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C5AC3DA59
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152395363.29302.2724593970916789286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d8a3493af1062067284464739be31cc35215cc177ddb653547aa70838ebb9e
Date: Sun, 21 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721523953
