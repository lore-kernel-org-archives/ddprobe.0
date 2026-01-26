Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F54F2AD2C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769390634; cv=none; b=m4S7jGPNidZqdoy5vM8dPJUf68ehxjDsC8kv0979Hxz4CbJ5BfMmu3zkWSONOjycXXqnInPPYM/F1dcUNbiwSeep/nlMaLZalrVcmIhSyjrP+CSH1zNBr5cyEPJ6fdH6hfwH1jxwNAqt/RfXkRs9XE0ctDzGnwDrKzjd9TTINPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769390634; c=relaxed/simple;
	bh=N56OHyc39NBia7V4XIuzJHoolB7rI8Se1Ga7LeVQwjA=;
	h=To:Subject:From:Message-Id:Date; b=QvhhUSvDLg/1HH6ZmIBnN7eGPQ5hmYnal+W0hlD/k9xBX6Md6alOXtBlW83sB2WmmVd3YugYUbhLjmE3PVSk3hFUdWK6zBVVKd7fE4e6E5nVP1PRK4IeOftKy3isyRT8NtgOS/r4A9O6Gs29kGBUEPy594GLrYcPiTFCd5f7BBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eemE4Mpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eemE4Mpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D178C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769390633;
	bh=N56OHyc39NBia7V4XIuzJHoolB7rI8Se1Ga7LeVQwjA=;
	h=To:Subject:From:Date:From;
	b=eemE4Mpej1xKUtuPyjsANif3qP3BlckIh9GbnPuNiT4CvCoHxjNNhDg0/6r/3j4F8
	 i4GItDGB0bf5PVnNyVScMLrQw2EtQ9EFdl2A/CmLDgKYzDBek8KqUyopHlL57skAz/
	 iqOHIspbgF7YSTLqDgsQNVhbIoHBgC3R+QZy2SUtVPuDoUtxKUglpFhqcc4FrC0ajb
	 yMRbZiXh3Nk/AqPc80+ajmknOcjZMxGzgcm8V+7UourweqLVltDxleDinpjyrzST13
	 DxVYmU6JTAt37ohNbt9f97naFiTRVV1JDbCvqOUL9gn8gekiYAP+pe8CReExlsPgfm
	 7ZVGr4AhMQZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF35E63C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939063357.6808.6733601824392532979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f1c8f88ed1a70a82f421140d76546d5f71f7a0ffcddecca66edc4a84cf2d63
Date: Mon, 26 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769390633
