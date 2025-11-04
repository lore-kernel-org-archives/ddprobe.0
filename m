Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD6E201033
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762236594; cv=none; b=iQVpGLqo0yEmNKT8OfvreTefdJpej1zaid0XmVNOyLgA2dn51GCSiICsDme4GR5pjRBE+nqqW6IAwZz/MvHFrM7b8bC5wHjJnDJSURzPHt9D31Dq3KwiM/0annZLrJunHNsWBcmxY3wYGa8Uw0liYdOVVSa8/SO82+r1tm5qzVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762236594; c=relaxed/simple;
	bh=1pWypTAJbXChH1czjk96BEcT+cl2RMT64/2KzFD31Ik=;
	h=To:Subject:From:Message-Id:Date; b=sbL0IWiwoBo0QkZolE4Qi0OEIDi/NoskbDpneIwBOZsQn28tIMGq5eltdzUiC8vR5mTX7jAhuAgcLy1/l18pvapeGG+8S+BBKqZ55nByeuZzQD0cSOEc9WuB5Vfd5ORoGsgZJhY1n+3plzM2eP/mw8oeE0+72vDEEiEEyEG7Co0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK7/R7zN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK7/R7zN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2CAC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762236593;
	bh=1pWypTAJbXChH1czjk96BEcT+cl2RMT64/2KzFD31Ik=;
	h=To:Subject:From:Date:From;
	b=DK7/R7zNlmfUdjyoLI5LpHibObQFBYoS1BR85UhNIlhhRdNoz0EfDiIg0Z1q8eBte
	 k9Sx2flniD/ZiTOLamrz/lQX7BaOhrhXBmgSIn4aGKZAqCZJud3HLcxN60RGGWjYrG
	 bVF2045wuv0kjpIdoxgQdGWm3ZpOZrMlBLqhaq+/QmQf6tHxgChw3eLQEJn837T1G0
	 qebvj7QYG7Ey9KU6qP9mpC/rJ3KtG6ORXEuIWAv2VlqzdaxMtfTRgxWDjrCrx/2laK
	 4V6mJgNzD/CorBlrvmbSRltTc7BRrCzZh4FT4eE67bRpXzDLHBDqKSpaWYHzy95Zzr
	 zAdBiLiU/GPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6BECCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223659359.10105.2061956104307363969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9f6586dbd3e47630d805c312d6f36b72fffda69af9a8370a8039c3b29095e0
Date: Tue, 04 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762236593
