Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3951C05
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705451297; cv=none; b=sKx6XBDGf/UAsJjYSDbcaRJKfL4MTjrYWGby8mLwn0di4u+C/pxoz60jViOCgPkYL0yKhGMdDczKC0+simI691hunUdJSLFfPeiM2VSqVCRTIE0pIdwh27SsoG46SEL/BLg/xtdn6GMWZ7kj8E0n2IPWej9n2N+HEa+Lmd9pcRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705451297; c=relaxed/simple;
	bh=e1rSkKiuQblxp9627NUc3bXOVKmQA4VVRTkVNY/3ScY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=HsQNsu0rtNabmzwGbh2vgCnS3zTQZWrFe8QNFNlzTeRrelns6FU7ec62BLJvkQ/iiXbYPShvUUvPmBXMgu72b6zOhypRpESunVphLmDovpsQghZwhy73NS+luwPenTDKCzhoNfLR78JrV8fzXbIlD335dmsE+zROvX+z+EEO78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6FxMbmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6FxMbmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D269C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705451296;
	bh=e1rSkKiuQblxp9627NUc3bXOVKmQA4VVRTkVNY/3ScY=;
	h=To:Subject:From:Date:From;
	b=d6FxMbmZZiRNpUjgy0H1PHX5sqHxWJzBL+XXsb7zTfEnsrVOfU/5yBZSiN/z6S1XE
	 SLdRSDQcmK6zMjLMZAD41vuv5GBC1w7fC5U3uhkhOaRGC2yMrzffV/wUeXpinh+H8h
	 WMi9Lxia7wngFvdlXFICdvS2/SZtJZroAh5w5oljUVGpMfSSw9nwZTeWmX4lsCwuIZ
	 NhsD6AgimKqKVPh7UI0Y85qQoKrTX+GjD2lZ7JrZ/RRHVAxZdwt5JMapstKZlNdjZC
	 ncxwg7APhdHJqUTQHk87mZKIW13aYeQB44Hu8QUF0Y8+IPYjHjeJ8GoR8/wkYrO1qP
	 Q5Y0QrITkSikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C09C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545129636.15781.7872043711314587487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7e4832a3c823108672654d1f1d75ed5fcc46253cb6d2765d9294e09376db55
Date: Wed, 17 Jan 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705451296
