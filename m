Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A4422689C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783370914; cv=none; b=ugyTkR2Y6BE0kB/zuap3WIaqssfbjlnDItnmMWnYY4Oc8yutk3kLf/pxY3oy39Jdn6dXgY4bmU1J7/7qv/pdH1jm/gl55QvXqnJdviZhMmStyXe+hwUMjdnUxJn484z8eFU6RG+iUvQAyM9NHUdBlsbGrBL649VldyE6ZAZk9G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783370914; c=relaxed/simple;
	bh=mcT6S6LNSC41KbF167Bos5kcFyv9DgwCuo7vHO1QpEE=;
	h=To:Subject:From:Message-Id:Date; b=SzNarWj+ycG60MlR0Lb9QitIhSNED8d2/jzmhBT279q4qO2z/wdYKdjpUALW8moGGC0iXckRa8XwDosXdLTcaENgnD5OVQicrET4Toxjh9gcdoUZF6qaM/sFUlPC99CAppjLaNxxP8/CeBSfcnjlnvCsKBDIfI7uPxtu+NvQwY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No3dcO//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No3dcO//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD6FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783370913;
	bh=mcT6S6LNSC41KbF167Bos5kcFyv9DgwCuo7vHO1QpEE=;
	h=To:Subject:From:Date:From;
	b=No3dcO//Kd4uHH+/TLLpR9skTVg/SU2+INT1zQp69m0s2Qfc65pC7nGLJoM9E1Lci
	 QQcM6l7yZ+kCLSVl2skQGUrZ8aLutWegwBKLRwZ7GfEoGbi8wr906ZZh779O3sHn2z
	 DJJb9BAj4ZM87STlEqAi1i1LO/YUlJY3jJDK4Cqz3OynlMnjSZh9kMTBy1PyyQAw/F
	 qxYqazx1n1744ZbTpDOSuCxJL69T+bjY4d+uvZDCHbCEgauJ1zsuLJr0Wms08oVXAp
	 4QdGI5Cq8PpOKgZX9xVJbHYao1YsYwAwUR+e6lD7/sba+Fe55htwyURxDeb0NxSrX+
	 rPrBNUTUbiG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E72C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337091368.19332.7839908332466995024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc54e10b6bf0bf5757422706e6e27a4eafac9b9b7c57a21a91ab84898623ba1c
Date: Mon, 06 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783370913
