Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863E92E859
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718920223; cv=none; b=Klb+AoWjHpmWDHkorVZZ+F0B0MGsqQJIDorX80ysyd1nz2jtkb6hIml1KQ7VJIXDYs9uYaq41iVFaKVJ5q29GxWcDJc4/pO2RO9AnjVEs4JHHpP9cv29AxnC2LqLYU8bQxpNBU5/HWt/M5BM1rqq+cPhzUH3w4bPTJHTxWsfGMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718920223; c=relaxed/simple;
	bh=tgVkL+IudWocYBKLw7SnOiuyHoe16Fm2I3TcFS5Vgz8=;
	h=To:Subject:From:Message-Id:Date; b=jVG8K3BtZAyerMgDWmMZ1NnuGXIQPfGIdAFmsp5pw/DYUMNdMdfdylbzlSV0IIeiJz+U1TwkBqRnHvCOpWxsRlp4mekiwrcT0t/xbmMguKPRM6w8gJh/yJlBpQFi+neAT5Q6zP4sIdkd6JsRmnzxaR0PBZEEuzHnuaddS//eWB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8o1uOMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8o1uOMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D1FC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718920223;
	bh=tgVkL+IudWocYBKLw7SnOiuyHoe16Fm2I3TcFS5Vgz8=;
	h=To:Subject:From:Date:From;
	b=n8o1uOMOtcDni3+TFrSvsbSR4s9/PLEAm69q+9PTldYam2bsiooefCeMDq4AbrpLf
	 t4M6WjRqKViho6t5qACrqlsOk4BLPlEus3pIJe1Awbh8h4XIVQRwXFWAtfEfLrHyRi
	 r9RN31F0IbXsLbjBC2sqVqUloiyj4jyY603koKEpUIGxFMjWSwe/V4DZt2WrT9bngI
	 BLdajl28WInEaUKeBWiov1KrtonztLgH8CDN8F6WArEUTf3mZLQ6AMS8zQ1gPu/6bc
	 Rn+QHkWk9vUzWNwTUqJiDd9FvjsG8rqYzvQqaHwD9FBNauhAd9unJBgbEqsjnKe07K
	 mp/AB0k5ZZ5oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D630AC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892022280.5003.10696481017049319731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09803281dc54b471b792048cd7eca5949a2ed0186b56c79bf237273d10ff4992
Date: Thu, 20 Jun 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718920222
