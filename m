Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B01F3FE9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765598574; cv=none; b=VdiOpvy6o+h4R24Tj5zcH7/J8gWi+AmmsIYLSSU9M59+ZHJDAVElriWqzFIh5+W1FynDV+ZTjSAuObUgemG7ViHhQtVkomNL/gJCycxm6Hl4pU/A8ENsg4pm+i2wFkQe07EoKW9fSR77NlfPgGn6QiczX4lM86XNTDYiCmufwnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765598574; c=relaxed/simple;
	bh=klOwww2byjHEGVgEFNcuomC7nx/XsWaH+Yz5Mr8JJ7U=;
	h=To:Subject:From:Message-Id:Date; b=Iof2CVM5p7coi2eF2pTpfGu86KoR+f6PjWwQ/UoqIJL+YHS1jkh0+WPedP1FmQA5sJivGFSFMLHm38tL4gzWrKCtpv/Jht4kn1HT6RPpIqGKtb6GnCQdiDIbOPyLGyu+qCdyCkmsiHk6ld1uJyVanVcj6l/m0c5ZtnqKAsdx1KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ8wkZef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ8wkZef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBA3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765598573;
	bh=klOwww2byjHEGVgEFNcuomC7nx/XsWaH+Yz5Mr8JJ7U=;
	h=To:Subject:From:Date:From;
	b=kQ8wkZefxREqG7+LmYXMQAyo+71zpkXOiZv6ni8FfA0+hmNOt14lsGb7ObuU5jCsE
	 y92sq2x++MDcoA+eTjFThVEcOoAhfunuhzSQhxZ8ZI4gRjC425x9rwfzazcypPIy6D
	 YXgEA3yXbJtyHXzZq+mTNziXyuhE3vmuXVOIg3iSc2e0cfcX+PrWEhbWBRBf7/ii0x
	 kpSk/QHemrFx4UDdgNKaIUesG7EYM+GDJYRdMknuEmYM5rpeguyEF8LnSEe1XYANFm
	 VZ7/+HSEym6iTAPQz2OsFKlePLSquA0spVwWzWMQhy8Xbq37URC+ThYuhPCfinpM07
	 UW2OwnvlpXoPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C700D59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559857362.25288.17407099986319176354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336245332738f0fd4619df8bb679cadba97664e1afcb5963342a9472679b2d12
Date: Sat, 13 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765598573
