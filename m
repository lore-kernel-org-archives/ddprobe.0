Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5116256C84
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773051893; cv=none; b=oHbVVEoYIRWhkru6L0JRL8xHwIDReXkx2XhjswdHKuBu8JDZzoQtGHR7ZcW/AuCKwuVpyidqGQaHhrKzyim1RSnhAzomRwOeiLrFTBSWPzU1IZ3E6U0de44LTt5Pe2l99V+l10M321SZma7CfNq6U9Umqr9Fy+ugOPDmdwvxCfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773051893; c=relaxed/simple;
	bh=agjTtKwpodT0/lp0NURY3m7ldCQlA32OuevmjNtyxlo=;
	h=To:Subject:From:Message-Id:Date; b=NCbbPAGGSdWReppFhQ/QvAf5Y1xKlHc84tMkrhqkQkNMFQck3WJ0VlLSENCWAhFS5VxMs2Ibs/v2uRkUiRuddmm27p8xFUYEgpNAkaPsI0AazhIeOrky25eEamybL7nHcTXlsggK8u9fdM0Ixvx+nGG953X/l2SYvixTaO4lhPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0ovJK/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0ovJK/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEE5C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773051893;
	bh=agjTtKwpodT0/lp0NURY3m7ldCQlA32OuevmjNtyxlo=;
	h=To:Subject:From:Date:From;
	b=i0ovJK/y6AMlZweLRciicQxuBmAMELLNq9JKsab+MMaUzOQqInzqQKJEnKDF/gx5Z
	 rUnC3r9qy8q+omsoAVZMqgKqfWpnkOlxO6sTODZSFJYfngA8SsfLSy9oEJvHzVmMcA
	 W6OkBQCapabMJ8vsP3+itr5NyvYxT2dgk0/2SGReFBp74JvCVGbFpEeWA/LGplB95h
	 c8vv20CyhgkFI23TUBawKyRGADlAiD5Qu25/+uIE4DwNtUu3oMH9B4418YkjiIq4qQ
	 e4CUG8PdVBvdKoQBjz9A72z/CatQV7NgcI7SjPLfLGvU2jvKoXJiw3aLlcW4srZA7/
	 TIAm6xTVb6ltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51FEFCD74
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305189357.27965.11423485386543582284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5082d2886b7813d68b37f4fb65201fd387b1293855b77b1a43f24c0d7efcb10
Date: Mon, 09 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773051893
