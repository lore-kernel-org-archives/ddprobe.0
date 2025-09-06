Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D623D7F4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757131195; cv=none; b=KcQ9vmZZE7aKjOqkyZSrTaZGkcgVkrCPDIonwccae//NBIvZBeZZAhdTc6Wf/yGCmH4eId5IRs9BkG6/5R4WRX/iaV4mnrNgW70CzYaA9PFYAP1yuSnu2g9krWAGbzf1Q6R1qRnzZIx/6F+ZuONzdfDrMji/IrGsGPTnWNTrx4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757131195; c=relaxed/simple;
	bh=hHy4kXMvEYPd3XKWTa8i8zX9oppvtSGgr1sXbGj+ZrI=;
	h=To:Subject:From:Message-Id:Date; b=l90mrHEmxp42iLnrfrHNvWrUtuQPK9To+LTM5DCjf/+fqIeAV23HQjWPqxVjsuw15Yj0Eme99vXcWKgYZPcu98I8hsZMc8sZvw9xymvSbN39uAJa/oT9oI0HOIQvi6PAdGaLuHur0sWaANZHVfNRLdHY7p2one8ywMPLBU74NDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaMqZ1ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaMqZ1ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B6FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757131193;
	bh=hHy4kXMvEYPd3XKWTa8i8zX9oppvtSGgr1sXbGj+ZrI=;
	h=To:Subject:From:Date:From;
	b=AaMqZ1obSvFVVEHwZ8WiAqo8hYVgi9Oag9otuJ6YQvntGjzcTDvcX2R6uYyjueozk
	 Zax3oLNEGSvddMkIeC6WEFztc10c9aitJIKj9kRG7wgyu/yZYAqghb4uvgP3dGQD7/
	 ZMgWXO1zo3it1hB42BOWjU/u4qoRB5iMK4s6AnFNcIprnv8X3o9511Q/b1lBV9qSlh
	 xC02xs76X96ib9E0HrmOmCPHXu9pFaOhsa30LIGnslb3XrGhmRJIwxuGjr9Frbuqhs
	 FWY2BQ5WqohzG8DvNlgyVPuJc1oxJewduD+4GEtdZDogesxXPbWZ7cdy33WRORgAxX
	 wc69R7LXt+egA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91677CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713119357.771.4042959828739302676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5189de6d83c33b17e7400e3f5f66fc4a2304e1a7b7ee0defabce4f57bb8a12
Date: Sat, 06 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757131193
