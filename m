Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569B91F947
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717106063; cv=none; b=C1OtR1hQvkKG7RR572JzV20L4k3s5UKbZlLTO7vIjglrVq52T4lLL+CcQVUMLL0KHbnN5XTijv3nbz8s9wKUtzVEcPLJYt9i6zqwrtNGhmxeBpF2+6UsnJRC4/bisJ+jWvjjtj2mcEUnKcT0cNsoJ6OkwsbzDYOJXysk5FQqHQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717106063; c=relaxed/simple;
	bh=oebgzTVhfXqTQOdI3KgLWQ8sTW1tr1NYZ8MiNRDGOXE=;
	h=To:Subject:From:Message-Id:Date; b=H59kFBmmWP90898sc3AKFfdqDcOLYX6OMqab2/OuX6uud88hhRRKdlxD2BbTTwcimWNDSo9P+yxO5v4IsFGP6nSy0hliVXPaVaDErXkhzH8ohhT+mitPT4Smf8BhMrBqcaKPjBYmpiIIlMiwp38sgyyR6JCR+KXZ7qj1+lrjat0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r95QSPdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r95QSPdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717106062;
	bh=oebgzTVhfXqTQOdI3KgLWQ8sTW1tr1NYZ8MiNRDGOXE=;
	h=To:Subject:From:Date:From;
	b=r95QSPdJDWEpmruoh6knKd9yXrVKQnKrM5WWqAygQ3NFyXGfZzPJ9BIqj6gipGBrs
	 LMto7llxBbdZSwzn7MGg3UNk1UVBhcbwZYs794pXLBeM+ur9Q5Goi06p5rZ2tLBQ7i
	 nHnof25wr6eBv2s2VDF5k4Aqphu6FOfq/QaL8050TJ+o34ZMJBylQAzoEHcA2TrxIx
	 CdcXA56+hufmGgacgh2u+4+ggOkcLp1ZyZIV4M/5DlhsY1lQQQc6wcXF0qVQVkwDiS
	 I28Xszj1VcNHp+X+AXUpF9d2cI9PjuOuJZrwqmPS9+RQ3BRIZf4VUvXp/oVSUaUh0h
	 n+x0csv0vsa8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9B7C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710606275.25901.11797298703827899545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9aea8f84758a2b0481ca635f8145cfe3ff6a6c6aef960fde39d95154e35e1df
Date: Thu, 30 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717106062
