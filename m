Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF312882A9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758872994; cv=none; b=D6jItCaLI3XPpd+deP3sEKioPdbG3S0YGpi1wgNJPCWkWCx4cnu4PijBIP0xYOmGpnomzcVqSNTqyJiWuydr8yxnVf3K06BGp9hoQ03NV4J/pTKh1PPw7x6QlfyzRg9SSlUkJ72q7Fl9Q27jKlcEC9qRvlcLIBMl6EITPvRfuo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758872994; c=relaxed/simple;
	bh=ZHBpFZ+BYfQNkHFXvZOWJEjs9MmapJuU3traWMOMymA=;
	h=To:Subject:From:Message-Id:Date; b=Ytubh5wD3YbLh76F6JMq/RZloDZQ0+tN40h2HhBUeMgYM64y0H3yYPMbkLx71aQK3o4CbiyJKjiev8cwoNqiu9q5D/cLZcRlpZDtX/VUijxfF96UNTj3E4Mi8QL0HRysMHmYWDaDenXGnjmvXrZrnHftmDIk8ndlnq0XeJi5CIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhvzqvGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhvzqvGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54AAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758872993;
	bh=ZHBpFZ+BYfQNkHFXvZOWJEjs9MmapJuU3traWMOMymA=;
	h=To:Subject:From:Date:From;
	b=jhvzqvGkLkjo0V6oncmtply9Y2eYWNfrQQ5CRKN8mrtBd1FvBbey0MVVJNi8bbiYz
	 isrrBhwVet9967qr8a52+vGaDVfQrxv0rSBXngBcCp0mcK5I30P7xNvWgfkARS+B8L
	 iHn4CkSVtu4ytUgHT4cVtPiHV41D5E9B4C6+h0SFEO1a8uCvA9jYcaE2EZf9Q0dePF
	 /HQqtZb/g11rSM/VZv8xymzBQGf/JB3sn42K1++gU3XHLdKHs5c4PT1So5UktCdjCI
	 nRD0GgQwbDqbS0xDcOuHUJWMefNAHpQmjszssSaU25aK5GLxwd0gq6UkyuanFsQpYN
	 +d36FNQ4bPJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E6CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887299358.5767.8503197809270450445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b9ab33e2a9843a6575eca9168e7b9aa5ba582d5bf6227764054cda1d336018
Date: Fri, 26 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758872993
