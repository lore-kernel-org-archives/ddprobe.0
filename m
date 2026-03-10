Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148552773D8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134694; cv=none; b=aSgNUOHFCZmbg4c0PDcAj8ZRJ2dIZoQBG8KFQpHAEuVH6VX+O0PYcC31jQyODW7Qxo1BKk9nqrVefdNwcR7m34FN0/Yt/wzCL2MQgAcp4EErU1XA2/Ml9N6sNTMx5giFFLLMryEojemHAZ8Gj0IU5puzXPNdHlOsvyTzidi+MUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134694; c=relaxed/simple;
	bh=40d0x2hblLwJDpcGvzzn6IlYOTOznuAM18ysI3YxFnc=;
	h=To:Subject:From:Message-Id:Date; b=lTc7okE2FXNAfeFTqg5seYGOsrcmxYuZh1sbzgyAfmFTXPpGS/xQO3pfyTVnfTn3h9uhBjYHawGPtDVzeBuJceFjS/rf5zfP1YXoSZpiKjri6eOEbewpv4u+1b8ykKN9SXlf1nBu9YMKey/UYxt8cNpzwtn47lHGMMe91Afq1oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3XFEWHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3XFEWHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC15FC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773134693;
	bh=40d0x2hblLwJDpcGvzzn6IlYOTOznuAM18ysI3YxFnc=;
	h=To:Subject:From:Date:From;
	b=M3XFEWHE8oD+0938KwEllip1LdzvfViA1dniWddzrrSvt3iV0ihpnU8u7BHC+mdxB
	 tN2OqdBT5GeR+uDyXR6cyrdD7jQA5Sg3Gpx3nPrQcuULA18QOGvnnXQMdLUUiwthZC
	 pHsqsLzKuxlZ1Q9OtpBxIdkOiQE0BtpcE4uUE1h+4xUsTEqSMLJzVBDqVecc1rxy+7
	 9vnBpbdOINkkw5d+s7uXzd+37W1LqAY3LbOYTip7QhO7J70RdD6W/rg4OF9qiRR2Wu
	 CFBofTavkriEt0BjhWA9ucicMOpaZ2AYn+OohIoy7iUCTydzpbSVEbWDVadw15v64j
	 x3AFmlzA2S/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0E4EA8550
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313469362.9537.5434109310608132293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6fe47c653f01938e58c0f62b5a9582d40c561e63092532a12bc6001100be3a5
Date: Tue, 10 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773134693
