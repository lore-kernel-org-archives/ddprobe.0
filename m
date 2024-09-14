Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C5A1D0163
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726328154; cv=none; b=VK6m148gH+Ql6hA/7QhryZqh/fi3aRAEMmHrij1f2r9SwF3Zcuq6/o1swicnVVb1278Zixr/fzYunkMhX43zyeAVkO21oYw7q6R5+tYtg+tp+3B4mQ5unbxkHdI5PB62H+ixArIyWOJLmGZHrBuenaOgeB1TiJGafWr2xeMOEfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726328154; c=relaxed/simple;
	bh=VM7TUq0VvKD7ZvY4UL1qeiGPC8DLsCd/Ra/TemqXNgM=;
	h=To:Subject:From:Message-Id:Date; b=nab4pDHWO9dIDtjvVp2wftP/Gw9vWXDn5KpjY9DO+K9+tP69ETCT3nCKlssEu0xlo8bEHDjhTYe6OkfIx498qTxT+cP9njNDZiLYF35jPpQugMPBmTGcd5zQcltOCsaaNaCAkZGl8mdAxBkwStfxMOq1aWBC6wmTMPUREGacEoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbO9RLCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbO9RLCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0036C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726328153;
	bh=VM7TUq0VvKD7ZvY4UL1qeiGPC8DLsCd/Ra/TemqXNgM=;
	h=To:Subject:From:Date:From;
	b=hbO9RLCdX83wrobQ8qiHfbeR0l9YzyGq1p3g9qejS80bUvV55Dmdu+0tJGexZ6oxu
	 4JWhfVs15dliUmlA89kyoPGryDbxlQTUxtkq5iiRk6PESiKEnEAQlqXcCZRTSNiED3
	 edpgug9+tsVRcDvDrIhNqkR16zbbC4pfzo8vjO+u86MSg6pzKh/iJxN9ygv/iY3luV
	 ILhH4NwCaijuFUHTCTSMM4wB2lVnUuqW+IOzOhAqbrbUV+vl1RgsxmV7NUyyy09JYF
	 tutM32SqnrYpjJqpukXsUM+9PVDvdSbZSqK5Q1nNA+MIaFSWSt0rXUeNuC8f/5SE/6
	 ZvAgRWSp2xgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070CC02188
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632815358.10543.14344604562540697032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89616040cd893d3326ad0894a020ad4490c174d5f6d802817c42d22c70a9c47
Date: Sat, 14 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726328153
