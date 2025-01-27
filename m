Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2F81FDA84
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985554; cv=none; b=reSQYOC8OkKXd7nLORHPxLQCG2i5Mp6/3ewQehLr0tyOLTl5NJIR/eUCRO2PF9FNN/aATN/qSGi21KmHkU2UuCFEdMs3O3nz8D0sopqtqk9sLE2DPjxMl5ZRzRAkK7Fp0SpJtFYuilfeInjDtt6RJSnhAn9n/F34dBTqme2gR14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985554; c=relaxed/simple;
	bh=A5ugTz1rZbLbpKv9IatDK5lSOvUX3h6bGFLXVko0QVk=;
	h=To:Subject:From:Message-Id:Date; b=Mvv5R/n7kCspUjsvf9HY0EsVZBPfgHetpFctSkgvNugJi6B4DYgw5mBRhAHnMWrClkdeWqysDIyxLwg3SXMS8QZudF7BBHDE3i2sQnnP7kFfISVteiXwoeWNAeO4x3o+j86x6pZ/u/umCoqy2++RuW25m2WLLskQBf2piSA6bJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvTcNpdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvTcNpdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E7C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737985553;
	bh=A5ugTz1rZbLbpKv9IatDK5lSOvUX3h6bGFLXVko0QVk=;
	h=To:Subject:From:Date:From;
	b=CvTcNpdKWI1iEzCYEFm6z5ywOiZhmf07IYeuiItX0njoRaCr9Yl+ISCu6XItSRRKh
	 1bET8WLd0QoapGHu+V2WWx2KcgG1wr49v9h8dPS+KxBqMXCVOR+z6ytW0E1wjlkioF
	 kSyq/+lkdpfIdCnfptODcw/4yNqGX7w/4G/0dSO97TOCc4XOz2nhzLxZ+8gGjOKfNV
	 QNeM/yIGr5jQfRDzXRVw76pKe68STD0ifBUkCXbaW4M9Up3pS6a9BSzeTznBK8X3aI
	 1YffKm/Tyk2veDxl5XRkR6o2ml+d6t0W6yLMyZr9uN71haW7bReAwelF4Me+qv+TlR
	 BXRQUbzl6dFtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99441C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798555361.25846.7440349734250896195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6b0d3245510aae54fc727fbe617461c1223b24c881c34efeb4664bd2f6ad66
Date: Mon, 27 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737985553
