Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486FD54279
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732919154; cv=none; b=bhRRlA9kjvNPkheEwg9bXyUw48wGXqsDR4pzPvHyjIB2EerRjMJvlcBz1l/hWi5tvr1K+P3+jOaAN3qCxHoieVHgoiHoFpvVenS5CG5ii+TcTeTGSoAqS8Wtc0Obxs2ZnTkrlCvIDF6qfcrp8ibHRXlRmawFDfZ0t0U2Og2X0SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732919154; c=relaxed/simple;
	bh=AjgYMr0Du++1fGq08EQI+O3oibDtm0QUg4bsciZJS3I=;
	h=To:Subject:From:Message-Id:Date; b=sjfilqLlomdismxgkt+q5Ip2Z3qYEeZm3z0tzjoWl1o4xEY5cSS3NTfk3ytKyW/H6/VzG0l+7v/QK/Udbn+9rhvQrWvdgrEVExqdVrakNk4P8FU3/oKsM/ATbtEBFik0G3RhVTBtY5FV5uT1NvtXj5gfv/YnZxbZeFVPaike9zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuAyBmzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuAyBmzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AF3C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732919153;
	bh=AjgYMr0Du++1fGq08EQI+O3oibDtm0QUg4bsciZJS3I=;
	h=To:Subject:From:Date:From;
	b=MuAyBmzA5CGrhNB5YP8iFdx2rL8rZ4rxxyuNOojuCD24Iv+58DsxS5ZDqhZPN1r8v
	 o5I0icoS/eXm+si02kJACGFBvwn9c4fGbgWf7fi1OuUYPfsZzrzW8oNfXAq2yKsMVz
	 jS5NSNKFLoQRuLg4JxQTfA9QT7LCC4WCah76UfUY3Kju8vFX4ml/+EecHrj0t7f/8c
	 XjFv5svdKkzpLTghd+0ukQ+0kFWckK3riYZpOUCU0Ahy8jNxZsV5uunoVPaWlqdOsI
	 wye8y2v+OTYR3TAgp0Ajxr3fKkjmZO4FKZ2pkU3WJLaBE2wA1ROtwxwXD/n562qRhL
	 59ghWG2JL7QDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAB6D735E1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291915362.25864.14076958297268652510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62dd9e639544d34029133547a8e63f82cd64a3489a47885b286c96bffabe2c5
Date: Fri, 29 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732919153
