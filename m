Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE543A7F70
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788084634; cv=none; b=JwR9Q8tNlb9sH5V1YyCK/OX8Zh+0c1r0etiherqeaI+krGPv3mAJBLcqKhKXabu8CmdzjQXc+9AOSyQhV6vaiA/omsaBhEICMe/Y5o+YpSUTbzM4AKnMeETtfPdAgEE0begqb1fNN9EOzg952TUnSZlMao5V9ulNx+MksEownzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788084634; c=relaxed/simple;
	bh=BAcafolFEoBzyV8zAV4aM3ZxZkx9EwiXwqZFe2ZvD/w=;
	h=To:Subject:From:Message-Id:Date; b=DGTm50c1xIQbBq/74ebllCGDEb+/knIY+KKm5BwB6gTogyaaH946BOnrByzysINQLIB8cSg7AZnO03n+eY3C14d30A+kui/y3J8MYFdfvIq3kVeEaLmX4k8DMaMFmhbBZjhqT52KYL7MewodY04z9I4HoK4P53KVyv+OEOHudUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svA6eng+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svA6eng+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D812FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788084633;
	bh=BAcafolFEoBzyV8zAV4aM3ZxZkx9EwiXwqZFe2ZvD/w=;
	h=To:Subject:From:Date:From;
	b=svA6eng+6ActPBJftxWDafUzecWyTNuPtb5sc2kbqrobVGw6hjhc5xVOdoHiX2bri
	 nacIn5lahRh5ENSB6sDweqZmkmV6XEbCwpby1mrpoyaZl9KVAM3SIANbJe3fJ56EeM
	 uWynwtyKS5pv+eRHZnGPHPsYh5JN8nAJ4d2FpGeMagh3C3EmHtm6onyo+Yy//5bTSr
	 ur9rm/l+hbUBPXDGF0SEqP8fyOPYkoFvPayMFl3QlIhFLhoh8JjVoC3bByvFVkO/UD
	 vOtNw7XPSD7WqXbcTGtA6DtV3N7S527fxGwnQ7LDQP06aL1YoNNoBF7R4BL7E8qn/I
	 hTcYY422p7KjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F0AC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808463369.16000.2635304947624319513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5c84b2608babb7e2f52e734f8cadae8f1b79189adda9eb5c4fd67277f84212
Date: Sun, 30 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788084633
