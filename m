Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146453D412C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777366054; cv=none; b=rMCeqAtE50+PxKsbuNynqZZL23tdNRtOudslL18tcrzhPVoRjssmktUeh1XGRoDa0ubhHnb0TwqOPmYm6kAjliJwblLfsGFctdWOJHhfnooO90vfB2b4xK/Bp/btWCVvbI8enp8xb2x99y7zE9y4om6vG27l2jwIYj914DVSkBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777366054; c=relaxed/simple;
	bh=k4HsoILi6sVPC+ttQ+RVtsZoB3vq5/H9nVWhuQZ5AO8=;
	h=To:Subject:From:Message-Id:Date; b=pYUx+ju1MiaBGIoRzkeWhGHY9Z8ymv7HWQoxZeOsxqaeMyDhmT//Gbw/6BeqRxhJasbhcS2yymQ1haQGTBZQpBfvreSzkLl663gddggnIWywo9xiqqZqCA0kn0meEnin1yGMq67ZlEZC+9XJVFI1BGXvSkR4NqtcUmiFJyS3AHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuNHBEv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuNHBEv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B775EC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777366053;
	bh=k4HsoILi6sVPC+ttQ+RVtsZoB3vq5/H9nVWhuQZ5AO8=;
	h=To:Subject:From:Date:From;
	b=FuNHBEv6jlCJAKns3asLVeL8wZ2NE/AAzwVP4xCYFfHQZ/lAtL1x3G5T/uMIMowdB
	 clLJwWMAyFuCCNWSighlgh0zwePRwcVsRYh6mnudZ2aLniEm79/yLhlsYfdOmUMLCA
	 C9d1BfRwyh28lbirq6dXIP8yuXAwWI29Zy5lnkNn5C8sMY9fRpgUjQEmUUJs4tTN6l
	 kUPWohpL6zh6mRi/owQsrXLqgD+++e3DJOZTVychdtDfhY0cOuz8UHdtouiBEMWE9U
	 YIyWhMfOlGmBieAI1tvIEKARTQg0wF8r32jGF8G23pen6XU+HOcMjGjO98JbP8nVUJ
	 /hbFPimj8GSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9643FF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736605368.14775.1297771443584850616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab8fb205370820a32c071e1abb8078afb067209820a2b1d0a74c9af95185454
Date: Tue, 28 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777366053
