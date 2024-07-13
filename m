Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C101DFC5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720876223; cv=none; b=WFEjZsUWVxg1K2njDXd9HwunzgeSp+oiMo/+lFwPklA3PySEP+T8bk6fe4zoQt3sbwfkqXCWQn/gr6XVwjrWeJatcPOrSpWM6D6TsxNqJ1BvpaTagyjF0uPHXI7Ddppd4brtNN1MP3y1U8XQvbinh1tLkUQc6YGUjqcljKrmhko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720876223; c=relaxed/simple;
	bh=i/daQJWXRCh/RvZDNb2rHVK4UVfuqh0F4rnjX7+91Gs=;
	h=To:Subject:From:Message-Id:Date; b=lmtfgfb0mf01RRK4DJkN9fadRZXTL4gMZSx9aC4XfRzVptVD3kHlnguZ7CbHJmhkvJk8jj20yzWgp9QyE8aeC7jIL0G6pZL3LfCKAlmXC7MfgnBKM59AlMq54/bogWy7tCvdE79sU4vCY4zdKf/B0wwN47u4Df8IcAsq16snIsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9gQm/yH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9gQm/yH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD55C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720876222;
	bh=i/daQJWXRCh/RvZDNb2rHVK4UVfuqh0F4rnjX7+91Gs=;
	h=To:Subject:From:Date:From;
	b=r9gQm/yHfQ336toGfz5JI0luku7n1wIaLyPU/cHpn5iTfu5Z05BjC/dyBYvxh0dCr
	 v+Y/HJTmEKnIG05w7Whe3KiWNK2pyyY/Q+1prv5LWJFicPUu2azxaq1YzF2JLEIQLG
	 ogvTUdL0EKTlbyw4geRA/vcyNaHLsia62abdjygALW1OYY2JYNW7kf3845rmUzlbK8
	 CtlIc8ezSxi4pWjNDKe/7abh5ddlPcxt92Acyv0MtSAr6vNJHf8LOwR3aoARHKckF8
	 9RQIbBhc1aR/bXwpHaSxldqK2xse+vL8pdFhlYcEyMpHfAwBhb28z7jwU7crOjGqXq
	 xKpndIiEwtckg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A86C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087622278.13662.6004742426796941912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48faeb6cbd5f75dc050d7e05014713ed2e506fd0f7147cf57612aaec1e0f8dcf
Date: Sat, 13 Jul 2024 13:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720876222
