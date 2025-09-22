Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A3511185
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758534594; cv=none; b=f9CO7vHvev1vDOH544Bhm6ZetaijegO3NDihA7OhLbXJ2Yv5rm/U0hVMARVx8zf26/sk0jjXosq2fEzzumyFSNGOOa7d7KDb96S+XNCsuWqsw07t58xTCdfQC8gI5EHeazU8wmUkGKRlNsLUEW9B9cBKJqWh0VZ58NERFl0H+Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758534594; c=relaxed/simple;
	bh=LUuta1jLJtiE/8OhkJ1cClJNQVXNt1i2tUVCnIUGDJQ=;
	h=To:Subject:From:Message-Id:Date; b=tPpiZPWoRH2svG83oB5EGTnDna5EPQXCZnq9SuzSwrwvNUNju5Bi9nBuL7DkVhATBGt0fhoZoTguSScEa8tmTShEZlRcpUGhZyeTMSaIHX04MRZMEIXHCCPHTwzoovS33jZ+4oydkYU5DPJjrjGINKuP3Q6RmTeckau1dNBPV70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqIyD0sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqIyD0sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758534593;
	bh=LUuta1jLJtiE/8OhkJ1cClJNQVXNt1i2tUVCnIUGDJQ=;
	h=To:Subject:From:Date:From;
	b=hqIyD0sJUIfH1Z7wD/fvd/aWxB5hT9Q6ztDkikrv6/6QrcHt8buchGH/goFE396x3
	 ZQ/dfdkK6KqcjY6mlK7bpfkJ9YVNqv9JsRumAb42pl8AqtEiOY1V7hZBk8Rya/pfHj
	 TtDcF4g065C5d1K9Zf0K8R5IA8ADzQyJzbHzf9vyp4HBF9lW7lagYKgrsApZv1F/N8
	 OjZvkRg6UD1PijiZ1NQqXGNoKNgjQMqpZxjZz07xeVBK5XQUu/kxXV6I/HNAnL1AMM
	 HBUDMCeswNHXSoIBYORQTZnlppIsYi9JA0j0rcqq5Ngki52yH54PGaU3wVoCHR73ci
	 BVIaNYHfRfvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F6CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853459358.9050.11336507668725277329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4da5c344c58a05cf182b8b3e9f6af9786f7352ad7df573c0d39023954551249
Date: Mon, 22 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758534593
