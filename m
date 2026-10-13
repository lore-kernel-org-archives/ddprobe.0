Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCDD55409A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791925234; cv=none; b=q+ZX4H3pgBMtCPaLHy+zJ6VRD7ZPdJSNAKqZCrNDlTZBQAvN0cFdZrG8cXPzYNl62hjM5LgeE5PEeDZ1sjamlYkv90tS5OnqnMdjaAA6qd4xylsmJE7BfQvpMaXfVA9P0/lcQsFmQV1+f3g50XzemxMe3jgszNlTmP1u9xy1f54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791925234; c=relaxed/simple;
	bh=xhhKiFKHZhNTBw4j52ex85eSsDSaHzmaiYWwL9kVeL8=;
	h=To:Subject:From:Message-Id:Date; b=SIU1Et5ycpHzvrer3FwH+M5dzwieaYz3gN8O3PtUJLvimL44gvbVodkbvdBFTXpMir2+dA7euWOhcVh4vKvCBTTcfkYyNy0AvH/FPwpEU/r+69Q08cm/1lWMHGzpqBOCpbN9vW8MAk9uV8Vhl9xkhZOZxEhSrPl1LppY8VJTWBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVNvpZ4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVNvpZ4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58CEC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791925233;
	bh=xhhKiFKHZhNTBw4j52ex85eSsDSaHzmaiYWwL9kVeL8=;
	h=To:Subject:From:Date:From;
	b=ZVNvpZ4MG5BVy+A1BTpQThSi7813V9OZqiD5GekMpGe1rmodwPVA+YiygYS/zmpZP
	 rLyD4hs4+BuCV/7sRwn6G4kiwj8hPkt5VUf3+komfcBGnrJYBx8s3gls1BwLhCg4t2
	 svRpzLgYuAfp0U8LSfgcGCaV0/b/WWtEmIDGJSc7biZnuMadQ1jo2GlWG1pjhnjM5E
	 8LAGaK8D/bIkvrYN/w7ZlyKnCzUrViUzs76yXWOItc6lEkbF5tHGb4kPyLVYJGT5KQ
	 kPGdgfxghO5xC4CORkFOE7rfExZPvW6M03ZItzNZ2a0HsRiYrR4BT+YBBecqk9TLN9
	 hG6/NPXNG2szQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF1CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192523369.18593.13559841291948584813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fd93154bf8f59b12ee06f6e542dd93fb7f1402bc5fd5c923c81348a23a195d
Date: Tue, 13 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791925233
