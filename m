Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2195F313527
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774079094; cv=none; b=D7YMnUR3w3gmwkfXVY4fgF+9wW1Azy1AGzyhYclh/KyG/x3NiI1VtPekKx7iJupL2SyPel4GwaUOli7lq7Zmylv8Mc57/D+N2Bh1iv2zaxpiT2b1mrT08GgDZ9KzgsVCAD1WCE0auteDfcyoJJ0lToGq0FJRQwndwuWP4+pmqko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774079094; c=relaxed/simple;
	bh=uPW5sY9B5RfB/eEGdtX4wv0xQQK/qKcwMnash7K6g00=;
	h=To:Subject:From:Message-Id:Date; b=r7L2+qKPU+ZJfHG9m/4ayZn/73gviDGpfap+jCzYjHX10hoWxpg9EQGTbV+MiB5myMsnoZNCeTG8+4J34mGMQYIFoE3BzfdrSKxtdhL/Az+vBQfc7TEPhhkBbpLnWcAH4sH/JBS08k3++0wl3SpBIHrK2zAez6iH+gVeNmeB62s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQolIcF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQolIcF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E8C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774079093;
	bh=uPW5sY9B5RfB/eEGdtX4wv0xQQK/qKcwMnash7K6g00=;
	h=To:Subject:From:Date:From;
	b=QQolIcF/oGzV6A5EAvA+bl+DU1ubJE5I1DPNGnkUBFVqKfpp0Ra9FosfYhViCXkp9
	 ylq4Oap/Gxv70n4Cd/rHCeIDIY3QwYwxizb+uHp689U78OX5eTaXMw/PGwmC2qZilF
	 IW/WMCDZ+3zglla7X+iIWl9dHK0N2XeWsJbOlOFDjYxqeKgzmPUNHSPTnhP2a2iL9A
	 nLpVnctwYy7GiDBf8fZzvZEbwXawcUN7WsNKi0lSNitIpYnRGRwg11RUdQdEgpzKza
	 41ziEjNeSGJ0r+YvYvtYFtbOYTwyWo3WQh7ERn1zZjJZ/UusKZuuXJdBgkHBUDzR4r
	 YB4bXMtwrdXHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114B1094462
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407909357.21629.15084225826133569192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032b3bb0e6e78e03e8973d843c9c7b17e6c96e70cdd1dfbe35140b2d085b5ca9
Date: Sat, 21 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774079093
