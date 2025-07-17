Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C7E1DE4C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752729595; cv=none; b=VqFd8oS6Pb6ocp1qyIYG/u6A5+T9J6R0lbuEUvtTLmTC3KM/vDa4Uh1VSTkcs2RukvPvAVPviDqJu9PZo6/yLmqCx5EZ0pDHnW8/YPFPILfNJayyHBu7UxPKBNezE6Xta+F5Ha8q0l67sNKU7kf93ZmQzuDggMB+RWBbvnKlxOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752729595; c=relaxed/simple;
	bh=+fSN192pjWQY+smbT1j2aeUC3t5Vglo8sgJAGaO53C4=;
	h=To:Subject:From:Message-Id:Date; b=ugPDLlJk1wjJHnkQDzHoBNK/r5PzM5pwgXaCGb24m73VCRgZAicpSaa6Wn3hbJ0w6mwgDDMLJbT1kT2jUbSUx151S+jA0nxlpnkRgHdq39AlJ70/+trKjaN7Ht/JBKf8IgYUTQpMabKpZSa5jK+32N551BhoJpCZvn6Lyq0cSfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFNFUPbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFNFUPbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6337C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752729593;
	bh=+fSN192pjWQY+smbT1j2aeUC3t5Vglo8sgJAGaO53C4=;
	h=To:Subject:From:Date:From;
	b=lFNFUPbNVjndxZ/ytXOHi6r/6GQDurreav+4sHWkEjjYcckunpcA603vKzzcT626I
	 UprohEV0ZTPMey7oSChXG3pgzzEQdydo3XZAnj1EDog2tprQ0PybKehR6+aoV8R4lp
	 IjYqNt+0asD1lxlF1W6y7crptLJG3xljyiQgvSihbWMj8CBh+BVXFUFPYaWZ0R3KZp
	 t3yULTG6shDAiLDCR2Cr5/IvbS4Ve5ThikJMdlf6Pcw8aqQNYx9WzmJWwGW/w7tn0C
	 3zZkBtlFWv4BUBU5GUD9GXT/1VR4KSFiCiA6VJat3Uwchm9DUEXksP4hF4Qm3+MD/+
	 Rqzkh3sBUi1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8CC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272959357.27504.9492176678096466005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6e6121b95b0efeb3b137cafad28241c74aa7b91c9fd282947df8ccaf13cef0
Date: Thu, 17 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752729593
