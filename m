Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAC272604
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753060794; cv=none; b=qgdYLz/04RDz8DhYUkIjLN3SQCq4+LtFNXuFcuxAeazUkrQfK9AwvdUIXhFtgLFghsYTfuh0RSZhq/G5/ONvxaxZiWQaJ5yNYW4+e/twbpntmoNTTPaUve/3fbpGzTfQoCvOANspExCVmC1BtA/RI1wWahtiYRKKsOmlDIgSX5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753060794; c=relaxed/simple;
	bh=q7LRLYFi/nnAbdRti5u+NxFjx8BVL6to3dxK24FnqyE=;
	h=To:Subject:From:Message-Id:Date; b=rMnMAgCI0dQffjUf/n9eE02yBCbqBGZAlWsAPe7wkP9Xs3K0SKIrkycmN8xmwjuvOkfEFj/juPNJ5vd4umY7RVs44vK5atK1gFAcnGYHhkeGXpEsUimYO0Vgj9xszy9jE3JtQaoIuD+Vib8RpiIWDLMLuSds9Y97sUyR3OeWZhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYCYEwfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYCYEwfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1201C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753060793;
	bh=q7LRLYFi/nnAbdRti5u+NxFjx8BVL6to3dxK24FnqyE=;
	h=To:Subject:From:Date:From;
	b=MYCYEwfwW67Ww9+/pwZXpLkea9e6QZyxwyWLDr4xovGd+zLIYQW0DAuBRTwbOfwrP
	 O8rwh2JOhxnMQQ6gF82JvddopkJK6yJV1x5ij1X3nHa/vjVQsxVk9XBdi4Ul0aCWQ8
	 KQXNUblwukz1O6gKTFcRf9rQvnNypz6Zq8qOsmpEP4uaa+SuVEK/uaZKz/paXKuA46
	 m2sQ7OVMELYRpdodyTLFaxhbbgSn1lhyIRutZMFv14ygLbU4S/+CqYlWWH82HlnaCi
	 m24EqWdEA7c2G/MtzZcKvvuym+STIP2ujgYvR6mE9wM1JLC8YRVeHYNPVU4yX938Kv
	 FfEJUYHftj+RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E28BC83F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306079357.13165.8826669310859615135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59570e97e852031f5e8a2ae87c4ff117912f4914c8d77eddb19b88419ccaa57
Date: Mon, 21 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753060793
