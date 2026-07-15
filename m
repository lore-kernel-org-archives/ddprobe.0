Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F81A2BDC26
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784113114; cv=none; b=bP7uUM8VVf94ipj3MogybCg9XFaBtZZrP5LdQIhjS0Nmbg/w+JEhyl/82G2vcvIbUpGCwmwT6FY3Csi56e2UrpXgsbKY0+KVy7S9lYGiMyAwicacH6x1B2vYJTa/oUnY/de7v20KZ5JSsbLqGH78I7i1UHAWsMpoY0fQO3BWK78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784113114; c=relaxed/simple;
	bh=C9c3yWLgHqbCEbo1y75HKh44w/EW9UNdI6JWYcX3bmM=;
	h=To:Subject:From:Message-Id:Date; b=nUSDiI6x+IYBi335pTtbTGz6UAoXIJOAXqtEBX1XXios2DsXU5yZd+a9yjaaW3XtY/jmriBHkzBM9iB1od99zkL1T3w+XHSlOtQWzjoJdz2PdBVaYyNpuRoeIqy03xP08WBsYOe/NOVoMnCCgv1WfagEdOu9sBpmf7bjRFN9CjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0XNysBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0XNysBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1110C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784113113;
	bh=C9c3yWLgHqbCEbo1y75HKh44w/EW9UNdI6JWYcX3bmM=;
	h=To:Subject:From:Date:From;
	b=l0XNysBYM08iuPp8r5uGE7IxmaEJAv9bahClm6s1RYRZYgme06msgaDRazSk9b6WS
	 vJ3gj+Sk9nYhZQzOoLPSsoU+eHfIkBlYwIpiikLFDpJoWNTo5cJDoqzHU2k0NDlG/9
	 d2L3xFRvUnVakbryzoVSRFkeLzeDZ6wIXkhur/t4TDaqFWONh9SMKt4kz8ABUDkk9O
	 SMkajxmuQLxgHzNUOHgpRW1zf59l7sivVUvPS5rbyZ8UkP6VfaBvRYB/0zAUScVYoa
	 wxIbve00TtpYy8qA8bxhyEcniUrGdE2rjFuucF5jdRY+dd40Ocqwm06/+2y/UIxsT/
	 yrVrx4VnbZ2qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE26AC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411311370.31747.4201868073555200091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb2f24cb64bb3c90c74b62b3956e5771818280addd13c617787c49263e53c8f
Date: Wed, 15 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784113113
