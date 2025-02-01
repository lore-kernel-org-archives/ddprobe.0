Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4E83D66
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738434354; cv=none; b=RbOut9MyOspQyVd+TGPLL1JhVtB7VxKSBaqrmBi2N+iGOve655iPpV4xtjCER88/NhDWvwSYP0h1sfqaody2G7Koc8fGUUFw7iUD4WhXP9sdBtpOf6zCorg6N67Tbl1bLAuJyfUX7TcRGbKtWRcSkY6tOZWrucDNAkyiuFLO5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738434354; c=relaxed/simple;
	bh=+cv8F0h4RWjZUMu99SCtpfWdXVlwnflBffuynvjk2D8=;
	h=To:Subject:From:Message-Id:Date; b=OEKxHAPhjv6zPidFSSWozZTFuXFv3jdHojmsZAWjlZ9M7lgZdT1X78z8U5MewQ6Mr9wQpv3nkrOu0Qxl/w03oGIaHhxjpbyBtOPp3HSeVQLtqLK7WtzDuA5FS4ajjklIqOz3jVjBvL9RwsEnCe8sjOJBsIxcILb4b4rhgSlVRpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5uFmpcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5uFmpcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5371C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738434353;
	bh=+cv8F0h4RWjZUMu99SCtpfWdXVlwnflBffuynvjk2D8=;
	h=To:Subject:From:Date:From;
	b=X5uFmpcHCmzTKhXJy0hOcD3MKBos9HbviN0xkqI5iaj/Km5CyLbW6dHd9+jbSWnxk
	 lZa0v77gx3yEvvNU1heCstOC4rzCAd6jvkjfbZtJmyI9xEi5h+eBD3ggiot2qHcz65
	 k3vgL6qJXFa7DU1bNWz4kbKBdXlKKvyjO/aRgXRoBPijj7yFRUKWuO8+xdHZYaf9Jb
	 4AJrImD5k0rb/3UiI9s9Lli715VLTD6d+2z9Up336YSDObnBjM70SeI+phq/3FUvB9
	 /8/5Qq2RFlnfjbsyi6k052LRu6jwQ4KoR+wsXUVYiCMeAaXwKLZTqx/fER6Ag+CFx8
	 dSLt/5GwEu/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4520C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843435362.5663.12445106067041341800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b446b7618b840aeabc00fe9fd3e22d1cddba2992c83684651f696cb4f928adb1
Date: Sat, 01 Feb 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738434353
