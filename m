Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528861DE8BB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789869034; cv=none; b=uGtwiaICMjHlTDjj7h45VAY3bEpJBMa2w8OMIwo0d5b+P/9FgTNVyc0qw3MU7AfTcA0anIMoE6Ca632TE07b+8TLHCVB9P+0i8DDhj3TMahPp+K0CdvLdrairM314ndEQjXJRJuwRzRaPa6qj+dIrqrE0tkHhIpOZW2OmK6SHUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789869034; c=relaxed/simple;
	bh=fR68hJ5iAEY6StJfwWrH5NF8fIl7cCjORrzRX1+jARc=;
	h=To:Subject:From:Message-Id:Date; b=Eq2DI/bdSD/ToQt9AfjBG5Z1SMX93IpP76U4PzyZLgN9d6edR+3RIa0o0nQ03jmVQOcVQjW8byxKiT4GZn7xhmIlqFg3Uci+pgOJkFGZxrj1z8r8uMvxZNxRyM771Bv5QCeBhu9ZSSLtMeB0zPpHVWGZolLY25uZiB70GaOE2W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+Ypvvz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+Ypvvz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA40C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789869033;
	bh=fR68hJ5iAEY6StJfwWrH5NF8fIl7cCjORrzRX1+jARc=;
	h=To:Subject:From:Date:From;
	b=W+Ypvvz6HiFKIOIspPQwvzHKVBape4GScuvH/PnDbGgYiKb+X3OKISIai65t9+C4a
	 vEPPAJsi2F4CT2h1r+PYUV/1CysoUfaEsmyIis9ZKQ9kktBlUXOpU6oJAddoD9SpuS
	 AB+UzuTq6AN/Kkv9D1cbzpCBd3U6tCNnlNexFF0ANIAYKpWoq7eY40+S9h55GGnQJK
	 YTRLgS9DbWxsmvYcdLR4E9YqR0EDSxMhcmqGs4mknsTqbQ7IrKss5s5AH9uJvXLaMM
	 gUzHB1bHClCdiOLB7HDa8YXrDQ83b9O+EhJRlrdS/ORIj15QQPS/kvJgYGzQjLMY+p
	 NG20sFGHoCYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB70FC982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986903369.18435.4094131473097126700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76065e036db9930b2ba10169f9e7cf164efe34b738392d00ede3d965edae9db2
Date: Sun, 20 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789869033
