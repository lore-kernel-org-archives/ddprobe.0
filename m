Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCEE54654
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745035194; cv=none; b=VNtMJgAzUKa+HvPNcBkEVggEjfzISj/Xub7MdsgFgN2JpKnnhqrkcYRg97owCnmx8dIO+hD/09pmoGnCh0DsH31MhbZZUCigEt77UDfgl0Zqnn56fexXffum+dVz1UGtOpZ9DQSTOlC7NrEV4IlDoTbbQm1R7S3e+WlrvyXDcXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745035194; c=relaxed/simple;
	bh=XRw/OY9h0SDgVnRTEn+zjzRJjivCFdeFucIXOG9DYAA=;
	h=To:Subject:From:Message-Id:Date; b=sr5yQLRdUC3O8SfO9tgEm4fUraz6DDKOWBPOE+AdCyWOY8myxMoR09QgwNIf/Bo0xO9LuuC/gmxWfPMaLXJJ5LOTWHWmtFO4Tx1IX4urnfHKIE1OBGbSt8uc6gHztB8yeCJY/7syAvG1X6xt0kRyDuHIfwtkWG+r8BEon65gec8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYZWOsJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYZWOsJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B3DC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745035193;
	bh=XRw/OY9h0SDgVnRTEn+zjzRJjivCFdeFucIXOG9DYAA=;
	h=To:Subject:From:Date:From;
	b=aYZWOsJ0HdY/9RQJ7c4r/igjTbnX9aHorVUjmPRRr3mQFmy8pRVWeVL3f1IrtVgq8
	 qoOL6qP/3nrwUPAdD9vS6Wo0fqgKJvsfzLV7B7MTspWGKcz7cGxeaGwPu69FWYRJht
	 tAlNobpmbfTok69UcNHBmHx+zeJYj7ueTAJJekzG+0H9Xn4d1qBsahNZX1pz6T3YQe
	 YahmNkmmQe6HBzQK5Ta5qrC4GGx7jOB5sB8sHCFPAX05fekzMqRkb70B3EmmYSrTUs
	 H71Z733bXDJ81qzDgvqXMTjhA9IZz0WlFPSVOGZxARrgI6E0TNEDaPFPcAmbJDE7ZJ
	 RvqfnnCXCrBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99957C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503519358.28526.8648268757573257354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d97212a615d9eca3f7ef2580aa49195df33c1f19c2471e1ca2b7191fe7501f6
Date: Sat, 19 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745035193
