Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2FC4A0C
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792310435; cv=none; b=GSUfLay+3IrZ6XjHGXM2QvTqYEDDgfu3GvIiK+F6GnnbHxK+pLf0qmytm5FmXgKCP2/GERJKIzml6UL7S25FpnEBbr0bgYmhb82/A4+YmE8s4tFOtJJ122VFZGY+d2BxFP+nQnZkprm/n2zwFEfsWHHEk0K2sj66FYjOOg+hjVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792310435; c=relaxed/simple;
	bh=1k1h4a/uDze4hvDamw0VZ8NqR8/i54LkBdFVC2fjZqE=;
	h=To:Subject:From:Message-Id:Date; b=tuUU6vLJAHHAD5pWM0nDRQMfn6NgIjFwm0fcBQsbfgC5YnQbfemoPwxwWD8Bwndbt0RYxf6g4bwXstFffgcscPcQ+xxa4davHoesLXr86WFr+/GB8btv+u+AP2OqmOupwsuBiZ+n3XdByVF2NMyJP+n8YqGSsAkCxcCV5xDfNow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJfVRT2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJfVRT2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC76C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792310433;
	bh=1k1h4a/uDze4hvDamw0VZ8NqR8/i54LkBdFVC2fjZqE=;
	h=To:Subject:From:Date:From;
	b=BJfVRT2u9oqaUtRSEOiR6apEXyuhGHhf0NyDdwDNsHapp5siwxqp351LdIHr2xdDS
	 AeHXWG7c05mwNDQAf7JhFi9TDh5u8wDHmbXGfQfN1sl1KzgekFSPaD/dFXXStaHgut
	 /e0RwcxXpfY6P9NBH2llUgsk0eN9CreHqg85cGr95zs5Du2XVttTS33r81maZFrcLC
	 GyVrNxuaShtZvEUQllfL6mOtGGehPz3GlPHyFOLsGGksRL/WkunZpkiBikLO8cCeU4
	 zfqQZo1aYN+i81LZT54T5o+2+lTkU9wKMEChtKHC2NMqB8uQCXDQT9GZjslNOdw6w/
	 v4Rrk/fkYZl8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A4CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231043369.6166.2090926774905499552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c1c883f50f83ecef7bca3baeba9cc9f44257f2250c9b4d5edc83d829c81777
Date: Sun, 18 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792310433
