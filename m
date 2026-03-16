Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10AC347FD7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773645294; cv=none; b=pZ3vjG/mR8sTlzidsmQBoZuMDUoLfO5qnaS783zQEboAujf81zP6UBfbuIemf4+Uq9aecRMNOwH/bt/IoKfQlPhAwi13/D7ImUgA4qWDPDvEjxA4g4oMKGASTapmd/11jPVLyZYaYctPiGWnBZuBE0buVg5UE5OdKHrZl3t4C7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773645294; c=relaxed/simple;
	bh=YC6ierBF8OlqLERARmxtDd4PU3E74T7TPS20jnJiqZU=;
	h=To:Subject:From:Message-Id:Date; b=b3epp2PKAVWPHhAEu0dCbLugL3YAYxmD0KfsE98Vj13fBUmZcuLA0BEH2TAy3qQOx3E+Oz8DXOKg2VejHJDX68qMARwfCaoYBU+4YJntGUtsIJ7o9/uiKaU2bVGALacKbAyaiV3NOYJLb6+m2KsH5+6BOf0j2S8exH/BlrPXoJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqL70a9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqL70a9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E28EC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773645293;
	bh=YC6ierBF8OlqLERARmxtDd4PU3E74T7TPS20jnJiqZU=;
	h=To:Subject:From:Date:From;
	b=FqL70a9J63vY2hjxKKrUb05/mM19sBEtC/JRkXry5FdNcboj0OtioMLxVor/KREDv
	 6GgUu3SEeR6XD7YrdxKMoSxkT9hbRCP+p6mVLI8tb7w4AwGWpH0H89CqxXYXLLesNy
	 b1TcBtRjN6Tq0u0Iz6cSlz4MT345DPC3/gdiOeH3ZtuYDeRFlQleRoL4AmJOJb2lEM
	 F9LQpjSeHxzj+kEpF3feWnwLpvadTpJwCq3hl+ssua2ASFM9DtKlsrXCKsCJtJz1Gm
	 EXp3X7w9RIINvMckZ3z9Wui6Fqsv2fzq1ZwUf/6AwRq3HcBr1xRwNOncWn1QUQQeH7
	 hEWUd3YAs32aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E46EEFCBBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364529357.15260.490081259135068169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e2e14dbf4d3b0cf66df3a5b8941dc9aef9f68c6fbfe4a6e95df80e2915697f
Date: Mon, 16 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773645293
