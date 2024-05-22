Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF30146D47
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716416003; cv=none; b=GssZboKSqkq/a5r5pf0EI8dFD6Fr3H2Xx1mRvnwnuC9Nd4/fiD+L/xsCUBAU0SWVtoN8HfmcK9IgPjijeB8iMK/RjIB8ANljyc48jHnfakY3GWTlKHeSm6p+Osh2miTljy80lNddsvsmPAl6H8fzqmcgxVLQ+IfD71awfXSpd4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716416003; c=relaxed/simple;
	bh=DYzZMtdSJhgcMN+v/1/pAgLdPhNhwJ61S+tPLewm5DI=;
	h=To:Subject:From:Message-Id:Date; b=CsfldSzO4oVYJY+W5QSpyEg+AapLWY60EB7MbByzumTK60AyRjFHkFJ+9l1dG/mqmTLisYUuJFBD1GoxWyBmbICIenYR61de6CFtoQNFPFbPnSQfk3eHK0UTOM2ZEv7sQI0bbnrbFYC6w7/S+tSTGJuTINckCq+GWchje4nYTMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy5Dnnec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy5Dnnec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81A3C3277B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716416002;
	bh=DYzZMtdSJhgcMN+v/1/pAgLdPhNhwJ61S+tPLewm5DI=;
	h=To:Subject:From:Date:From;
	b=Sy5DnnecOYDV6GmHqH8V01HWE/AQXeWJRnjOtH8E3mn/n/b3n+Jp+qlKWUASkM6ev
	 LISd2z7PC05gOAYFPXgZ0SyGwTNAMxEvyUIgiwOG/7pYqUEUu8xJUJ1B1Na9MXb3WL
	 htT7oGRfWj54inuJWMQ6h/Tn7UacoXBV3CenDn2CyqkTFWYgw7zD56aKeJ4eFggwsB
	 43HXoacHkxr919Oqx4C4tcT7AUMVaqtE24UXr00QAUzCnWTnSkKNH2gSQkRVYC3BAa
	 4SQkm4knhqzUwgU3nWwwzLQ1wNO2Qf3r3MH5cq3Q0uswq4dqoTxLXypUtUAdjxaCty
	 fND+ESmbevi8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CE8C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 22:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641600281.20911.13929200974311990608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007ba06d347edfb349fe45e94924b7934a73674d21f888bcfeb9293fae53fa6a
Date: Wed, 22 May 2024 22:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716416002
