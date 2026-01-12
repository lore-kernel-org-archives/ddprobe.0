Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1126D2D7DCE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768236834; cv=none; b=LIT4+JcFQeztn2afug1muBbkuwu2V5lW3Qnnvrw0zGwafTZHnhJzrl1YPaAfIIRce2GF3UVGO4ojG23+3MAhvUcCegf6izP9gW29qTVSJ0Bw+vhQjti6xwqbPHBJ0epYQ4oZRD4HurIHoDm0rv2w8CMWdV1UgePC1bppjpEpFHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768236834; c=relaxed/simple;
	bh=cMvo64u57ExljA3TBIMqWipBCGBkXakyBUBJY4GUkp0=;
	h=To:Subject:From:Message-Id:Date; b=JSWFgxnK0JqMOmZ+43PcNMLGNk8eDW8BNteuZpkV1vtGDlHyjAVhVDjhjiM706P7h798qBGnUhtuPwkqB1WOgFTJNtbYN1a4pe7s5oRy7JJsMKBASZbvsctXjJtnMvhld+qLHxbRljpiMILPqlGQC8Xrd2MXnW/skeTjIHvNMBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVEK80Yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVEK80Yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B48C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768236833;
	bh=cMvo64u57ExljA3TBIMqWipBCGBkXakyBUBJY4GUkp0=;
	h=To:Subject:From:Date:From;
	b=KVEK80YhrYA4nR4LGo4rF3s7pDYxwPJWLAJAJARuOlLV0Z5B5yxO3TDuVOag3SprM
	 NtOCGfZTcK0E/452/wGDAfmode31J1ps98v6s22t6oPEzoKKenIX4Tks7FPnBTmj0k
	 IsddSCg7WUUW+cflQOejgs420Tigt2Zo4c5wP8qw/zo/3TRx3/+AkRUFMj1da96CKb
	 r9Gfh/BTL13aG5cv/OLNtaU6OOIQ8r4mJh4S5O9Xdobi6neVv0xXNaNjwaH99sW3kS
	 eYZ3NfVJSd3W6N5ehe1oSgVpqv1K6p3cgRKkh8DiwgTPATPJj3VGMSgZaKzVs/Aa8a
	 6ts62ePjrpa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954BBCF45AC
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823683360.6427.11069090586212976238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dfc1d5e7144adca2e5e7ce22fbd9c4617d3a3bcffc4f0d3cd7b389b69f8851
Date: Mon, 12 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768236833
