Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6962A10A0C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716840263; cv=none; b=rl+gKT60emq715/vs0RXnY4HRcmk/ZYOpBqtYBPul6fn4N+e/Kay8WmzaL3m5cdW3ABDq+31z4xFVSmIy3PWAX+9Fj2WHpWthKeOL5dcGOiDCcYowKuiMqYvxL6p7LkaGC/3fhzvpESaJy2/zyNPetsF1VH83zr9N6C/xE34rx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716840263; c=relaxed/simple;
	bh=nw52fwoEcUdKmvz4Ph+7NXPpRy5aXATgftAQakKCOiU=;
	h=To:Subject:From:Message-Id:Date; b=jHo0+xn0BDeACerdg54gW1qvyjG3CwaXHP+I7S3sfz03z1A8LhjGiChVl7wGcgQ5IiQ2ZfCi5AN1jCTDqMuo9f5dv/5Il5z4Db2a4Jgn/wFCTtdL+I52layzeoENYHvCKA18/qgBroFgjiF609AaaV5HGXYtPy7I/OeEwg9vckk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBYxKaAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBYxKaAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8DAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716840262;
	bh=nw52fwoEcUdKmvz4Ph+7NXPpRy5aXATgftAQakKCOiU=;
	h=To:Subject:From:Date:From;
	b=BBYxKaAQfdPxvTYfO9xnixw4+YywPkVLSMoLzXAoRzlPBIkM+LfuY/jyZNcgCpORa
	 kq+bc8LOEgZdMRkz2MZ5C3elzt97qPkSwUIyBCi8G/yuSvoqTss/fMFTnf+uasvnff
	 H69DLv4KOBJkUa2ogsJSVnXPN/WX0mpdnv8iiMSiXhSFJK150Yw8qMS8iNslEN2bmg
	 zsie7w1CmasX2mAT2q70HzVd59CzPFnIQJIa+3XWKLUX+cwp3QGrq6WzyN6MGV5Mvp
	 oJjQ/ZKw1wEOyqGjfcZFXeaqoa1lv1/DZ91Afj4lwu0GUc5kf1YHz+gi17YMJ8vrrS
	 pIX7jcROld+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A4FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684026279.7830.15684300652730940411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5ea4b0981728be66c02c459c9c188b35c328486aedf6c895fec370afd237c7
Date: Mon, 27 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716840262
