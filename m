Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4982E757EA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764864174; cv=none; b=i4irYIVMAZvkj3GE3YjVl4x918ytyYOcAp/frOSnSl7K2a/QjGbtbHVy7ooz72s0u4jKYyVVzA3tGiXeg88/7JHmQlLq5YKX7V97J7hrfvMVc597ROOyqVDuogw+N37Pyjgtt28DKRdzi8YjIhFGVsouDuz46KL0dt5U77KYnv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764864174; c=relaxed/simple;
	bh=tiDL9+Wzh4G9PkrrYNOTXWn/doeKi1oOEuxG5iZbXak=;
	h=To:Subject:From:Message-Id:Date; b=c+M7Dm7073QkR63/8xI9vvfFl+9kbhBguBtJinRe52Y0F8vfkAFfIW21/FZ0/zQ0mrzfDQu+9eXLYhDQvKOHTwdlhYLDzH8A/bnCbhUd5ojYVr7JNqWNcWxwW9mpUOMZBX9JRZOGBXQ3U7kciRvV+tpb9Ir005bDPGcBQzbpyCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcpC5Bvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcpC5Bvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B731AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764864173;
	bh=tiDL9+Wzh4G9PkrrYNOTXWn/doeKi1oOEuxG5iZbXak=;
	h=To:Subject:From:Date:From;
	b=jcpC5BvzsrU8YCbHxXWWatAZzGZKDaPs5tmykHuRgK5FkA5xh5UO6rB1SQZ+wz6X6
	 syFdylmjPKFyFitj77QLS09Wzzj5JTzczZDoBaUxrDFUPZPWhz6KkqpIJHQuYI5RTC
	 6Hi5o1OWix/sZyY7oyInoUCxjJ44i0YBVStDCOtRLtq87g1CZyyiC0SX+GdWmjHtwV
	 qFKnPKeVUUZlFkPMLAzC1j9EVXoNkm6xndPjAC8dUednq/9ODUDiwUclESbC96Il7o
	 VxkReBnsCoEIgQqXL/1OIo4J0MiYoxUazJNTDmQ0GLftvWiSF8s+lJ8PxX6Xmrq8eE
	 wcOYYax1+OEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEF2D216A5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486417362.21141.17030072939454627875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef498446d43fb69bbe6f7ec424a88e1c6e71249a380cf85c309129eb7e4d4a4
Date: Thu, 04 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764864173
