Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520641DC9B5
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747057795; cv=none; b=qzU9cfvX2lJqet+Mao1DZAPvQpiVAB7dLYkdAV8VSqTfj8K3YotyMhy0YMT7Q5VoEWzMcflsOiXA4plIekoE51paSZNOjcR/2u9w8p3UhiWULqdd0C61Bzwr81TnQEUVso/dhueAZpOrFRyu0HXUzz8tp1DV/nnIK2DmlVxfXT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747057795; c=relaxed/simple;
	bh=RtOre7C+KFV/xBTSu8cZCkkLItkE/v/Vf6mSUeMYjTI=;
	h=To:Subject:From:Message-Id:Date; b=L7YLUrnyt7lSejhPLvbIMhNOcin9crNpcWgrYraDgY+TtPrDSPmTbfPwdterOFgnwlyfsWFGvZOSuoA/IqsPjSAL0geGRXkU9Zf/xkC+fmfxTjEyXif2HbCobzfdCErX+uIZy70syfgNV1WLyNKjfV/Vqd8KfkW5e4Lbe+V9RA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lwd7P1S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lwd7P1S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E31AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747057793;
	bh=RtOre7C+KFV/xBTSu8cZCkkLItkE/v/Vf6mSUeMYjTI=;
	h=To:Subject:From:Date:From;
	b=Lwd7P1S/AyOHru92CFd4+CbIBjd3rb6KM/Ghrr8evwHueSZylb/jgZNjTPtIncHl0
	 f10lLgACMlMvOCYeIf8XCSV93uyhi/UUvZJPybC0KmalOX3wPbsGkLUipwGEx/vym7
	 bf3lOxuFiPZZRTnF+U5Z6mzwsHSbLX8v0QcEXszEvpUK01Im6r73/P3wDK8/l7f72s
	 IRXo8wS+yscsjg+6kjuA4jMMYjfTXUBBkN41XjYMoNqV/obZHQhNEja7EpfhQyqU/t
	 uRxi6WI0K3Iht2ZQ8JA2Sry/EizIJV+emyw6WdcB7p3KOwAT5voRRMlYTF3EbO7zW0
	 /neRxKutWqywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D8C3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705779357.9314.3750270013156812000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4089288c2d87a78a10c2f207d2cd78972a4d8a94fd8660f255bd8511876acf
Date: Mon, 12 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747057793
