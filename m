Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331ECE573
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753150794; cv=none; b=e7n6hCicdkRcHKEy2GGEFlbYGKaOozA3lK3TENsMFPCCJxjIdKK4CAUVSRPp/QHYnCN2tXVyXslnlqgUZqz/XRIprpoI34Vi1gjbxK7NTElflf/NVI2zAUFYmqjXjovVQ9C/SJdxdBIznyf4K3b2a40Fk/w69Gdmy6GkD8OJfvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753150794; c=relaxed/simple;
	bh=IpP4vgHrUfuoEV/jrkT9vr/yAVENPiA+RSlbf1xcnns=;
	h=To:Subject:From:Message-Id:Date; b=D7n3YGORo1T6E71ZpJkkFnEkUS4we09xNzEtqSUhdyvqZTygCbxzIoWbE3AYE1+QOKhQKJo2UOEjt0ykdUCPgjqiJAqexC39eZQtiAE/0LFzCcmgW00TU0iCFkkOaviIKXLqnXs/uedf4HGZHW98It0Kjnd7wYTXlEd9HRi9hq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRiPihS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRiPihS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D58C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753150793;
	bh=IpP4vgHrUfuoEV/jrkT9vr/yAVENPiA+RSlbf1xcnns=;
	h=To:Subject:From:Date:From;
	b=XRiPihS03R+7PDOuP60Mfe0KSlUN1iMmnMw0uWOkHhimGet1MIFJF1KNhujJUSrdI
	 VV05KB+8zRICy6tWDis0sJFvmpQNc7M8A49a+LsV/TjxTXajXKND9/BnsFd59knp1k
	 dPWvtlX7+zXQAdtvKluBX5JT4wu+kGaXvz1GsHWOaiBNDBNgOj8dH3Cea0/8ASdEbZ
	 qvUut33UEBZDogx/JkLfw1L+jbmLNM1skLtXJj/4FGFBM8nFrXKA832Hb6uQvjEhTm
	 28w3Q+WrxbcFfHSgiXdYrPdKAjKNSvelafCICQoyif+1s66oqyPqIHxCPdA9LyY+aC
	 IBAs0Qwg8tZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E1C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315079358.5569.8552394237126279849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f299b8295846bc7595714ad0f9582cd1edacbfae39c9d40b5709fd6490bca75
Date: Tue, 22 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753150793
