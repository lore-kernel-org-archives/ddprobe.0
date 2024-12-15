Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DEF374F1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734300354; cv=none; b=cQKbgHyameiEF/q2az6u7jdfRm38+LFoLNaXuCG4wKJsKiB/IcJ2/qjmRvwEP6ezRgF1nVjxqYjQKoTkALircTZBs6wsn/I740C2iyfLMLGAgDyqPousw/leqaQVpqpa72aW676RGhKwpQKujnOGQY0lAl7qcMu/loetktAkdVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734300354; c=relaxed/simple;
	bh=nQXkFxVPUvxtQkCsex9Mw4183Qcip/fNLshQ0k9eRE0=;
	h=To:Subject:From:Message-Id:Date; b=Q7Jz7dlFElMT5wnDN6EWQn0arra24WQjcKmT/8Po6vDLml5ejZOoFpfTPVPeM45eMjnvJJkgEZFKhKxx62XI7N+V90Hu13xviGpD4j+6x0AkT9imTsGVeCByXCaQY0pqhsh3fVhOuVIMk53NGfwY49TRm1d0zmTU60sHbwQlksE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI2fa10A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI2fa10A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02B3C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734300353;
	bh=nQXkFxVPUvxtQkCsex9Mw4183Qcip/fNLshQ0k9eRE0=;
	h=To:Subject:From:Date:From;
	b=CI2fa10AsUqGpZHhkc8B3MPFM2SJHlBCRykglDEDC/HAb+tIcW26g2tXOLaB4DUb9
	 sS24wylOrB3RG0HV/UfGh5JVf+wnbod4HMEH+YGPRRVFjBHCD4LCGuyK0Gk8Bou0O4
	 FhCae47D6Nc+ai8DXUzlBEmxzVkMzcmJ9LUGZL8gKVxsPbRC8qOHLXXCj4jj9NoQcl
	 hnYmzBSzCBzhHoQZNzPgD7jk0rk2aUoslqKDOXGQixFSZ/U/RfJQQ8JSTZ7L6WGJmz
	 BISrXlNYC1wId3VarvytoPN4TnHFcvLNXDO6YZvt/MJaC6hAJnlZmg607zuoGWEMcV
	 aWsqlw/t0C7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC4E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430035367.11906.12669767019340775804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eff2a1855f2ad066e4afc22ccb1dab881cc4b3a4f8332393dbf85c707e7edc2
Date: Sun, 15 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734300353
