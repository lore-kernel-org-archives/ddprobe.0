Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191BB23C8A1
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509994; cv=none; b=Rl11EMlDJglS7GE8LJnE3xVvIXhD1jPJQ7dg4RBGfNB9Rz7h13qSwEdAREozyZTaWDJy3hYYNHQQ+XOi+6aZ+b0JjTfn2SSHWn7jgPRO8e4VciEhBJmd65A/zp9k+PhfKeXgC/Cc7vcDAhTRXN/8VGGNxfelVCZ9m2CipuAP4nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509994; c=relaxed/simple;
	bh=Pf6q6kaZO1l6QSvrDmt3o91oU/AxRkJEJ3FRErr7/ms=;
	h=To:Subject:From:Message-Id:Date; b=R/Z+4O7B39DnNQs5KiyGgHvmpMyzkEHrxvHgkSIWiDl8HWABNPjnDKSFhEKyCL5l9dqhjItCGfxMs+QAn5B7MaHqlqNY9DdK51LSGp/3Y274buDvizaZizrTIcuk1IqhzhkdkG2wKU91W2LGlG4QlQ84WO6VEm3PGUrZb/xiIKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzaZaQEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzaZaQEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA54C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752509993;
	bh=Pf6q6kaZO1l6QSvrDmt3o91oU/AxRkJEJ3FRErr7/ms=;
	h=To:Subject:From:Date:From;
	b=NzaZaQEZ5XxgU8XeJsafKQ6vqXPH6k0i7GgUdNVJGeyfdh77Lkt9turz65ZRCnG2J
	 XYVAFffj5kvSesY8rQkv0FffC8jT8o+olgtZYKeGtAEHkCBbAkrqBLyIMru/bRVWuj
	 ZRK6QATtFFjvT6kUg1484q15tv+V99MY9YimrlVrI0JdGnzc6rOCskSLcHeSTWNpm/
	 UAhSu+a9EadY412V1i5TfepI0y1YrG5jIzhR8blixkPRzTHQyy+lJtbcZTI8xvkSwS
	 38hwdmG8OD/NO5UEU7qFw4ONx7x3eA1M9/kgQkK7qse5V30xKzDLkMchGPLyIhS4Ch
	 gWaPDNtWJ8j6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D9C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250999362.21115.1431867797288075462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f593dd43960acb3e5eae8c56709cc0f112016d962ff2d55fdd559c63845a93b
Date: Mon, 14 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752509993
