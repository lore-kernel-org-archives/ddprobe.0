Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C102E11C2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749874795; cv=none; b=MRHv4e1J0jwPdweSaiiE1YYVoGgHSkLnonoHO7TtkqvQlqvKKt/QU4gm+nBFDGHzZMVStUFF5TKJSNYrbOxO3NablwLVuCDaLuPNX9WUUpNePe82nf9HqePLVKjTiB8C4jpX4n8iX21KVr2vfpz4iimEDu/iImDnqehJ5BWSWmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749874795; c=relaxed/simple;
	bh=UFWKFErRsKfoqg81c/pR4RuTEWX6NNcpLwBgW8SCsZg=;
	h=To:Subject:From:Message-Id:Date; b=fxUZlhtmWLOI1P3/shAycpsQ4WhpXSzCKNhir+gyiHxZCBDOWvlV2wBh1fXfXTyO8HWPuJnZpwM4fwg+2cnN2As5fyH0TGFzUvMA7LOd0LUJ7WL0wxj8nfQ5c7bfIQRexmlRPCHTjCsY9iClGEueFasOs0BfBEahXEDoUUqY/LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROJzSJ31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROJzSJ31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB879C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749874793;
	bh=UFWKFErRsKfoqg81c/pR4RuTEWX6NNcpLwBgW8SCsZg=;
	h=To:Subject:From:Date:From;
	b=ROJzSJ31faIXPHTlM52h11Xnd//OYKeDZsXHR4cIgiQDE7JX9bB0VSLRVldjZ8fEd
	 xdByjWfgWuWGBL3hsPYFYN6E7fpZdKVebUCHNesUZyobiGtpW4ZIhRSILJb5m2hn5a
	 P+p4tYLivt+3S9J++WqMq+brzfl47IjgGxyApbGmh8Ggz0JVLSgc0nVyPdBRWnHslm
	 ZJcSPDyLsiq7yaQoZmBbVxwGR1i4aaiLZFHby08Z90VKarc4r9ziiYz/ESf5f1oKpZ
	 WEoEQR5zRn3gu0Uzs0FIh5Bq/3XU1goLr299aFYsve21qHBMXWjU+cRiz7TGRffi5Q
	 AsHJENL3q15vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E67C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987479358.26128.3996455415988124325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e19589fa362b8dd2c2f8de2c6a584525a73210fc6b18d5268e77705ddc1087b
Date: Sat, 14 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749874793
