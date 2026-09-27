Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6052DA74C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790502634; cv=none; b=MdAqYMButiIpSDTR3GWY4WkEJtSZNUCKo4GRJeJLS3nus4RSsx21KGr69sofqQ77XP/nk+30AQu7ELz9g02Ffz/m6p4W65MY4gXiXzZl7xSsmOxkjmYWG/grGelb2shANSPGHcXsk0NmJPYFySh/mW4gBoEwF/72z0ufKDUgMnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790502634; c=relaxed/simple;
	bh=wE5jAHQRON6onA43/xTNCFmhciXm78GZVywnlxuSZlI=;
	h=To:Subject:From:Message-Id:Date; b=JYmGP5ygnhLsdhvaXI2XgSb7XVVyoU0H+5ldilAkOCp2kJsFXNlbYT7fQS4Aih0nY77LMXY59nvzhk6inWYACX8SfFVETLKvLWWPLA6mXTxLnJP6mRu9TqhoiMEA0YeckWvk2AkIYR8A6AO0nS1IN+W7kU/twpfZFx73bB+SynU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkTXwUNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkTXwUNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE81FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790502633;
	bh=wE5jAHQRON6onA43/xTNCFmhciXm78GZVywnlxuSZlI=;
	h=To:Subject:From:Date:From;
	b=FkTXwUNR9uDUPNAkrgt9KBXvC9ftzaTQAsaOEOZmsaCAaY9VEQlGje8AGdMquLTg4
	 AzUrDEId59rmAMgbYZ5zuy5uwUGafEKM8Bcq0Zm37QdxWYF4uYpVUf/L0aZHNDXoqq
	 cAZpRi2Oed6QOic94+W2gzDDpU552scWZvlejfSXWNcD/fB1xzrbI26e4EUGPYhwGe
	 mOAaZFn+cMtli/O/t4Bd1H7Zffw5djYB3Yqja8EJiAY77d9u3locnxQlJYRjyilPAh
	 wqgHPwUdM2jAJHvnDpEaMX24Qs9Jfc8m57JzyUE5ckRWLUJsdhy3muABC/m1QJ4I8E
	 vlrHy7laDT0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC89C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050263369.27620.10858138687283930544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9c4e2d15605f73e0304edb0f6c0e2a3e48bd0343b060b339ffa44fad41e58d
Date: Sun, 27 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790502633
