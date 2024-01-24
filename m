Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E5DF9C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706077697; cv=none; b=EELIa3SVv/HVtVqedpIV35S9m/lKHNMRU0pK9EKkOiWu+0+OnNZOmPiuihDXBaA/7OvDVfqq5RHI1BgysQwScI7H8nxmPFn1jNnTg9tvRhejTMDkU20GIScp/3WaMormYrRIkicRx+MFH8ISUpk/7943iwIo4n6OF2wcVk6Ar8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706077697; c=relaxed/simple;
	bh=iQhk/GzUUlrPkqkKIwRAmPf/zaVRtwSou5O4vjPLQjk=;
	h=To:Subject:From:Message-Id:Date; b=MH8R5a58Q0wUxCAZiQjjbdaL2DoyfxKfb9cJ0GwGgb+KLZD294kyuApwrmad9iuGayPzHo+Ca9fGI1PepA7Z2y1cfeGD9Sg1zzVWVojiDrVCws4Bc64K8byofwtcNhlGWuJAtf6NgpawISf1LPx2h5Mrrmbgua2fHiNvsfxjyY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZK7/twQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZK7/twQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B98C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706077696;
	bh=iQhk/GzUUlrPkqkKIwRAmPf/zaVRtwSou5O4vjPLQjk=;
	h=To:Subject:From:Date:From;
	b=YZK7/twQQsmfg5dRJEDn9k0gsECzBcD2M4QungqDo3/wWEe9tGbv3j4gosBB8uVoZ
	 Ms5QIw61ZXd/rgGAsOT3VjR60BMhBtt8aHQ4NQZWv4FOsYz8r39yNiLD8LExpGpKBs
	 T1yicqXSRHel0sIiaC3kzTTttAuSs47B7hzihh55MtpVwFFpGocyjb4Zr0yxL8wtoY
	 vJbkwflN5Um3Fu5hjqOnFI6v+071KjQ+UOwSlBBkCGZJ1eIy6usp3JGHvZ7gT33Lbg
	 XPwZ48aIaF25IY1mP9Vq3LPJI4a9P2iS5dwaD76BKLosBuq0AueUjenX8c8DvGQg12
	 byIoajf/DzewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC07C47422
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607769637.12743.6232117201551191097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69347545245cd7ca954b1ee86f781a95c434d54aa9bade73f738062d5866094
Date: Wed, 24 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706077696
