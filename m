Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D7026A1AF
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478114; cv=none; b=QhZNsYMr8ijbS8bh78va0smqNCzqb/d39yyMegla9utkn8Ou5s3VavRB9ema/gLHalguzrnxBH0pg25mCpy73BZXZ5iyqpPvnMQwc9ZZamP3IeMC4DKjlA1FAP/iZusMap/2e+LaJ1vkG2hSxpi0nvrl3BE2OKMVY3c8eZVHjEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478114; c=relaxed/simple;
	bh=NBr0H3F94Co3+4Mh1nlnc1FE493l9P5jpPMHv4ui0us=;
	h=To:Subject:From:Message-Id:Date; b=j2vanNR5p8wpojzlbe0915mY7VAzy6wq0ft6lrPbB1ya09gwTqO539rRX3i1nQ1OIgNnDVXdnWf1tPON743PTLWqtUoqD78L8jGjLi/HnNYN9b5WQFUPUSwbvbAg+wF5q7bX0Bg6GEAFxrtPBxNWbpR/Vcy0BpiUIngGNcbt6A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afxmzfks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afxmzfks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A63BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763478113;
	bh=NBr0H3F94Co3+4Mh1nlnc1FE493l9P5jpPMHv4ui0us=;
	h=To:Subject:From:Date:From;
	b=AfxmzfksNrriNVVzHUrwPjkEvhzTgcLXZ+jdELlRekEqeQCg7kx0T+whOGFeMlyQ9
	 vEpyDm3k2/Ve/6amA5pYb0bKBvY0mnCQy5M3jqajkbFJtH9T0BnrSaaYYTF4R/RjjE
	 OXAVeAKHFjPlnfyLid39BAXREVEubmqI1S363BxuITltEk+nDJIy1CBlSJhh1eMLg4
	 J7N9CuMhUr/Jp2Txa+U6e0tCb/yZbHrAbyh2pJ4oX7I0gHrsUfUp/HB1Nizp0tZ7pp
	 8AiFngc3jiJ45fjFOzwbgvJNACMWo/nasN2Dk+FkY0BiTWFbJ5QbIv534ri8C9YJEj
	 RwPIgi5rB28zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90706CEDDA5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347811358.25598.4766895536951846023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e6b8ac1458d55a19ae2e8344de368bf83c9a48dfc3c034d1bd0e18156d0748
Date: Tue, 18 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763478113
