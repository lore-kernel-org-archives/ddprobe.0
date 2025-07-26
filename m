Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A691DC9B5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753568994; cv=none; b=Tz3Mej4DD0HqHTUI+UfaKW8c9ZGDfyekxqzqHAKKr2WTU0ub87Xuc1NqeNspO0qmWUARAZvuWhZYUhlk0BqO4dWxmst30nVUysZx+FRU5998i9mZEp7tM1X365yOB0WeGv7oLiAHTu6TlbMb1xZWWDOstuVMmoYZMD1gvOy2IpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753568994; c=relaxed/simple;
	bh=TCSYOgnrAcTfTQRiWGim2mDLsxH2zsDQUFtoO7y//Go=;
	h=To:Subject:From:Message-Id:Date; b=NJYBRak2dmBqZW2xnB3mzpqy5vgLwcc64k/jngdaeQRMzSNejB2xINaHmVIa6QmLCnUATWmiamM0ZOyJLqxCbJaZoo/U4kgog8DFb4u8HxwxCi2d8NVk3U4u9iIJ4EDQKM5kTwFWf1bfonD/iSuEoj72tOnDI/N428Vaea17nTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOLvOoRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOLvOoRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FCC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753568993;
	bh=TCSYOgnrAcTfTQRiWGim2mDLsxH2zsDQUFtoO7y//Go=;
	h=To:Subject:From:Date:From;
	b=UOLvOoRap9lrF4Ml+rbx9Lp1eBrpid0RCObMU1ilHm84wBSZYJwwhjmUL4i1iOlZX
	 UJwV3bzoHqba4eTisrty1tb5D2IvolnxF3IH/KXS4qtb/jIhwxrGXbACFwyNj5PPHf
	 mxnevqiRf8fKuRbWFwhq9mq+chldSv30xbY+tbr3ftNdpruby00FEgsvlR6CgNfbT6
	 FpNRnoy+HakywJed2pKtTWOhGC+IwtfJI9b64e+ALSeKNgp5UuAuJmHOH7nO6cQMzB
	 rFhhW8SXoaj2nyxlZV6m0AYtUV0ezNea3DEoHotKWMb7LXBy4B/UurEjmi+ZAvRWsC
	 3I1O7RCsGK8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C0C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356899357.8736.3085104547788302045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c53dc898efc490b6c750edfea32c581d000194f63cd1a75aeea6ee8d500d648
Date: Sat, 26 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753568993
