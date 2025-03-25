Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7198BE55B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742896194; cv=none; b=bpAGl8LCv0o/7DIpypita+4imS+bj82ns0pKoFrYy8ycyC/Aa0efiPRC0ZvsIa70SdTi8hht1RSz3HiQ3qlyh5QXbwpd6Vf84qZy22mkY85B9feNN09P3eSTj5xu3CHKtbx4gjqILmQbt/PpcPNV/GdcYYjxPQp7rYskYRKb/tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742896194; c=relaxed/simple;
	bh=izjBV27xYA3JarzAeKB00RoerBcudzlfc73OGgim7FQ=;
	h=To:Subject:From:Message-Id:Date; b=UztJ3i+N92RjRDbbNOqSVA6Yq/sv3PQt/fK8TH2G3yriWi+AYkhexGoiqJNTKRRbynMr8gG/sL+Rpu+UTfH7z72v8RJTSrc7cKPbYfEvQ5qfU3bfLqduTyl82wobYbYSGz5cZcto/3g7s4Hyikz1JmkPfpE7GE0LMNdwFw4qaYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPSgkRY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPSgkRY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA585C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742896193;
	bh=izjBV27xYA3JarzAeKB00RoerBcudzlfc73OGgim7FQ=;
	h=To:Subject:From:Date:From;
	b=lPSgkRY0wCQ0h+9IdsS3V9IPGqVpnv5pZ+fAr64hPcyOHpIM/TkMGYLqElSftKqql
	 86A4dBqRnA29AB7FhYN8IiTmnrVJNJJwCDaMANCCtbK8IVHTPH00LD1eIeh1o5WKaE
	 6ptbAaPnOU8MS++gG4dfyOeuiolLmeuuydKIxXlAYuT9MBf6+7SiXEE+l4P4IGIkNy
	 nLnGSuJfpQtZK5LsWU5LTF6qpWRK/ox+dqx2GSUnKulvD7QVN+PtAdR8u9fjxbqBRw
	 F7rnu6HE30Ucn+rWPmcS5CWAYeZGhGH3tLy+aN6ebl5tTBdwoOUxTp3Gsh09J8xuTg
	 Ec7Q2HXdumAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DB6C3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289619368.12103.7600935443170916746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0d975586f8ae85478841a6e2997022a7f14c270800a98c4f885495185457bd
Date: Tue, 25 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742896193
