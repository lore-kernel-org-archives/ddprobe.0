Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5852F5CDF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738663554; cv=none; b=RCVRmYx2wHyNh11mBFV/VyHx+evYQuvv3PorRuiLLulvAyuDLk7H2K/YYAY489NuYmxtjvgABmjLLpchYs08SxoAe7Trz8WPiPwbpwj0OJnIP2x5RxsJeWggJh9GuaofG2tGms3Q/F4Y5hbxoTMUvsrQLEHkwh5DWdyfkJze1Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738663554; c=relaxed/simple;
	bh=qOUmt0pEaPzO3pi8RU/2buJT1+xD888+pGRzGmr0xdY=;
	h=To:Subject:From:Message-Id:Date; b=bigfJYXY68L5ufuRgp0cx2hm2wes0VZ2Ug1P2HPcyC5XAYqJSDiKLS4Tkn3gYV7qtLFbeyUdp9fuvwcLz6j98KFw3coj9Q5HLoOzZNBdAVaEcpFvt5+vJ5chlfeGSjxFatYsp9K9LVUd1yVmszKaDbRzTlglzN7TZZ5VRrxXv4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrNuY21f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrNuY21f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A58C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738663553;
	bh=qOUmt0pEaPzO3pi8RU/2buJT1+xD888+pGRzGmr0xdY=;
	h=To:Subject:From:Date:From;
	b=QrNuY21fAPsS1Vl3KEyxFld1bC4jhn6sR29WiZukVaLSz7mdnKCNjnIbZNkPhLBAi
	 fH4uA8hqdYGt+XYyLUOLQOrc1HsXG/JNXjtWppWFfyC8e+CPonE1cwFuRuZny1+oIt
	 UuTpgfm8epOfvqG7bB7ypVSn48oEU8iKaPiuBrTAtJgwEoUX2kO2IkXzb8g1yTNHcJ
	 h6EwefpzP7UKPu80HnN4g/uKTP2Sth6oJh02RpJ8NyFwvZ47Vyh0WglFsgzHiMXu9y
	 osS/HwYnmqgkof9sjm6X3F+IgNVrKHTsw052hqMeNx1S7ZvvXdvfdtu0WfVBw2Q2tm
	 LgpsT+QpuyIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4863C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866355364.31779.1913474583403995371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7125951b2f5a297c8c23972c4acb6af320c676c78809504dcf0e40df6440321e
Date: Tue, 04 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738663553
