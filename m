Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A3229ACC3
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760951394; cv=none; b=aq8f3gtmHM6C2o3ixC2TvvC6VmzTKVJw1wveNBNEhtZSg61YVBEfW1IVEPBJFCOh+zqpBOisAV1ngO/nMiz6g9WWjzfnXSI3EJMZGEwVhQa6EyvyUPX6UzrFFqS8gi7IZ7rX/UCQhH/N3SIgxkng2VaXohbgKFUzbcsukLNjiCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760951394; c=relaxed/simple;
	bh=cCnp7VU9qQVO2W+cUv+L99boH2lCHhOl2/F4/XbHgWo=;
	h=To:Subject:From:Message-Id:Date; b=eZMlKK0cyTc7YLsiZ/effRgTkeVOviFxKH00ZpauzmeaOTT9H/aZSGPLM4ivv0PWtNVf3BW0FIUSEOQJIuqH79932kEGdAVk858LlB8E0H4Z2oGzefsikWTUtmmW163vHPIarc2O/VuOZwM9GueeDWUwQ2bf53ZDsLDnXlRukJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOKqq3e+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOKqq3e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D054C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760951393;
	bh=cCnp7VU9qQVO2W+cUv+L99boH2lCHhOl2/F4/XbHgWo=;
	h=To:Subject:From:Date:From;
	b=JOKqq3e+I1X0Pz1ju5jcP0uUsMzh0CpSQwdhdP79x5Kapvqs0Jz7DG4vbgOYlShx3
	 5OiHtaUiZGC6HJbzhEy1tNQB8tbuth2ennb986xBeq2XuvjV1LbQC+0bPRsMHi79+b
	 bxFOngdnpkbfNhySvdugFQPtGIJ85lWOfkTV1W3ukK/uRHHpAtESWyO83qvLNY2YyK
	 zPqPY1LhZajit2QVa+URe5YlRcaPE83H3NFau84tXCF42s2xCC45wFvnaNqxu/lv/f
	 Y4C44PP6km5Chg95Ybb+CSi3BS8iJz1xYHGShRn6WQpPkilRv3waJxCDbTn83JC/tq
	 uEijj0hxBESYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EACCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095139357.18402.1296530584483192106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9844d9d15183acd0f150aa9bd09e0393554a8f257336f84a66152bf96a22126
Date: Mon, 20 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760951393
