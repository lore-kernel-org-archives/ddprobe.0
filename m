Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C59C2367AD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758705594; cv=none; b=DCA4LHTi2mGDeHIdbABinIEqAJeJ42Wn8yI61jgp0xPK23VTbtzXaftxmd+jc+iwoGQZ8Kae9UW35IgEjF78kaEad3DRWCKCzkYYAd8UhvZ0hPAp1RacoVgr6VC2N0+YJJSieUZ7/G16SU0TxXfzlI4b3LzLReA6pgaaqXYKbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758705594; c=relaxed/simple;
	bh=ifXg7w32KxdHPGjwxnRpERWr4zhd4Bj16wJuwTzlFRY=;
	h=To:Subject:From:Message-Id:Date; b=sFOwm2nabdi303DTBUb/Y09fQtQkGDyyXbkib8zyeLxIanWPN933KzxadrKpAsWGNnFvMhKC3Bx+IOKdXE2mahof7PQ8Ad5LRKAjlWKqrcZ80oLMJCR0k7Gz9uIjew8XL+YIGAi1t+DmtuYi7T7zkYatY6j6YxPmozydTxnAHhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A++JseJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A++JseJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D02C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758705593;
	bh=ifXg7w32KxdHPGjwxnRpERWr4zhd4Bj16wJuwTzlFRY=;
	h=To:Subject:From:Date:From;
	b=A++JseJ5EaqFDA4/V4T8PAoYbeIosDn6LmlyTCj2jpI+/DVmI3qd6hP0sSsFcL5Wj
	 t7IK01+hu9q1VPETkgchG6hwkKG7zYglPuTY+RlQh7RhSN9S9YEdVLkONpwuxQjhTJ
	 jbP0cX3SnmwMIDcyk0YBddc64Si7Hpr3h8t+1IIbANiba8DgLxxBaqcYJDxrKkW6mC
	 7iNYySwCPbvU9nQizqx06TOkk/Z845vJ+rWhhnbij4hyxvx+M/OfYbHxvaqXKHVzWW
	 RuLHfYR+bNdG7OiuSa7qbLJsfczVmCYc9BJGIOtwKK8hl8jLtC14i6b7flAJiA/HB8
	 9hhHap0OoIqtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2ACAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870559358.15919.18365605234577173162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f423765a5beebd6371305f6d58250335102e0ae7e04070127389519dcea21b
Date: Wed, 24 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758705593
