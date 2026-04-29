Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F9B390C9F
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777458454; cv=none; b=B7AAK2NAQ1wCh4mUIDmnGmf7tkMPHs6OouRxHAdi0brIDIRAWpO2xEFo7MzbNr9Mp4GE09YlJgFrR3nZsNOCX4/+x/ZQlPNcY0Hb5Dg3wMTkK5J9Np5oEbYGSasi1YX5FuczxGBmetS47ZlARQN3F3hOABTyX31WL1G5a+ADaEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777458454; c=relaxed/simple;
	bh=Gxu5gISoUqT0gVsFHbl84uk0O27NfJNo1tZLMGTiOkI=;
	h=To:Subject:From:Message-Id:Date; b=W2SGuToeRsF5EE39B7lDsBMg0/ldWLpnx2bQPlLWcU79DrDaC0d1xMIb3jwdFQQsX2iVSTYtLs459eQ/VipI5aklXoLntD3/PKB9LbDw4WfRkeIJ5UYkiemMd+Sg+rSgeY8vePRJSRsnSzrT99US56f8KE2fNT4O2kn1gV5H4fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=se+ydsZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="se+ydsZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAA9C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777458453;
	bh=Gxu5gISoUqT0gVsFHbl84uk0O27NfJNo1tZLMGTiOkI=;
	h=To:Subject:From:Date:From;
	b=se+ydsZW0zjc+MNt9lxTSHAAXrIWcA8VF0nIIUb00q2w8pPKaAI5hiTZevRz5VUFz
	 4L8hXFnZTvtP5wRmpyjcbhJzRwpD/HN2TJ/SrRrSZuPC+eV4FpPgn6WlvlUi78sXe3
	 sycSRWRcmjuPnLEu9nSalzeTyE8fi4NJ4E8mITxzm1ZumVoOCXAqezoF+Yh0abU/bK
	 8/4Z5XEFY7ZGuMhymQ0PDAi/bGoc1aq34IMxSL9ySVrowRIJZexu7HXLPXmz9u2LTV
	 OUN7dn762I2Xevk6JzNx42AlqeczgTfgMXAgH9rSTomvdiHcURAbIKfy5dbEd5G/pt
	 bp82tXRV0tTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFBACCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745845369.2698.7978439714280577951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cba3376d3b7d427f5527409594915b5e67ee5d16ab0667c75fac50ce97e21c
Date: Wed, 29 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777458453
