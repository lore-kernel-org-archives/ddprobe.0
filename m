Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406A817543
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735733754; cv=none; b=pGOZm6BZUqN3OqaiFFEtmDmFTfNQSG3RrcRqNW5CCn8L/PuN5DdNEFU6+vNY42eVZlJcDg4MBUjRDVJxiNw6b35U/d12a+yeG1iFc/B3p3pPnlhf+zD7Mu7OwJWInr1PwhYuVH2eFzmQS97M4SRa4gcjvZ2UBMgTcpj6z1zYd+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735733754; c=relaxed/simple;
	bh=VMoGA4vomCF+s4PeJkb/iADyeHJZRwfJUzoeBE5l+Bk=;
	h=To:Subject:From:Message-Id:Date; b=QCYq6AWMED3epN+PcSUsjlAtfAalIjMWjn20Hb6996E5HaPinWUlKEo/OPUXl37h8E3GCR5Fed3VbGjDJuEub33wojFwN/zR0SCJlmK+JpoRqioJsU27Im3C7kzQrXaIwpwa3MBhSw57SQAq7J6Cnzorev2LLRmjlKxFJZZD44E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtxqqWXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtxqqWXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA02EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735733753;
	bh=VMoGA4vomCF+s4PeJkb/iADyeHJZRwfJUzoeBE5l+Bk=;
	h=To:Subject:From:Date:From;
	b=rtxqqWXzvCIR/BT7S0Z81OKhMTiFVZMwVG2cafdkE/P6l8gtwqoKNCddXxmKWF/qK
	 Ncd/PRqzT15+cuJazE8AGJiPmsqPi+meA07V8UB6SqmRHH8kmd7wYcHDAgJm179IjF
	 b/3RPBCxOC5vBKR36nvzFUtKnEVdglULSbUw3PBGCwLu0Kdo3s8tGt2ztaGkaodIdN
	 XybEpE+lC9vAONp8ydNrba+P1lZWHTk/kt1rOjrEUT27vjQH0WmIgpeqEiwB5g+A6I
	 83EQJXo/2HwPuhpaVYif7cu5l5c0KAeroW0EArFGqkx7X3Wh2FOYgUxIhxhcE6BUTT
	 /CT3En0bFA2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EADE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573375358.32145.7997096391750375596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983deb64fffb2fbccb960e75b1ff295b033b67e469d74b6d18bb886225262af1
Date: Wed, 01 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735733753
