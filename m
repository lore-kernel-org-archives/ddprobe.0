Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24BF175AE
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709757497; cv=none; b=uPXCO7xNgqJ+LkR0CQslDxS1BAUE9dPO8/29C54DVA0eOq+93C936ZdH3ZD1Jce0XTd+uhdfgQ8Q4B8pvrSMUWpvxWaapyyvt66swlR7k4xCuUZyhpdecHu2zKlZZyIRQaPNr4RX2P6JQ6vE8BTFRO2iIYUzH43ZxVyk/jcuWGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709757497; c=relaxed/simple;
	bh=MD2z30dH4ji6CpzI4kHpCGyTojk8Z8nKulOa/CiDZjM=;
	h=To:Subject:From:Message-Id:Date; b=P80VuXMK3yEiwoTSsN2CNjpz++5uQOKBmeqPOiabH/wpiy09cBwEISCxYJBVJ5dt6+6ycdiMo9eq/Sd7NQB6CurC3OoYeurQutV+ousPpGIbT+DVZJ/8YGyTYZJvqQPRxsSBUKMh+r3fkxMh4gUgbhDU+jvJdR1TFCf8GxTatj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K//SNSUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K//SNSUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7233EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709757496;
	bh=MD2z30dH4ji6CpzI4kHpCGyTojk8Z8nKulOa/CiDZjM=;
	h=To:Subject:From:Date:From;
	b=K//SNSUTVSchMIEBi2jz/SIkHOLmzBUM/vCkbVZFZNvj47X56uPP24GIOZgFAOc2O
	 6M/fS5lCmiJykRGbnUMB0+vtkgFH/sE/Ab1BS5R5Sl7BnYasSynfM86pB/vJsQl6Uu
	 U83STgnfF3mbfKefyiDlmlk9Eb19SYDSwRujKzlQhBvYc4N4t4juwCj8zwnVjFXFI9
	 VhGdVdNP76YXzNTlajRytEr11RXWXiyVYAfDi+s/FajnmJbOu2I4oN9RCyuMmaop4i
	 v82h/RmitCncERL4GgculmjxHcmWTDs3Ec01nePWyyjAx4kzWeDgtjhH0fxgP0oFgx
	 Un4B/2OfAjc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BACDC5475B
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170975749636.5462.2006188062238533303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da00235767f0525a20967553b7d70b611dd0153549aee9456023108c0e946a58
Date: Wed, 06 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709757496
