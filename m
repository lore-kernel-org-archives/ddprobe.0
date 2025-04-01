Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415131DC9B3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743487195; cv=none; b=WsKQmWS1GPiPOQxC3luWaQe0m6ZQXRujH7nS6Xo9BFt3YOO4eYTcXNYj+WyTvzPt3GMf0JzSc+Tyl5AvSi6vhsRNMPVu/IrPdz6coThuYW75j1MVFBIUoQtkkRBpSKmGtZq+cDs5ibMBf6Xp4hpGGYIMiOTY62jHG6nHtokemh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743487195; c=relaxed/simple;
	bh=W1H8KFiUSSJ1eRCoApQIkI6M/DB18dHq/u6iUE4uIfs=;
	h=To:Subject:From:Message-Id:Date; b=pRb8cy3BeZG2OA932SGp6oIXBCTs8amjqzr7DkyOeQtn7pqENTVhieCxSof4Qrvcd9IqJDU7KZ6aGLQIWyT2IXNNNzSCqz8gftkFABf39QcqzmEtrkx48cHqmiTHYTcbXx+uHS0xm+pwZ7ipuv/BBuC3p5wiS5UaDxP+mMoQ+qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/QD8v8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/QD8v8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39AEC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743487193;
	bh=W1H8KFiUSSJ1eRCoApQIkI6M/DB18dHq/u6iUE4uIfs=;
	h=To:Subject:From:Date:From;
	b=W/QD8v8mKN+h0kTLv6gGjfafYVKvmdCRVZCGgSHC3LsvsPFtLlFRyIIfD2/W5TFNx
	 xEXffzClrcMC2Hr9SqyiMLGkmnzoxcqFysmo7Lhvpkk8FOWNWgzjFTtRNqS3j3QaNa
	 MigGexrjxb5HOjJsG86dvEy3XE7lUlyUFxDfnZr4NyttOoMkwhJ1zZ4ZMiLpob+PgC
	 5BkRAzVsopb7j9EX8ectZu4mOvMCevgOA1No3Dnpsx0AZvyTtMM3+q01YP+QjWONjf
	 oZv37iFRtpl5Q8lHZJU25cbeuIQDcOsi42vqJi3U6EnEyit2HlbZaWlN580TpV++UW
	 x4y8cqe17Vupw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E036C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348719363.21455.1082985480284017982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3af482a7cb4ea6aa3c8d661c834658840b0cdb99729e8cc9af5e52b3ae421e1
Date: Tue, 01 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743487193
