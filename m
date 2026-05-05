Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEE1358D32
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777948053; cv=none; b=MbwiIr0+drfZQnJJg+2St5lwwIgzpoemVZ3m3fNl2KPuGcze5Al27tZGl1CxUxnQf6cnijJRY2tcfew9WHdNfhXm11SZnN9URrM4LkQ9ofq/6J127ZWsZuGjAqGhtNnQKV5iazerAznThNJtTXi2k/qeQTJnv8aqTr9fVnfkOe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777948053; c=relaxed/simple;
	bh=gSJ+vbad5gu9UTbtY1/gWVC9lA9CsbWl9liVGHBIdV8=;
	h=To:Subject:From:Message-Id:Date; b=CWtOXqHPWkpL+AO/fMP8PT5qi49vcQSA2im6172RGpY24Jc31meirD4FAOMZ/ybV0/tS/+uYHCNKv7Cos26nze3dwgcmpCqTjzIK9OAwQjj4nNB+Qc2uAQ8s7kd4Psl9IQ6Dwq9WJms118t12veT8mPRlOhqQ4AmYprdG6NB9ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6O164QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6O164QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DD0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777948053;
	bh=gSJ+vbad5gu9UTbtY1/gWVC9lA9CsbWl9liVGHBIdV8=;
	h=To:Subject:From:Date:From;
	b=p6O164QN3Fnc0mcbur2kAjcYsH5m1cYDhcHnZlBB+3BKxMPHtNNa9Oe8Kh4tfGr8i
	 pX0S66kn6ece7ohFZ/dAEkby+zMhl3SosApRO1SsPZnGv6TOFcvsWtcSO6Hv0R7Yrs
	 6XoVU+Z3qtNXipD2Cy7C++/RNWMqZXpFYfbxXnxnn+7cWyHs08QVIaDDEcqQNrgwMl
	 5rCKNSAbPimrpd8/8TkOPeHPhtMjKzJsYSPwDEQjI/i4b2fYi5lJxENIKlSYceOqfH
	 zqV/NdrHVmmW1I8UbRUyM+OeY+Tg6p522OBgdhCAVFi+3QfXBK2mGQsWTC+NV/tC8n
	 MRajuapbQ/7pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF238FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794805368.6551.9694691571220914614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15ca5052c0444458ceb9b7325ec73c453f220bd8e22a0bd7dc5aa45e9c66ff5
Date: Tue, 05 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777948053
