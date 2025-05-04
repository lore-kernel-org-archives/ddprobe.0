Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ABA154425
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746374395; cv=none; b=RnGBEJpwl2PQFs9DcIBaLtChjiRGleysV0qyW+sfTBoq4tEbz42vT+582IayVcRjeEGas81X6lX/dh+EVURHf7r2r6iioZM8gfEnxUoYtLWrD2Xa2ZD6guih+F/MJWSKWeLbuckKSSZCCcs2RDgmiMaL+aawDqfvU27ho66izWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746374395; c=relaxed/simple;
	bh=Q/5vGx1gTJHWxW/drqsEWKjvV8dpP++gaN/0ztdjMQ4=;
	h=To:Subject:From:Message-Id:Date; b=hQd+lENKmXjtsgdGVf5ZcstRCaBczO2uzRu8FrPiBJBrcLbHjr3rHyomKtq5nqr9lYSb+sYo71jkK/LpUTX3TrEDJZsstGPCWatRbruufeAd6xKyrj6iEyhAXKWoqlq4MLVIaAldw44XAeM5sOTY9utq0qSZ/HXoJpagS2+tRo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3zcNmR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3zcNmR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CEAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746374393;
	bh=Q/5vGx1gTJHWxW/drqsEWKjvV8dpP++gaN/0ztdjMQ4=;
	h=To:Subject:From:Date:From;
	b=l3zcNmR9rXBP6y/9RtsQQCQdqupRW1KrMpjznu6CytFAvEo+BwegQ8W3V7ymQxuPe
	 bAK5NNphxYyl/QDhHCyBmrBx6xaHVCERWBIAN6HWkyUjjSheb8o/0GVxByQ+p18dfG
	 owGoEQMenANyWqeQmduz43quuGIweBq1ryWZYM4eflm/+79wrwO2vE7yJcUyW7ueXs
	 pcHLwDhh1sr7wHP4tGE9v4f6kNsk+qZ7YpH4loAV6MUdTQcbNVHCOj48KiaNdgWXOX
	 uZpXSTKz39zTGAxtCCkeaBGQxizpUMIPWvNrLkAIptER6Th6SdyDrxzYfvo4UM7p4f
	 /4hM+REPQKPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA1C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637439357.28159.810576524120859675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5339d81121f36edf98ae5044bf29628eab263ab79ae81059b73a9aa117a50a64
Date: Sun, 04 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746374393
