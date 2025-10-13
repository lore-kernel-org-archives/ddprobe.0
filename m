Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25C20B21E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335794; cv=none; b=bnLA/U86DRsYmXipbzJwXgSpEzl8S5R0flj/IfcYRCOlxSv0DWACfVtDygubiuQFYWRXReDiqOizF7UTAp+UTLAiEhCuncHR/Osmb10A3VvYJP7gVXQSuJUFKfLimWbDvMVvgipXN7FqzQfN39T5AdgW7+/u6L/2KleIe2zExUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335794; c=relaxed/simple;
	bh=o9LyUbJf8mQOum0BcnmcKtMpglN2/EswoOU/lJxEzrw=;
	h=To:Subject:From:Message-Id:Date; b=Eigp0YHxTvyzoMkRB3W7598Whjod4leMlb3bXg2H1yarfpcPBskK/jx++tHFZ4oHAIVYfy724Ic+ecz06EwSk1b3hiz4zTkiMSwd+2oJTiFNy8kyhlRg8nHl5uD2AA8y0b5oYLJGL59WfFtjEg/kc8xmHRRFty5DeAqmmqi7vxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXfrN6sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXfrN6sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A6C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760335793;
	bh=o9LyUbJf8mQOum0BcnmcKtMpglN2/EswoOU/lJxEzrw=;
	h=To:Subject:From:Date:From;
	b=bXfrN6sx919HlItn5lKAtn9+BOjjkN+9260x0qnT7q3AlKgm3Jy5WdnYDHJrMk7mK
	 zyvM0YqI7nnJOXSG0AkxKzM2aejDZLwzClrzrVG+j1HzDQnYBHPxLt3P8XCDYO2G4I
	 oyhVuepMF1IjUal0eoCTiRfb+ZOxTIfxdN+ijhs1mjd0Z98k8Z7g1PwsvvnsYX27TF
	 YFM4QTBj6z4xqD5LzjkTikdaCRHyKHH3f7XeTxvOGxsTUaSBnb4sHoloABgw3/Gjkb
	 ftXgSwHcrHEzJm0COp0cicsxz0inwHn6Ua41nlA5XkseVni8jqZzppbJIxH1PZ0pTP
	 YeXDiKOJKw9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928EDCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033579359.8132.1783436341516835825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd72e338ceb19255f0a8adfe4af635c8d20e96dae9fb232c7dec9b4a33aafceb
Date: Mon, 13 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760335793
