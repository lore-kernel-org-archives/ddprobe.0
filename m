Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B95F1DDA00
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737024954; cv=none; b=c8VNcAXtJ0AcqzQBdL1AyeUN15JSFUdctmvLvqA2HuSZdoNCWgTjpCPbLylu4gzgIaCD0P5Z1YH7l5zOm96IhLtFDdGKX9esblLyWYxoMj7KMAzrXXU5fFLGau7QJSpEe13Pgx9xUMhFTB4GwnKjtsbuIi0LaCtECnaZKO/NOeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737024954; c=relaxed/simple;
	bh=NiwQ5B31oItDNZBW9yoKpMTFGVRk69sgfk02L3Mmllo=;
	h=To:Subject:From:Message-Id:Date; b=bc6hTwLp7xmBeTL5TCSSm1uanQdauovb5GmUKwte4OSSMEr8Hvo2IK4PqqYd7pnu6Mw+vjLwzVhVAyLORch8SAIdjOcri0mdNgEs6xK4nxHRsMt4vZw/nBH1WwGVjApgJ5NCTmZ6vxsyxwNymUsNV8FgFf7nGcLl1YVTyr5B/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqAMR2wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqAMR2wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A039FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737024953;
	bh=NiwQ5B31oItDNZBW9yoKpMTFGVRk69sgfk02L3Mmllo=;
	h=To:Subject:From:Date:From;
	b=IqAMR2wGhgFzzzSmLMoc9cYL6aBIUl3BaF7Wcx/MtjKAJ1vqFaHIKRjWDqpwefR2G
	 XR/st31d5wm1mhR7L/SaYRe5R3pMcNNErzVUxSp+t/V7Ko2xntvBsXIL/vKl1QUSkm
	 Ner9ZUeOkPxAzY5722Q4IMlcBnaaMUVzeLSIefyq00Hu9ge8P0grM1vPUtCyxkvRgq
	 uDoeBSFIwjqQe+EFEbYjTvwKpUyRhuWkoJBQWvUlJ5GAE+HoHlRNN67QehXYARd5id
	 I3sjkTKM7Fviwj53j1jK7rYhhX0IprnRi8RdxR5BNNheyFaekiMRrR9PRra/mWPxsQ
	 O8noHaG9Hhctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B7C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702495359.20372.8401404416313176382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da54c56888b88699681c6288999b71566273c6a21738df26d80e9c67a2487141
Date: Thu, 16 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737024953
