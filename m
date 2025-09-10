Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B6814658D
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757468994; cv=none; b=Ct+ri22TySrksH6OHx+u6QAH1Tx7WYsJuTvmAyguvsBKd8JR8i6h4fHuzdmygNmaHPX6Lxqsuz0VQxEM5By/kbYtHkgUfnBU02hbKPl54T39D90t0BInqaGEGb6CbUUf5HtBb9dgY6WeUuDA2zpWLJ/15VVWxOs5snU7BrguDtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757468994; c=relaxed/simple;
	bh=1OVGbqs3k+JKnK+ezaRieAJ5H7syg3AuszHnglTXIVo=;
	h=To:Subject:From:Message-Id:Date; b=Rb5JJk8IUwalehpWo8flFtXoIC6u9Vr5jxDrJDQOpoORTQxR77h3/xF9ZpC+5ku6GnHgDI9SaYvLUeNRZpgg3mmwuLqDoknHTiuWvFMMjqHKsHqh6AMMnkgQ/cOP3Wmp2W0tCHJ/Tb0KA3uaBflgTa2QoP4AC1v7hvmwfjPPdeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKnACvPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKnACvPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A5C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757468993;
	bh=1OVGbqs3k+JKnK+ezaRieAJ5H7syg3AuszHnglTXIVo=;
	h=To:Subject:From:Date:From;
	b=dKnACvPr+4Jmjt6XHvJxV8B5DmIF9naVjVMOuYdwVvqHF+f1aF9wLVeNZ8W7le8ku
	 l8btpe557FW4TWGbPBqpIdb63fbVpT+mM2TkF6xITKlG6o86NS2GZ5eqUs+jxkN5QY
	 wWGA3EoFoPYJU/iOUQKMlZe58+EFG9SSQvFNBGzDrLktYYEuFUomW5QpAvfPOQ9Nm+
	 RVCKegXNQysPesd6s5ukp1bsVubmXyF8ZcAqLBU3HORg806ElYJFLgrKIy8E81yNvF
	 Zqspr/M+7yP4yxTu3IMwBfyQeTvpFMu/GJDKWvIQat+yJoEkv4ywcFGEZD8qbhOFt/
	 EP9DBhjhXhLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746899357.13779.9803577743091237083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a8b508e700d3d7e4fbd632a24ced2591468f16a94d7111ef51e4677a1835c
Date: Wed, 10 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757468993
