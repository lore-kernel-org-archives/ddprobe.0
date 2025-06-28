Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73C921E0BB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122194; cv=none; b=S1SoDtVUjoWP2dgSYINe9QZbAeMopGNBdLc2omVUHIoIqytTOcecfWX2pk/5Fsqf3H50F2tOqw739vqXXggIJsQYQM7y0E/ipaWnwINbNMvbB00keqYemvsBcGeWHsnf9P3Ddf04MqzGyuuiX8QfgLm4wzp8SDipzCAwKpaqbKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122194; c=relaxed/simple;
	bh=WSwnOEmO1WTUCgzek0OJhjIpUcAkwDFB0go8nLc/dto=;
	h=To:Subject:From:Message-Id:Date; b=ue/JytN5hTBiauo+etSricSzSMdSPZuokEVpxnhgfz1I6kSCb+HBYRZccwN0hHp3ETKdS1AkG1m4jGZrXDtMukoc013U2umxxdakq9i6Y8Z8DAlIkVAAIfs8mwCczbTMR/GWITMWmkQNBrSs3e7Yd99DQgx43vLsDWlSd+uXRpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr964yJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr964yJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BBC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751122193;
	bh=WSwnOEmO1WTUCgzek0OJhjIpUcAkwDFB0go8nLc/dto=;
	h=To:Subject:From:Date:From;
	b=Tr964yJ2mbM3twLKBXB01MYWEQSqWWkD1fa4ZAxCJcbatEscJtYT/Jmrd7z7WiWzG
	 c/VC/Jbz5a6mElDCoZOYYD966LydIM0OfNPt9XycBhza6dZLce5dfv5EPNIaMqA3fZ
	 ZIu11XeaytRAmcWEpb132c0w1jDqKu5QOkgvYZ6VRkGjl4qT8/BzybJRR0kSpNR1rd
	 TMc7TpoN4WANCWXt+2OvSE2a4kblrNdrLYXjqzL/m3DBWJtChWuCOUSsqBJs4iXzsx
	 4jG00iWV62IRV/KAUYNo6Ub41Z3UWQB4Ostvt8hpwkqFd40yGRlaSnxpO198EEQZMa
	 UwYIb0qeQh0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A3C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112219357.27885.15234600529038248200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92261c0a7dab69631180482346c13a8dcc8c3856f0e9d267f26a4f6d8331bba7
Date: Sat, 28 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751122193
