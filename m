Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9E51C54A0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736001353; cv=none; b=WO+d9mmJti1uCRDoZejQxrXBHcNebicTHDP4tqBKOq3d3nlQ59pv4y1OUJSSvBAVPXwjfWgRCejSwontvZxnoEMEShL83MdPAUX6ghKQoiDQRFqQRMtqFHp/T/SobD+IDCbH0ywXNtYxm1SIfI1RzSWbZir4TPOTj+0opxwZqu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736001353; c=relaxed/simple;
	bh=5Rdm5tTDJ1JPMBP/0q/UJiaWfBj3BW2xLvMJ/ho0orA=;
	h=To:Subject:From:Message-Id:Date; b=BGQsGsdFPoURFrww9/SYr5M30IbONPc3LGfWO99AWMS6qaotO9n8+DgKw7BY0IgMx184EXHPhbEilS6qAj6Q0nl/goG2PlGe3K370uTdZx2nQSr1LL2UH3mBKNR7Ab5mbVSKy4B/Ie+t02ZPbyuNLOveju6TtfIzBW+QLgkU5LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7GxBxUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7GxBxUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB67BC4CED2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736001353;
	bh=5Rdm5tTDJ1JPMBP/0q/UJiaWfBj3BW2xLvMJ/ho0orA=;
	h=To:Subject:From:Date:From;
	b=O7GxBxUd6cyMeiXX2kylQoAyugrDWbw+kQKjGXZ48guf5C7+4eslkxlVQ6JoNSSgJ
	 Bi2l06SIenowJB+yDoqUoqsh4Tid7dkfFiVRFBsS7qOlsw4pH8vKYKaHUvJ7mDEGIF
	 f4nuxP45A3JeSdTjMOLzL0gTMAun5BdflSnjxlD+mRt+lnScq254VZR+E4+HyYOuqa
	 eRUCn02QKlPJwxYdkcJYzTlcT0D45mlPt/574kzUQX5aUrasmuM6nVPKBfIJe5GMa/
	 pYThwabQ48ZFZ9QR8ADzQcT9++djZKck4gIZq9izMuVPM0iauFFnBPm3nI0gdF84rU
	 T/BMgZm56l1AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3589E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600135363.26495.5220449389087221434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77dacb0e44c7e1b9dec5a108dcab523d06cef73e5691f1001a8759d7d13ed1a
Date: Sat, 04 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736001353
