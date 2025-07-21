Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B4E1AD3E5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753114194; cv=none; b=rFFkh830G+2HuPOGrvqW2rx/Wvt29RkzShdJvdw4RgNiojedNHxCrRkSczowe9YcpeWtf4AKEwPhRlyV/U7wiRLH5MzGvJgsYLG/9aEiIUxm+UXJ9Q3fbhUlN5NmvQNvBJ8ZbSlZlWdDE4vUGj4+pQe3h+THoN89ij7TiDjyt4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753114194; c=relaxed/simple;
	bh=PClSXUSvYY08MlTv8BDEoXN9XxqaGf+AwVS4/Cn8x3w=;
	h=To:Subject:From:Message-Id:Date; b=U8KxZzs7OWkzLXIS6e56rtUc726IpcyR4ywIKV3YwCAt5gW2Qwkmp7Iib6c3OVv+OtxtnFJvFk4SjumQdjARN/HqCC+4IzKx+rMvow7u6lVmCr1GAdbgDHi+32YZWk8eIR43QPgR8dKiy6mio28qFp/Askboy0RFYMIKA8ah5yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqucTQLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqucTQLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753114193;
	bh=PClSXUSvYY08MlTv8BDEoXN9XxqaGf+AwVS4/Cn8x3w=;
	h=To:Subject:From:Date:From;
	b=bqucTQLSyUF4CXJoFkPnDEIEaUSAhJFDnfLPhHVAj0jOhcgBXOWgxTY5prQHYQkEc
	 opP2tV2EfAxrvCqW8iZcOanfGOmeW7jjSOKXwgYhzbtIVb45Gjvqh2Y0h66tMB8V5d
	 tgv82cMnSgI88zD44OYalVlcQf9NkaUsRmGTENMyue2xivKjBj6n/+mu6e+eDn00W7
	 wR+wVieE4Iq85Q/ZRfnn6GdLp+FUCpVRwz/o5mwnhuKxjjeT8mY4rQxfvIEQVBPuPN
	 n9ilq+n1XAWRZBaVt0bIeZqU3j3Wtj9C4uW/8xAygdJKJxrd0coXjfoAf5gkHUaPG7
	 9OEnXbTBEqbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12FC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311419357.11799.14255158949716133389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf27528ce31dc89a4aea508ae85a551e913998f960b4532d552e6346df3be02
Date: Mon, 21 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753114193
