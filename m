Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030FE14B959
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736982954; cv=none; b=p6dmHKKTfjqQ+B4eJDoHgEVTmUgpCA296Exy22GyZmwA6uEQJkBbVUpcRXZiJuZzjiYwG9j6CW+cfHgwYkkHwTgol45oYJmDcTSAcqkI+jb8LtTWkaY1NXrvzc8+SHqPs/HIO5kuxN10EEgIt1hfaZI5Ku1qZkBw0/VZS4z/n5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736982954; c=relaxed/simple;
	bh=LDM0vFMKShH3WU/epGvWbR+N67xRTH3jkBB3CpeLV/A=;
	h=To:Subject:From:Message-Id:Date; b=gbconK4y/GMhFW3PrjHU7rc1np9FC3k/CrdC04aZ1znuakCumC7NEKIgJECpmFxAVTDe/y5uWOwDV2t7GUgSv4bCaM+XU2qxQA0Sm34w0sBxFiebAnSrOuno6fo/CD29RnjOGICiQ3WcHLPmi/9wDClL/ivwcwwW3mIISpX6sgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsqlMLdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsqlMLdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93BAC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736982953;
	bh=LDM0vFMKShH3WU/epGvWbR+N67xRTH3jkBB3CpeLV/A=;
	h=To:Subject:From:Date:From;
	b=nsqlMLdhb8ZylHJCRE5uW2/I4InZoFajUYYAa3ksK1RaQhB8doa1wJV/MOqrtTQTL
	 oL/i/tT6v5r+xIoDvYPVzf64d/PhSZRmdjYX4h/EcLDdVKPPo0JyjrIrJAH6nCaUed
	 jPbRYRd+Mn2b+VjI3K5YePQz4TQzAUb0FZ6iJs24dyGdjzGcPG4tZuyF+v2ockMNHV
	 fLvBtXpP3UbVa77+yTMI2X9PLSg5dJWYW8m05LR8Sxg0btlxvMDv2RwtzWnI8z2/Kw
	 ll5843bJeHfANddgIBC/+Mfoi+iNutLL6RZ1DBTOQ6B4EBZOXHnC9eXIg6NwdNLdST
	 KHWVrFNHU3c+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95351C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698295360.9358.11540395374258055340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c7e2ed72120c476530aa7b1691f250be868cad76690acc4f01170288c991dc
Date: Wed, 15 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736982953
