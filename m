Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A697718871F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785641434; cv=none; b=Bxhpa2qB8S2gD9Cx19rSHRT8I8uCk4ajfNrWkZOfXY4P/PExlTd+bZt8yo/IzUe3BU03xppZRmHdtj6vYmmtoyQ3BhcQoTPdHZg92ff3zg7Vy7txM7PPEXALTMg4lIz2dpzrMYHWlJMYMsjyhuwnYbvp+ZJJrK2HZAGpALwsW4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785641434; c=relaxed/simple;
	bh=N8kayGVrZKJSYBkhSrDT9oUN9tBWcn+DvIoBH1TJYJM=;
	h=To:Subject:From:Message-Id:Date; b=Q/+8KmH+/eC9Gb3+LVbcldcQOxFeB6n9fOmf/Zs/WkXD8A/Zm0c1Zfbi6wJ44h1p/V5gkRNUt+BR0f9XI6iYxFlsv/CblTRVic8f1NdTtYuRVXQDY/DlbuDEY+Ez2ZmgzCcXnBFoxWgFNA2TQvNocS/4dw/gnh8SnWHT299Yklc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxUxpkmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxUxpkmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCC9C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785641433;
	bh=N8kayGVrZKJSYBkhSrDT9oUN9tBWcn+DvIoBH1TJYJM=;
	h=To:Subject:From:Date:From;
	b=VxUxpkmbMIiwXWtWAz1POhjWpI5BukQ6bO6InNrqIsNSdQblDxDM0/bIwPAg6lQ3x
	 qzMJvG1x16TGv0kw7kcJvPmNWzKjt8g36c3M8Dv3zVOhgfR/hIy6sa8G0EpjMaBTwl
	 hw7UM+b0pZpPJ64YGlegveIlYbm6qm1ssArkw5wcgOBMW+DBGNiW12iJvdB5N5CBs/
	 UKuUtZu8EIEFJU26ifTF52aWAOqS87YsXwZNRDo0gMttxxIIfePdxql//MvA1z5+iZ
	 5SBN+68WTAgIyNEfiygT6hcTGEZahv7WjjfGbFF7BNlkUq6yS0Lue1kCHe6vdf3ar7
	 u543vh9yzkGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C4C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564143368.26812.10450755522152131021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f71674975711d8542359fd4b35c91a7f97f4f52c2d846c2f2ae2f5db4888850
Date: Sun, 02 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785641433
