Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2261018024
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766717634; cv=none; b=tE9mIkARSYQK1knpNREa7Kwob3NM2bzIRjNm+74l/oTJHG9kjA6XgFXQPNhXpH7vT6KZBJvkWBN9w8N/PiqVI6AHVOENwfovKgc8BPrBFCyC9IrsviwhK6tgS0SMhxWOPUXOvnO3hvaJpAT6Q7yEraXyZytybCKmPuKzqzBRhDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766717634; c=relaxed/simple;
	bh=KK8n3xT5vkrOa7bb8VzGAkSwRPu0u/f4D/Z5ZDnkgak=;
	h=To:Subject:From:Message-Id:Date; b=G4idVkBIujv/mX3e0dGqPio1yMy/F5Dm8a3sQMWsWYJCku0BYkltEKIwUS6YnnuFFivyn9VwKbaAXfu3qyLatph4fAVXVpDtN7nkWocdgcvdajEGNGROzetV/09rdOaBBa9mYf7KV4qpa6aE0EUuFLbKLZMOLxyXFO1wHHm4ng0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtprNp0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtprNp0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A711AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766717633;
	bh=KK8n3xT5vkrOa7bb8VzGAkSwRPu0u/f4D/Z5ZDnkgak=;
	h=To:Subject:From:Date:From;
	b=RtprNp0sWAtpkOuWFqptOkVPbheErFE/hWlgS+WsOH7cQucdisA4fUNMdByWfYaJG
	 YDK37uOoNZpZBdbU48Z+7WPATx3cOVuZgzCwtuu6fQkAMF/pvBUK5nJLXJarKaqVtC
	 aMJJb75GbIej2GQzjQ+7/AhLDjGe/R2hjlc3H3i0HUQyTLAKlgemIWXkU4fnpMagk/
	 jblDX3hWcgXJKIXxn4UGCNrGUn2jmNR/7x7VlWduK046AZetZ33kIkktdZysRCyoRl
	 YbWlpEDvB6Nj+cRnVxBZz5DsmVkares5/M/0IwQlVKAcCNMn0l+PxCwCnG5e9CH+XG
	 ItJ1vhGB8+Xwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94950E7AD7B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671763358.3564.16150472459047770100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b4d5104dafd00b069d54e868640df165766e8c4c4a81ea756cacba353083c6
Date: Fri, 26 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766717633
