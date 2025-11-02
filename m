Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398542836F
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762058994; cv=none; b=WcWgrfkA0lK7UZ5/rhYbETIMUNAGVudlcMd7f+M2tB4poG7nujfl9kbgV5VX0Fq6ySMjZraKdSonnJ1c24pnHtBJWP/Sjnlkv7qh2QTV+p/qYS61LZI+YauA7Wt/TNt1/dZpU+Ow5LC487PgGakYztlwsc/Zvg6oTX7C9onK26Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762058994; c=relaxed/simple;
	bh=hSBsjLF1TwOKcrq1KHphp4n3eEQkqzWZR3JiZ0s3+SQ=;
	h=To:Subject:From:Message-Id:Date; b=vDB4jTsy96KIAnm824zM9uigc9GZ1goA5dDoHAhKlBFQOIJx1OUeK1aYGJMy2pbnEVm18R8mZdU9a/5RLUsT4RlRcnYB5BHm+h9JQJFLfropXb3SeAUt1AFIkWh8b1MrOOylU6mmR41lJ/JmOvZECP7zh2v8a/m667EPdM3eiRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd7q7LMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd7q7LMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5C8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762058993;
	bh=hSBsjLF1TwOKcrq1KHphp4n3eEQkqzWZR3JiZ0s3+SQ=;
	h=To:Subject:From:Date:From;
	b=Hd7q7LMJqxMUJsBSkZjQs0fiAmRsdocYINzGI98ieWzEJnih1OMR3YyknpX56hoZU
	 /30y+hJKIhr7BUmCcOx4zX5WwIwPALDJssrDuXBQkitiSVvh/Pu5I1bkA4tZr1yJ/6
	 qkW4cr8XZHbJaXKMwZI4o6loqDZqz83hGanneEW0daZks7wF8rC5MqCBmosLvDF7qs
	 KaXdQUM1FVyACIGeKMutmYIwkSt/42Z56cKr23WvUBuV8fKOnPG1lTtBqLXPTSPubW
	 Ck8b5i9GWqxiKQN0rQ7JeyMxpSotVlc4wbb8UwrHLW2U9kKiIhGxt8GoNQHk5nDcqn
	 516A1LuB2ue2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987BACCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205899359.3540.2436027142303775416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4715df0d0d35df93d4ce4b6cb82cb6f82c021fe2aca98d80a367f93bb4f7ef54
Date: Sun, 02 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762058993
