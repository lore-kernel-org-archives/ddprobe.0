Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFED21D3F5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783810114; cv=none; b=uurtplZXLCLH2LbIE/CJlgkBcVG04Zvs1FJC5Tfb2/qst73UsaUr7O+tzwmkgi8sXnR680YAZQQnmrVdE4bNTv0uGWB45ZiI7k2gcpctpb2DCcWZE3bOlGuc6h9vx0chdHCWrYqQu61QYW9BlF5OZCyU3cqjsNL58xOuPTvh5/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783810114; c=relaxed/simple;
	bh=+xy2wvV3Jm9z8ScbOJG5OKazGKv/2uo4PWioObnCU9s=;
	h=To:Subject:From:Message-Id:Date; b=TIh5ZmPl9PJI7VAZwrwF9M0iW8YpRPWfkEwz8RtUGObzPFf3SCy38hLUSpHJ7Nvd1XhyayzvSyhfzLJ+tyUnVKRT0b3ZPNkFA1JfeR47uHvXtSKRXCf2FlWIbWUGwAV4JAVUc42WaqgDEoD2mE3Qh20tl0Ts8ZFVd2QEpaS9m0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmjtMjJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmjtMjJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD09C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783810113;
	bh=+xy2wvV3Jm9z8ScbOJG5OKazGKv/2uo4PWioObnCU9s=;
	h=To:Subject:From:Date:From;
	b=HmjtMjJMv8Wx6imxO7hOpAprTHE8+hH9+HeSEIHy2es3oENU7NoHCLqZqqfL5KUjz
	 m/7Kgef4mok1Ieu+SJStuI6PXyh1EkRQo31DgQDy5fW8SMeKZom9sjKabcdvyjxvnq
	 YxnkSk03W9+3Wd2k2XEWIpUQejdCFCRwTy+Tu8kddaWCGjj7Gufwi3aCG0DMmLEOPb
	 hc8PGNRktTH2mBA73dsvmkE82mk7n0HxZfBMZTiNY0iwgW+BcYQelPrvn3P+VpNxzC
	 YJe0p6PWitPavByiQXSfkJMTGuwakjbq69GD44VL+lthvkie1pNqYlwTSJsnnwtaw/
	 cmfe/H7Xe8B/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C0C44506
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381011368.2234.15597225230484382994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e43a24acb1efe0acfc3059da90a241b4d0533617003e996dcbbbbd1a52f7de5
Date: Sat, 11 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783810113
