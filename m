Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C333B841C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783507115; cv=none; b=Ss3salWMBAQllqXdCRMm+bUaFM+A9pN8H/d249j7tRF0TELBwCq0ymZ8uRsBCHno3l8n9s2p2plbwrf8LObUaSQY0pxno+F3LyVLX2alIc2dm17n1U+8ZHLhMYIaGvW0SnC96iABr0udd7wCxDgn4nNnzejytSgRmLGJmBbwq/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783507115; c=relaxed/simple;
	bh=nS/qKELUmSh93ju9uuijd4JXdmSJumxEvP58zUn0th4=;
	h=To:Subject:From:Message-Id:Date; b=Ipw3QSe8q5B+LqPXGrw/DRlkDH9igkaxgYBNl3aBgdTACYxQH+ZncKqZdSKhms4BBo13unDYeY6tl4sQ2phTa2UaILePX43XHAjvkU8toec7A4wTuW9McIE+T+ztsQa4msRYEHM4iOtya0xTdlvGFPnuPn2Tg8dRuhc3k1j06t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGmqdTia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGmqdTia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB708C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783507113;
	bh=nS/qKELUmSh93ju9uuijd4JXdmSJumxEvP58zUn0th4=;
	h=To:Subject:From:Date:From;
	b=OGmqdTiaIXpSZec7VlnGV+JcWtMUwCZczK8quslERgzPBtvgH+f4c/kuNCe+qLo2G
	 cgbtqoS/f55mCUPz4uozLV/25zci0XVSkzrXO3N2mJ0I3EqbXsC98qcmClrTq9Toa5
	 UYv/P1dHMyeW7TlJINBCEvYBsQNK6xBhAfinp/HGp+uqVE58g2/kedxdYP0YdQvOPt
	 NhxwNojx5UC42woREiB8LUVcsvw5onZxMXCDRQx+F7vYre6pVqzGZvKGVuXn7u/FDq
	 /OEsn2ZsjXnaHJrmDDdl9YuJD3d7XWll/HwYfF5JgCQ/GBoqFj+YAmjyxM/kpy+KiW
	 TGYL+GUlH9ipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D6C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350711368.29504.15021879980762596777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271aaaa09f694b5725ba20c37f47964dc0178e6c9887244b7ac60bf1583ae497
Date: Wed, 08 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783507113
