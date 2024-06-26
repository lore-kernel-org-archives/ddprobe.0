Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47769180A9F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719404003; cv=none; b=sE1EKKzFTUCuofqPZF8rB6cHoYJB4i2474GZRWndnXAAZD7SpEzTk8SywsUS2vIQwfR9MAv5BlJovzrTcSN9VQGWgde+AqIOLqLK4IThOoy/e4zNOWoLTVXuiWo/QxQQ/5RtFBOtt+JZgVqHQKA91ZDRSUBkPeuq0SI7BGRZ1HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719404003; c=relaxed/simple;
	bh=cvW3nt9gfTur2mRLX4LbpOyQ7Mxe1SacxetjWVgJTOY=;
	h=To:Subject:From:Message-Id:Date; b=ccONkLq6TamK+fW49iE/8dH0SfDQ92EVxbnUG1gHIr++HGul7iigdkeSrMOc2IE4ZWAhQ7mllMQe3CxAgRqnlCcL89NOT165Fsf90O35GeyiCQtyx4Ffp3HYKtRgNew3/bgu/ZX9FPGFP6W8nNrcadSzSRbGyPSV/3xW+xj6Lic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6fppzMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6fppzMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E05C32786
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719404002;
	bh=cvW3nt9gfTur2mRLX4LbpOyQ7Mxe1SacxetjWVgJTOY=;
	h=To:Subject:From:Date:From;
	b=E6fppzMr0cN24KfHA8pCJbt3V9qLZtUwWyeQvSbfCFWb5hJonDsJJk0o6Yjt3MR92
	 RIVMu2XgZ1D7P5DZF9j+AewpoNmVz78El9rQeiPMaCnE1T7TAlfU1UkZHhpMi1sFQV
	 QLc5n9bvtsG1zj3PryVQlWB1SBlSdAsGqvrqLyldmE/6VFeeftajsqPm7szwWepj/i
	 ZbEJX90j0GZfZavlGq9umYehnJ1rj3sv2Hm3H3crEvyxsNTAWL0/NhEQcGfXTHHH4/
	 qu+Q1E9D220xVlIT5z1AQA4WKomatIToblBMR/7MCCoqHI/3MA4WmKBbEGg5Dw44F1
	 4q1dLKETCHC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C443EC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940400279.9691.14836079027401835275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e06768978607fd61ea1d02a7d46a956a9aaddbad4bbc0945337505192a59709
Date: Wed, 26 Jun 2024 12:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719404002
