Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E6839B955
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782380854; cv=none; b=uk3RxFZ6exGQwkwMJcbl0n0BMZhrsPJtnX6XapTCGV13iusVxcAv9oZpCeqAIzlxMjnJY0knboAj5Goi3DkN4xExUZOqrK4/UhexBFwQjWXgaQoxNRwnW5Vq1OQdeA8IID6MKacqjz0wepBs+Xm4xQRKV61qyESgt9IgBQriTEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782380854; c=relaxed/simple;
	bh=ffWkwJ6vpJmSnuyw42GdkwzBG9TjfW68nCY6x0wiVA8=;
	h=To:Subject:From:Message-Id:Date; b=lCylHUoSrqulJjn+ParSssbYBLjfPbeyxgF4OawtwHWuNmSxIQAZ6R6mH3Ope/ad2o99yEEuJhv8SOjX5BZJadyYFlvaoA1EzCr76Oe/Ljk0wE9aWOHAyHOnNL7ZHTrk3W1ZuldWQoQcs6Havvif2svTRTLhymdJ0Vyq1NApOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkBFisBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkBFisBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E12C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782380853;
	bh=ffWkwJ6vpJmSnuyw42GdkwzBG9TjfW68nCY6x0wiVA8=;
	h=To:Subject:From:Date:From;
	b=RkBFisBsrXsZjwkTAfnYtm4K4rqn+SXbGyeugwqPcbHCD4mCoRU68AS+n9Wbf/xaY
	 8mZuq339VvCNk/d3rIanxReE/IF0sydIuGNDLZhAgNdMNG4z25a1XMUb5W0THeSx0S
	 drbDAZby8LMOIQkGNf/t/kG9YdDnKZvDs0kWR+HqSUujc/LVBEPn0e0aACYWe9SqSk
	 4pUx1TK9jonPsB+LY/BCRR3h2fFJT+EWpxnJ/VdWSPaIJDU6Z95gy06fo6whXWCZUb
	 bbvkeNjGIMvASrk3rHnez4jacpmul2B/3PUdOr+0XbXJwtyMnl54lLBsY66PPNte6p
	 PlDoHHoNNhAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABF7CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238085373.12710.1585394443182366223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9adef90c18fda65111009be5ed1da4051ae2059d4fec9f70c75d32c48a75b7fe
Date: Thu, 25 Jun 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782380853
