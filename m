Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336A8242D6A
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778451034; cv=none; b=hKHm5OiX08qMnXvpZlnCNSIWSjcl0qdug+iACX5scEXzYxBksR3yYoT3D3FNkdDMwgkjcKCfE3/GqJJfJDgA3E/JvjgjfuXRwHzjMHY5HJ57EsF4W0wGfCQZV+MKahP5pe5Er2UHo9yRzaJ/5zM8+1y2aDG55j9LepzJoT6yY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778451034; c=relaxed/simple;
	bh=mnfez5lacMEGiCLALdrmMKQmnS4ZH35LecdvI0FsM6E=;
	h=To:Subject:From:Message-Id:Date; b=HdRcfNkf2VIyMl9hZagBfwuEudH8CkYCakacpO31A2jISeAXl7XPdXtcZb3KwwXp6nm3mHb1XzLbx41SQca4KSz8v62c2+YV7Eo5ICGYlBE4u/7UUpooUoh2zCjWW6CMOlEM2kL+4oDAEd9n4pAF4e+aOC2ZjtzZCql0z9kXSxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZSCKJAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZSCKJAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA888C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778451033;
	bh=mnfez5lacMEGiCLALdrmMKQmnS4ZH35LecdvI0FsM6E=;
	h=To:Subject:From:Date:From;
	b=uZSCKJAKWh6jzH62I6+beTcIroLRU2kr/5p7xqGmnjm1CORNiQmfVisV3HETzbVhZ
	 800YCREjvba9bK05uCz6kMhCTY6fUq79k3UeI62r4t+TahO7n3KjDhiPFCXuI/77Hf
	 x4/W4FffL/WYn8DNU+d3Pxk+1kFDTDrxSonnkG9ZtEXuSWV+tprB0G9gQY1vLi1X+z
	 Ee/G8gvfkIwlCBXcKflxZgcdYMsRP7kV8U640Fka2papwomGs/7x2UrbzixQmgfhOY
	 SWhW17zlUkg7bua4KxGVadYpnayzl8Pm/Ge96DjNWsTRH48sLEbaR30sTaJnb7o3/d
	 ftj1KM3dvM7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F9CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845103369.11374.1882389638619644648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106a8223a43aa2a603e02a4bd1afd0d878c5014f0ceea64004f38f23fff86819
Date: Sun, 10 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778451033
