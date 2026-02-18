Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D52C2F49EB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771457694; cv=none; b=io5+fCmdFxMtea/yw94/ZjVJ3R+KzswK/3Ikti6aCrlrHLU5zqEBrrzr3pq/DWXNputIkZlzXmXimmiXKvOScmov2qDScQOEFAOJKoId46rn+AwdsFLNZOKWbuRFeglLCBKAvywkEkjgmD4yWXA3o2FWOqF8Im5rpizAw4p8Xd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771457694; c=relaxed/simple;
	bh=1MBjjClBYR0vk9Ne+s+n77Q5zxWcpsnH7/+U5l/2kiI=;
	h=To:Subject:From:Message-Id:Date; b=BgYKw8Mn68DeHkpcQqhC0gmXcegcnjH/QSzrbzpETsOhxglBD7yyusIL5kYN0crZszUHcnWLqFstmiKaXcow/qlv69L0V5ae0zg3vRG0DNya4vD91WSLdVLQVeJuuOeCHtdKJZhbDq5jlNR/CYnVQMOTtraD11aqM0QkVJQrQqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heVBWyMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heVBWyMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0424C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771457693;
	bh=1MBjjClBYR0vk9Ne+s+n77Q5zxWcpsnH7/+U5l/2kiI=;
	h=To:Subject:From:Date:From;
	b=heVBWyMTUGu9cLRr108wmQ1S1Yena/IUayg0PZlK2tqr4kiGkAaSQWJwkqh17KMlU
	 R48aHzzVfQzj5mPFHdKzteHjlHSBrYwkqn6jM7oJXCwYyNJky9DdlKIueyYcx7wo6i
	 oTJxAGoQAGgaRcrhTLqUl0JClYLx41f7DnmMKVlgdLbIlvCWHmECfvzF0ld122+PTp
	 MZsMn1HGZjDLNY6zllsfejAYamOytmQU9jFLk2VTHD+nL9ooexADX9BRYzN+e2ZJHa
	 kiOsed0nN/fphLpm0ozndV3xel7Dv9n3aRiO+n1/u1jVibXceKqnD3G5fHidt4QnYr
	 Hdcbx6TPQztqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A677E9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145769361.8763.4604749871758531896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494464ee11f91a33a97c071a31664e1e6ef35d013f267ec3c75d92087de82c9f
Date: Wed, 18 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771457693
