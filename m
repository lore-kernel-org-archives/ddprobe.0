Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548402F745D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789006234; cv=none; b=nVh2/HePiCkIn9H5nYnK2NC1ReaqhV4BMJ8jUas2AHnDeopRSS2GE4PL5uadST/ETMUXoIi5JcoY/L6hxauYqnMusK3qCOHfnN5rLhKiBXePNENm37BC7hu8VUlLf5sp+7SAD93fbzXnWXisoYQTxFYNQbSgtM5zPjdUrSngq/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789006234; c=relaxed/simple;
	bh=8ZAW9stSgbT/bcVa8ADfrmoTD4qFGNQ7BqG/Bw6haPc=;
	h=To:Subject:From:Message-Id:Date; b=Fp+GZW/uSKzrf57cuSbnMw19JlKHSnV2sQ/I6t2bCJw6QcgVM+OlJ6ACe1YN0VIn0Mu82MwpHndhpGgVimesZAHzcL0yGikNyBrdYiFqa9lZFI26RbnxghFUHCrXfP35Ghc5QN+CT7NTkXNin3QNlKH19rmjr5W6h7T30DPgD+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om8PR7e3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om8PR7e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC69C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789006233;
	bh=8ZAW9stSgbT/bcVa8ADfrmoTD4qFGNQ7BqG/Bw6haPc=;
	h=To:Subject:From:Date:From;
	b=Om8PR7e3flLXUpVQwUoA2Q7n+kPlbOSBGbSudCEqyqXKwAtHMlWrJCp/kb82b8paQ
	 fPyYWAriUe12kgD/lPFBzuzeIzrl3AR+K9c5Humrm6a3uLyyhP6bVA2nmS60AnHATK
	 AGnK71sYQjKgrR7Lga9oj7Jv4x7S9iCCoY2gydp1O5OWvisPslmAz1xrhVYeWR8p2M
	 ViEn9TpNTna2E0NNyKuUI2Ab1o/iNiUqFQU/wtxffZgZKkech+pT4iaBbbIB3RuP1N
	 0GlCdLdVXnsE3OR9HnSOFeCwacFDfk3DgmRpHGjo/CdES4eSzju+JnHjkFM3BxcNPS
	 DqhxgO/gHzX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14AC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900623369.17947.2698102970492471338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee5efaa70396b8af4a6cbbdf5d4ad30b50f78f228a375fbc471bb1d74715fcd
Date: Thu, 10 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789006233
