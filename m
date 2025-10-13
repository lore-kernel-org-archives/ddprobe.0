Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245D2259CA5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760378994; cv=none; b=jS69THKLmpKEVhWMXnxgmM4iJTdoeqOT8Q9faiehqNUQB0Q8Kzli/giANIZukLylJTOspvLXAD8bzSztMCbaFUKn9Gkt4X4diT4Pogu0I8qVJp+zzAvC6oBcEpmw3jfli4y6OI7IdJ1TKgyYuSF1Vu+MnokZA5aCUxLaB0mkG7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760378994; c=relaxed/simple;
	bh=PCh0APXSDZbrjBIcqw2+jXGzNtk1JXFspXhUaIwuGfg=;
	h=To:Subject:From:Message-Id:Date; b=N91a2pPYE9agU6B4kYdy3iLIeYGVezgEhgJnUL+HBvDrYEUarwNxQVJoMexyJJLFl39+uD654WMnH1vbEJLvcuGH9+j9VzYHre+LUgIMqkTJ0bbr+vv78wP1p+zNX/kFaJo43/o/YUj1kD9KV504THw4VBp1S44Qy4Y5GZnCLTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHWYg6ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHWYg6ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F52C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760378993;
	bh=PCh0APXSDZbrjBIcqw2+jXGzNtk1JXFspXhUaIwuGfg=;
	h=To:Subject:From:Date:From;
	b=MHWYg6olLOchzSHWpyKAgNk0XJ9elLPfVFCM9mZCv083JfviZEhFtaKUBSbWeNCQG
	 djEKFpyUSi7vl32v8jtKw9hIqdtXiSet8L+oayAvVOg6GdjqoGfOfgRO33cgdhXTwc
	 ujr2AdzZf2v1WZ7J0jAKnW+I/0kjZstBnpMgNusmLsmyUpWfIJIENMvy5eF9eEh5gH
	 Q/aUGorhEpHtoEy4qIRaRBV+ZROehTpTh5jVY4aGgx6sEFYafj9wpOuyZUN371OWhN
	 wZWHwqdfOwELpUi6KPJlUXsZby8JAQI1jTl37aMsXs42ONqdXMLATNYcbshquJ6yEQ
	 uqmTH980HXoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BFFCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037899359.14690.17215317842316551081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25591519932d5ff7e635c11938aa2dfefafe5c5387dc5e02fcbf50e407da1703
Date: Mon, 13 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760378993
