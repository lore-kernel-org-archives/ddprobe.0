Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75B1B4224
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775182534; cv=none; b=CtQQfOyapa8zRJz73bKQE82qUz6Hjnxl7tFLGhoBHf3MFMzve4QitZxg6ZY5bOqTecgXJJJUEz68Gk80lyeNHe8Bkie0PIbmwzsOmypupRDxKqqlBtVsnCC3S9OpmzQNkk2nrZqPbnFp9fAcFtGecW5XwJrOJnhbcSjsUe2jNnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775182534; c=relaxed/simple;
	bh=Ih4EmWyM3S1tpWnHhFkUYymUpCpdPYrldar9I1kZDbI=;
	h=To:Subject:From:Message-Id:Date; b=rMITzbMM9gA1x+fY/DF7ZLJbF8wIwvNsysYZILchGO7fnRmil7sZqp69DbA5x6mOl1adZ2NVjoGc3zC1Vj+ylwbcr13ULDfRv3bbAuwMXfN1/JcbqUGqfLzWUuSnJUSb7xmFGYvoxZEk6Bh0qB9Dx3b1LUPyiwXPkkvRtp4q95c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUlh+JDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUlh+JDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BF9C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775182533;
	bh=Ih4EmWyM3S1tpWnHhFkUYymUpCpdPYrldar9I1kZDbI=;
	h=To:Subject:From:Date:From;
	b=KUlh+JDYMt5zsj5UouIUz6Bsiu3vEtTPLGvhzBLocLgPXoTmIHdugnxMu23/Tdqnb
	 7UsNdcds7nqkXIAQjJ8yNSGZORBrekEqI9kgPW+ea6t7R7dssroS3ZYlk0Felmpk5q
	 pOWvoF7VWh8jsTLauuGRkttOnRvRFM8ldFp5UU53eshe+PYriLAPSYoe3lAMDKfVmR
	 vlWeYOsrlFxU6wsh1Ayz+KjYVkRuX88JSXmVzuuIIC1qFFfNXniQBBshM65jjv8V2W
	 m0Vt2cQK4LIZ5JYDeBsMtnnlm3zEIP5FnlKy4pXLi8+tkijxooQ+XavMusct8XT633
	 rpRfuCEEE3K6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA84D73082
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518253368.21055.13490561063566077098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eee513ec956436f5662ac68b63ace91275cd030cfc7fc3fbc5c7ca1334313fb
Date: Fri, 03 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775182533
