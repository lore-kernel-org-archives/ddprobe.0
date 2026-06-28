Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477F73C2E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782633514; cv=none; b=PcZmesa1Rec8hLJ20Fen7qYWi2KwhY3EAgNorVB393mUQPPh3TYDRjRd9wljvIieAmG5lQJ2sUI5iGeVunZzMYhogJ1omjnB5v3ngTcIigu40HR+9giv66GcqkzHR/wwrptBdxUNaLF1hNBJI0YYO6O+5yXOK6KVuG8zX7IDAWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782633514; c=relaxed/simple;
	bh=wuzqV202T32vQP+zIcpsyfvCvSFc8Zm+sU+ABaBItmc=;
	h=To:Subject:From:Message-Id:Date; b=Phgu2EEmo8OWo84FAhV8c2++3hXfAqfq0LD4AuiSpDW8imUj3U2Eq3fvx4j9es0jtqCbPridvGQNcRXHiF+eajq/rlY/6I6tleIsjfmKsb3s+S1aCm/pmhRWGYesevGnI6pHFUJVu2FBtWGGugBeObskhtiFb9/z46TN2s32mF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ3JhUcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ3JhUcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3FBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782633513;
	bh=wuzqV202T32vQP+zIcpsyfvCvSFc8Zm+sU+ABaBItmc=;
	h=To:Subject:From:Date:From;
	b=MZ3JhUcZB1YDVYsH7an+SFtyah1A8TRRhnRcHQ9IdoshjqXAFUu1NxsA1rpm9RqYa
	 omLL1UNVEkx+09ABD8yZkfGg/lyU6ouBRBUb96pYrTgavnn0COctWDPhaS0DjZ1XVo
	 ZT7rtTCZa6U4cS6YfIV5jyMyfLG6ckJggaWjzY5pNuA8mpcaR7NEC9gOiN0lnpkdDp
	 lhmi22LGH0n1GNkPIejaGGc0B/2UJ++1vTJRyaWYcrYBNIT3O8mOo1tw3r2I9//hhl
	 sbYvSdAcZQ1LL1J5mZ+y4gvUuk/cB6N15z/m06PDRSYEQ0Y6DLgWFHHPeJmVuLvZ80
	 +I4S9r9+MwlQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3112C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263351368.19346.10434642393574239898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046c986a70d88b84ef4367fc25d1a10aa62ffa6ebadef6f80d64c94a6a54f568
Date: Sun, 28 Jun 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782633513
