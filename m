Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F08B2BB04
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748048994; cv=none; b=XoetInOouBns0x5zqHYPz5//2GW7KfsvafOFpkzADnZDSYDHo2TY4Sw0oGlpDAtV/pPuAiwBl08hhXGH66r4iDqjycoxxhFjIIzORBcvqgFNzfGLlC408Xuf336yHNUeCDfDwToy0jPfORLvqLZNJJZKndNlgyVP+fByRlP9Ic4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748048994; c=relaxed/simple;
	bh=4fhzkKks6laSFCiI+SUL2pqc51WCGV4azOYNaFUcviQ=;
	h=To:Subject:From:Message-Id:Date; b=MYPH7etUUHhdA1rL8cLKYCFROZMRy3qW5gylA6fo61dpnuM9EhhL+aoiG3+UttVJD2TK36YMSpQmElVUzNegwoj7Kd68rzX8GomVGgzgAZyL2VdHTdhawmt756aXYZnkjvYpa6nF/Dwh2cBhcJJeKK5zZ/wlDOLbMVYHwa9R/48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuvawIaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuvawIaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7638C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748048993;
	bh=4fhzkKks6laSFCiI+SUL2pqc51WCGV4azOYNaFUcviQ=;
	h=To:Subject:From:Date:From;
	b=tuvawIaNJJIdIltNHQjGTA81mgO5r1H2Sczp5Mq6gwgEgzJRVRCS2Rf/HjnKvyiAX
	 QUR2Xl1J537cV0Ts/2LSvAGw4mM76D8rd5jOH1aRtFZQcVsVz+XWOyw48poekzQNEm
	 MhehbJgRE6n4XXacZDsPmD+3HIYaRM8Q9sRPJdbyi3AQWnAsNFx/vsH5kwDYx8NEU+
	 LkhWsv8J1mIfRuXx72gPAaFMrDousOvK/HT1486BUpyMsgA/3P7CuKzZ9J5LKgFt4a
	 wcTyxdMqocQbQu/Wc3Gra8kzHf4XxPRaNLTnBgy1uta4eFkr4z7CZop+1GC4EhaoVc
	 Pj2b6MLE3ZRDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92082C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804899357.29413.12590003491220931507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c833311b04929adcc6a8164c2b29fcdf844b5697acabc56620479171f88bb1d
Date: Sat, 24 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748048993
