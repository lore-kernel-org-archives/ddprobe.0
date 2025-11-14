Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582A4340D9E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763141995; cv=none; b=a2yX43WKkVqBNd49uHQplSXlFcRazCQRWBf7K3hZAr0vAC2W3JAYZ/OSh1PkS0eqH9yvcQxrOgcS0YaDkIomVZDwBLDleUDPoMY5kXOtdC1npvfVQwn5UM1ltuhSlcTs5mBbBpyhwjjBCPl3FPnOpAYsBARiUuV6ax5JFXyELMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763141995; c=relaxed/simple;
	bh=x2pQpYRftUuRVrHuCXBmjWk+GGPA8uJDbvOg9m998GQ=;
	h=To:Subject:From:Message-Id:Date; b=Gs2cUO41OgUJlHww4GQE1O+8KMu2SDKi5oKr2xZCQb04ugGu6vLfLy11+2ILuYPVg47M7O19ikRbLm2ImshZTGlTRi48WfUr5n0x8vCFSYxUeCEfI2YKi9Gyc5aBR0G2kvBjCqLVu24iNTMBEuSzqoft4h4a5/eQsltOIeEJaeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5zfyX6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5zfyX6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8C3C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763141993;
	bh=x2pQpYRftUuRVrHuCXBmjWk+GGPA8uJDbvOg9m998GQ=;
	h=To:Subject:From:Date:From;
	b=p5zfyX6USqhiIR3MKU76BecfwfE+WxnytyeUYOcp3PdHdXzEWrgQ7+/jIKVj1vRiS
	 ZaK3ibBbZ62X0wu7qZL8Be88qZKU5pW05LZcxyV28zivyEscXg931dqDaXSPnTna4M
	 NcOiGMapnsutcitUzme/bY+FINL2Gv63FsXuhUipuCWesINaoXDzXsP4o1tjnuocDK
	 wjn0YDwvEgWvhPfQLHeQ52cyNupbcHqpvAtse0Ow3ChA8OZWiFjvS/3hpfgh2hL+L3
	 x1nR6IBSwm59sTklb4t3hJfGNP4iqsPXovZEMI+TkZwY2iUNeE2lQg5Sj0qiO6pzz/
	 5hKzBhhvEvHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9BCE8D67
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314199358.1736.10185352044266950258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a35e83d13d892bbc7cde1e66aad85a08fed505cf075b21623295fbf8797c9d
Date: Fri, 14 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763141993
