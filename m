Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A3737142
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709963896; cv=none; b=lZsgaSTwpsmWfFcLMrsVpEkkU1wyQ2Oi4BDUWgHnPy2N6dzix1PBDiLvyZBuMHxexqpiyOPessrkJzo3cUal6m1NOd06yaZYnlx8BmdTyf7ZHlnlCO9BZ04CAPzp5Ge/RpS7t/zzXMCgVw2b0wwqHS/pajEOmEdhhzasXZMyqBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709963896; c=relaxed/simple;
	bh=339IP4ruyFqE06NfbQoyedoHSlsyFSIYbBjkmHbvFUE=;
	h=To:Subject:From:Message-Id:Date; b=qznKKPFQgTBYhfuExeP2Fhl3j+/9FP3ud2g8xD5nL92UD0mrK+QcTlv6NyHSJa/YGb9SdheqoMjUv8yQXDX4fFvLSHOuS3Xc/LueeiWbAdvjQwH8QOUO0m7jkoGp9H9imB332L5hS8mc+ZmD+bEqkcT9UYA+5WLyTFSZZde0Y5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBBcj6Ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBBcj6Ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7931CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709963896;
	bh=339IP4ruyFqE06NfbQoyedoHSlsyFSIYbBjkmHbvFUE=;
	h=To:Subject:From:Date:From;
	b=NBBcj6NgWL1QjknvTKeJL1E9DDemGafhRhWoMOjxqBcmoAE7ni7Vl6XUrrNGgu0fD
	 0/9A7uKsRAbXhr1dH4xwcsuwED1lBDqca5rYoqaPuxcwmbF1C7JCmqrU/lP0VfeaDx
	 TqV9mgWrofM8UySbhiqq8upIbbCLdRjwkDFRbrU4oMIbmLjhUTBMFr/IAI0s7iJgtK
	 QHXyHzeZBNvaCE6dmOMjdgbOh2lKhohILrdIPBeVw4Gph/iyw8wqF3LXVVu6sVeNYp
	 I4sU/e/hvVRMJL8haMUeFxkJDriPrgPdeQR6+5qwZyZo28nv2qBHfp83j0m3V0s/TS
	 ezEHF9d1Hao9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A2FC54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170996389636.21108.11472765420296798105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2103e079cdd49bb652c51e1a04025c17cf7f4d76c75662cd44f72963417414
Date: Sat, 09 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709963896
