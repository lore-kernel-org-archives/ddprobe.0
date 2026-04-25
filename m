Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E319035F162
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777106854; cv=none; b=gyMh3Z3xp+witWTiQruNlFrzJPic2CMqoDVl+DUgvx4YG2nKMYiirAwGaS69gNFFvfBk7ywkTAgmqGWRoF9KmXz77rllysX8C1F1EN9u8EgtrM3pk5J9ZXnJ8ba+G5qDDyDd6XPdKfPJxMQkI2hStybLXsJ5cUUeT1ZarI/Anns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777106854; c=relaxed/simple;
	bh=lkS9pXJcFXt/itS0QjdlIyXjDh23RdKkUVEwJrXcOGY=;
	h=To:Subject:From:Message-Id:Date; b=ku+dt8x8i5bKeTOe4kFQadTjRfz5851Cfdbnk2Er5TxHzBYuHcxTTQCBwapALvlrCLX5XZor5bYD8+WXbtiNna0Scgfp6A/Vbv8TtWZM6IP1b/gd2wvt/UYifJrLJSLs7toUxBK77IRDLqdTgG7hiDImAv5kB9Fqr6TvpMXf4So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qirGKhKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qirGKhKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDFEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777106853;
	bh=lkS9pXJcFXt/itS0QjdlIyXjDh23RdKkUVEwJrXcOGY=;
	h=To:Subject:From:Date:From;
	b=qirGKhKwUGDW0gQEaH7hoYnh+lZV0cMoe0O5J7+9/AHMyX1Ju3UExImUQakJBQxQu
	 vSZl2ydrKIukMqH8a8PnNJJ4zC/+CuUo3RBKRN9jsAfxKMieCuMz4PSsQ3+4O0yDQC
	 yJbMHB+N44RNyj7Ayq+XKSAG1RUiLRGX7xDQZMZPt6ExbiQxbZIufic0hpkCrni8nV
	 g8FEraimyPKtDuKopGGtSejAFii+sby9HJTrl0buE3Q+qqtBewRqCnw3BxD5bsgQPo
	 EtgCN3RmW20jRI9Hh1csM68LxIzZJkHVroSe+gTxws8R5QXZKXlJuM8pV0FWX8Gmqj
	 yLg4LwdTt1trQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B2FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710685368.8732.4059857869062101804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5355aa0acd3e3f43abf66b3e452f855fc4f7e8d68cdafb7df54f292bc690a94b
Date: Sat, 25 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777106853
