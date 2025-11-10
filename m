Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F55A34D393
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762757394; cv=none; b=PNBFB7nPhZs+AOzk2u0V2fSkO7Kfc0e1U5C5ms0WoqgvsIbq//TtYeZky1vxnnEPuCh6GaGBy0Q6En/EZr2kUYyOvqtV+E+jkLk9rx2pX3hLJip7nxhgNmSalZtvUURQdmmhuAe03kqmUwKpe8JBbZmZBNEq7XpUYqKxtVpbW7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762757394; c=relaxed/simple;
	bh=VJUSzzJXwNvU4dHciM7R2X3v+6J6O5N8VS/shPCw0io=;
	h=To:Subject:From:Message-Id:Date; b=cpvURiLHcAnmrCHTewHw199V/E9fOj9bAauvom/ZSqhwl3OrfRPT4Cd625PMvl07PiJC0Sv5zcwdJvba22u+3IdNM75sfCT0/mb5v1yZhyh890XsgxsbZCrYowEJ521KnZD6wKgw0XTJxmsn6VBofo5vVd9ugL+z+MjFh3DYVr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja6tjTXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja6tjTXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EC8C19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762757393;
	bh=VJUSzzJXwNvU4dHciM7R2X3v+6J6O5N8VS/shPCw0io=;
	h=To:Subject:From:Date:From;
	b=ja6tjTXKoW7iupYspZSoJc4wgIT4mqXDCKlY7GLG0o1pBWWFiuOJESBNirBP71345
	 nKOsib0hI7WoSIyJ8Zfb8bi1vKopR8Vane2WWwVlgtTOmjOdIoSREHC3hcjopBnaCp
	 +EvYtbBcw8sIyPi8T2WzPWQx5bx/l3u3ei+HO13MftKhAWKj6SEQYOki9Om2IQdB9X
	 A5EHqJae491OZRrXR+YmucoX82B58On4Xnfjz3bi3QsBeyAD9XYuwS/0yDVXD4W66P
	 8HhuX5Ny2rET9katllQeoQsM//ECIperjgr8mpJNyPBuvQY5LlXjDlOMQLOW8I/HHT
	 NNlsfdp7B2LvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983DDCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275739359.5181.7223693875936118327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041d221628541b028c5b42790efc06a654ef7b17bca8f43cea1ed281324dd52d
Date: Mon, 10 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762757393
