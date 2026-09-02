Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F2D49C4B3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788354634; cv=none; b=ufW27q8g2XcBMYDgTvIRZYYKJQR2yfQA8acvOI2cliD1oofmW3gng66ejs63E5jADm/rwRQXX+/OT5YmDwD3jE6Bvl+IendbJ0jpm2yxF4X1zJYxcVa9B70PgcDR41Fg2tN9Vzx3CfxKwLgvM625F/DjsFyHvB0LoYHtctVCUKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788354634; c=relaxed/simple;
	bh=elDDkuQb9vXCvvT7eSgN7d96MFZ8iZ/DRDkltbw0C+c=;
	h=To:Subject:From:Message-Id:Date; b=IPolr0L8DyfUuW+RHJqaS6QWf3rtVCyPRoauxSWkhkp+fLabTzuNbDlIkwnrQrruFQSrFR4lxpAHIsIl9H51VlzoPfk0/YXPej1U4jFEzav4q92NWMuePav5La8QNmWqOs3a4wsC/Y/AjPoZg7Q+5FDfYOosjJpk98e9JrK9u1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+CWkUuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+CWkUuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D5DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788354633;
	bh=elDDkuQb9vXCvvT7eSgN7d96MFZ8iZ/DRDkltbw0C+c=;
	h=To:Subject:From:Date:From;
	b=T+CWkUuOgGMQQBXwYrcCmDRVFGlVodIkyMCkD8877+F/JQnXOuAusuO00MYSGt8GK
	 EpRsEea0R7RMkhMxSO2V257b2uvkODxt0rQ0ixuIEw+BnBGLNo4HmFX6xRtJuEcas+
	 8O2EPIsElpOf2reUsT+uX6i8pq0Rb9Lc2JFLch8SW7EFbJlTkM4YzsMEAVZYlXat+V
	 urCgAc++ro4RB94tBExVVVf4wGMAkDBIBClG23LyK7FjL4qbNhXfP89hopRu5rE4qS
	 +1lGgzjTihRWL02yOY67gFGiZklkJxxlA4ISKl4w+o7z2zWK1vYtqK+FQ6RPgKAHSb
	 Ebnzd9eXXYxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA034C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835463368.26489.14999469340325591344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af774336e01f956db35b31acdeb69e088b1be6e25c62306d4e7ad778154e2f96
Date: Wed, 02 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788354633
