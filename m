Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CA31FB1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782953914; cv=none; b=pcU+HY/aVdBbMGjYF4sRLWd9/nq9fAYpzvJ5LGAkKsOXEAHADenM2w/AJoUwMrIG/qPeGTi9+93cqWNL+lbPnvB6vMLIQdXgTr8IYaDu5gGBtGCJFJa2Q8vW+0u92DzL88ObY6ke5scWBjn8Q8nuhogap/Wt3lyGnkUNbBVADJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782953914; c=relaxed/simple;
	bh=XAlfvE78E46XUp96Hs4Evgm7OawhrLczuUMh9l9mLPk=;
	h=To:Subject:From:Message-Id:Date; b=i9wmLXpI8cFa/bMh+RurBTQZGO/FS429Xiz4L33K4PAEYGy0OzPLOBxXlGS/BjFuiJSgQcS/lrKdYwVLImyD2L1n55hwfE1DLrfHQ6vJaGT47bNY1YwDYDUsV05OnJ4twJuMtmmJ6rbcFIOJvF9fYQCzJjPAGfj9NIaxWvK1I0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK/weDzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK/weDzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E4DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782953913;
	bh=XAlfvE78E46XUp96Hs4Evgm7OawhrLczuUMh9l9mLPk=;
	h=To:Subject:From:Date:From;
	b=MK/weDzgZTMEto7HlJejl88u8WCmt35unoMgQ+0DnxMTxLkhcPlm3CwXyobG9Wjwm
	 zi6zQ9jJOrx0lFWRDWFujNSOsyN1j5LJHWCgtc8X7whfPLfQq0T8dexlpsrUNlgkCO
	 3MXcalRWc2IwOHH0JtPGMcclIH4plxceoglp3d04e9vLZL3xnaPjbms0d0MfAOKPzy
	 Ze+lKiAzLZEBM+cCULyOQIs6xFsLKIX9gQQ+qnQaiG5xESz+d0eUfLySdV8YVbiH1v
	 0oLg4PAJVj23Wik/gF4df395m4N+R9+4pzbsENdeMMooXwEC0mwVeTUdBwNq2LYWk6
	 LyiDbkmIQnffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4511C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295391368.5146.5303025498826175211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f9eff23ba477df4dbf8a1a41fca1f5a77b30010d7faed66d1989c828165b0e
Date: Thu, 02 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782953913
