Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB7137930
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762030794; cv=none; b=TMBbBufw3veaISwv2b1KphyjD1WHq5T/adSPCAhOzC95UMJlbMc6Ej0pf0EYaSpSOLEobi+M6ECwWernL30j3hzfUH3wng0ZU/5gO7H0KNHQoReLS12NAVB9dBh/7J7DaSHEOL2mzaZ5yiZz6eFNK+5lPBZDngMQq2ZzUjWKyY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762030794; c=relaxed/simple;
	bh=txHGNhJ3eAqO1LPzgK9KPxbatxggYt7nMSOj1k4R11Y=;
	h=To:Subject:From:Message-Id:Date; b=D2lw4ln0MyXlVHf5ATLt5essR9YRpbhdyshwcOlasknbVkCH2bHajXj2rY3etJcKYYklD0f1vAWki3n0tU4agIno1K3Ii9jWlSfetEVU7ZZvwW55SHTiNtHzMJ0xnDr4bJxYccQ1uK4NPsE9LEhk9TA7PAH3spkIzI/JXuUXkyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tETTK1XO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tETTK1XO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB398C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762030793;
	bh=txHGNhJ3eAqO1LPzgK9KPxbatxggYt7nMSOj1k4R11Y=;
	h=To:Subject:From:Date:From;
	b=tETTK1XOWo27LXQnLs4dDdNFJ+2y4nMryyyZaEgVUTCZU+4EMXYXyjAeo3YsRW3ey
	 ABsfaDApzzhYR4Psa0O1YkJKOqkTMHKpU+NSdJ2srNS8BqOO+WMkiJE80noUCT8oHR
	 zTZ7+oqczzkIbYPMbKPHonQD71u+ErQkNI+aa8NeQ5HMQWhbpJNwr2gQru83Ayqnlj
	 STONDR+3E1PFvehzgD991jkX/uVJm2x/sEdBdwytgC8YpHXRTDwDPyGhA9n0LjoglT
	 XA3TNxArZlt7lL3nCysBW47OUZFn+FDD3HsqzrnMj7UmICpljkRnzwhjlHl8dGwDD5
	 NwW1lfMbs5baQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8CCCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203079358.32317.809730028585374365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8298a5b9dc7dbabbf28569e405249a7556adc4e38dda7082732040193688696
Date: Sat, 01 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762030793
