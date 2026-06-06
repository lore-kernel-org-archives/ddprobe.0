Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B7772631
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780716874; cv=none; b=Y+omQRWrQnhcLkP0SXujSSq+t5D9xszzcVgHgJzQ8U4vpjduYXGnhZGw0AQ+h2vnWap4mciDH56NArE/fHF3P8/5spJITGUy5F2GrvhvLKh01z74sUsCJrrU+2Rmi0LA6vBoZvkxwy+VuqYJYWFdRUiZI3VWF1mG2YyhqPGPi/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780716874; c=relaxed/simple;
	bh=oW2avGK7qeJBSjaXW/ssUWnzoSwXY/TiXbl+JqkZ0YI=;
	h=To:Subject:From:Message-Id:Date; b=L6TWO1g9uLH3GFUgQoK3SHsEwtClNbbawGK92kqtWSQBhTOh7e14jJWPV4SfeMdxJKTQx1NjBhKGNaHhKt6ngxIFzOlmsLu3aiT0Eryjz9GFEjhaq9ru+H4/mqFaB+5HR5r6GW4bs5X6QhHBcE4BXQ+ZGKA1I/QWckvjIT34o2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it9ybWW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it9ybWW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB624C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780716873;
	bh=oW2avGK7qeJBSjaXW/ssUWnzoSwXY/TiXbl+JqkZ0YI=;
	h=To:Subject:From:Date:From;
	b=it9ybWW8MCIqvhGc154H+TYhUmtDxlPXCALnX+1xnrb3s4sEgnrA+svELN1EGNXeY
	 exKvr/ea434WQQEotmNYHUL9QDLn9q5wdvVZzvsR+o7lHMzTYcm6Lcb7yfjlNNK5FF
	 3KRLePW1WOZDOgtEgbjTz+t03CavQveHCJM3VxW03IIupdAy5BXRsfQFvYNVAAer8e
	 SCg2X0O+F1vAvMNfQaOjrM+PgOhML56iJ0y5qiemHe2MDbo3RsWJ+xalvPsIY+bOel
	 gstP1pr015wTD2ESJfdt1YU+zXphCKQQIcYt6RWUXeI6UDdmmG/a82NfvH0+1951fd
	 TmZ9g3JxiLv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FBDCD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071687369.14360.7027757562765193969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f57f3b7cdb95c79ef132345c66524a0691454ec790d5270979b008df9b2a5b
Date: Sat, 06 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780716873
