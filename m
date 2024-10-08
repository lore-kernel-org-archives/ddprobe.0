Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3039918651
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728352554; cv=none; b=A9HZNwAqEvwSZQiBQgq1gYYXvROzZZr3rRzDIl0RaYtdzETMk4sqy79jGWWE5M/sq4Q0mSpFa/c1XAUp8BIPZfj1WY1v3s24EfRdzw4q8Fy76qP5HVvIlp7DL2QfVUhpeynkxMxP9t1XMA8CXrNG1KVWTLMFN2Uye9YUXbeRavg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728352554; c=relaxed/simple;
	bh=Pf7dYs58n3PrZcVfUUrbTKkDKFb9eLOHjoV9WXKWzPA=;
	h=To:Subject:From:Message-Id:Date; b=Kwf/nWE/I7YD8I/4Dq9Eojdbr/jNUdgUtHp3y4E/xdIBIb+dgQ1RnSHPIbinJ6m70WbaNtpJT795GoMUMkIGtDJumzBDNrAYtPHZB8O96nwd9unIEp8bOX3db3t6I8z75Bj4HloCx3nt/jO5hPZz+wWxbDGKTWYIm8TnRbk0xoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRc+Sn1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRc+Sn1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCABC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728352553;
	bh=Pf7dYs58n3PrZcVfUUrbTKkDKFb9eLOHjoV9WXKWzPA=;
	h=To:Subject:From:Date:From;
	b=kRc+Sn1l+IuEX2e3jYo8lK5dGdKn94bnJnnrrH9Y9Wi12cPH7W3S+EkFn9xKqb+LW
	 kBih8ibYPfIRzefPaqBRDDIpwC42HaZIOb23h2Q3CWYZrA/9VTxGNnEw2A9qTOZDZu
	 xkAgtM2lbLiDq2H1KaMZCryI/m3e+37aPktPF3OSku0/gtcJdhAYBiZ10caWtnfUzR
	 fyb2zCkoNBtH9BS+Wm13l3jo2+z939cOzJQJ7OPZF1Qu+BLwhHHjPTQ/qYjpnZUiCe
	 mvN2O0gLjXsj9SyKLpgmhnkXOtfobrKW+2hW2fW0JLb8dyOVvYm5QIk0Ie+2RjdOPZ
	 frQSCXtwpX3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECAECED24E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835255361.30907.14283789546543997506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12223c2eab9ef408006608ceeda6ddb2493fd0a99d8a05726c9a5254d7823638
Date: Tue, 08 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728352553
