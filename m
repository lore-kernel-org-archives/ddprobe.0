Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4581953A2
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741941535; cv=none; b=BLp5ipgOAK+ocuyR7yd9MWmiSBZfYMo8TZHI+lkyz69AUqYHaE8SE75aCImv9o/9m/M09bEK44fBxMmQTXvoe/UQbnXYhj0/zlA6CGIdJqKE0K/vMw6SS76q5fp8DGiJOXXCsT4oACOMtgyhZh0Nvj6lW6IlNAPeGdwZ5e56Epo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741941535; c=relaxed/simple;
	bh=t15iqH/blb3vIPWD3MDmpcg4OOVHzgnKYWisepUsma4=;
	h=To:Subject:From:Message-Id:Date; b=YAJl+Dou18+7kqVNzzIq37Yky4WzzoFeLeJzgH4gUnrcWM8kLbsm/D5mphtwZi7doGg1d1rFhMbkrRhtT7vq3TSk7ZhnDliNr0HZBVRFtf18CCfKjqmsbOtlrEa9O7nAy5PhzSbfRv1s8YbIa+A3cFa4OaohXzLj1pHAAEFtGP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC5aPigs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC5aPigs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BBAC4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741941533;
	bh=t15iqH/blb3vIPWD3MDmpcg4OOVHzgnKYWisepUsma4=;
	h=To:Subject:From:Date:From;
	b=aC5aPigsAx2P1kE6yYpQffc9jjM0umAhUgmpHxefazp00I5V8u2LuIk55HxirROpH
	 2u7Rg4zHjqlyV6cnKBgRzP5gu1OVjPfrrXSPbK5jWA/st/GgyCTUNrAarROaSY4w7k
	 g53sVp6q/w/uZn3g4m99hg/bh/W+Wd8iTuWPCfJoaE2fzoyk5Wv0JUP0nZHh+XZlIa
	 RDGhM8oYSPk5VQTgV6aAWA6lN36b000XyY7zu1b3rYgYFtM4SxIQOD7+nYRXyCPFcj
	 UKKlba9W8Me82xGao1SgGnLw5GKOxPWIruSFJ02cLOQ5G007gcVHKkR8W3VssxA+US
	 tpxKOW/HoAz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2AC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194153359.2113.13659684917693279526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4e990d253f7985ca6efc1e773e38b64f121ac07256d762ac48454e9a2b0fbb
Date: Fri, 14 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741941533
