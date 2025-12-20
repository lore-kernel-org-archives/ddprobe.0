Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBD1257843
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766201034; cv=none; b=cywUQN2ZJzYU7gH/TTLJm7kTzNELEz+9rD/Wv4ZlNTq6ycLMa6dHiAX6d7u/6GvOU86+wqpr8cR30UKW3L46LFxf+z98tYJYzYMcoO9pN9kDDypcRiwJIxtIl6Lti85yUNgij0yfSWr+ehDdtEi2k3Bxp7zV0l6pP8/JfcV/hxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766201034; c=relaxed/simple;
	bh=IW3XOd0wEbhE+SrTf+fier097TSTfWDLTe+LRh76ZV0=;
	h=To:Subject:From:Message-Id:Date; b=dy8YM67SokE0hgWH9bUEnlb+isKul+4AwFXXQayShWEIHrGOxGfh4eqo/1I+bl+Q+WKt60OdqsU5w8VnnqPipAT9zYdUJksneTLiDwLGUdwysrzGUazkysZm5UD1JZkHAzq4cs/b5cqBz7IV0QJeRLBNfsr0yREPlzgNpFHfXKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM5fVGhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM5fVGhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CA3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766201033;
	bh=IW3XOd0wEbhE+SrTf+fier097TSTfWDLTe+LRh76ZV0=;
	h=To:Subject:From:Date:From;
	b=jM5fVGhkdcos62WVxYM9TlKgYKuy5RMm/gZIjtC2itkJCRj05kVZ2CqYOXauuQSKV
	 YUVZ+DITaKy6PyEkzkmyiOKdAtVR/e7VaOC7GZe8OpVAGj0fDAiKQ2MYsZ5lw9S7dJ
	 H9es1+Nfy9ABlJ31CbV0lYN46idDuH9AzkGbodUbst/guxV7QebN4/+OJfocU5Cr7b
	 A0Meu0HmCoRrcCFHm9ZNZcRaKMgF5FuVjBqWb4eni0zRQheS0bU4Dd69Xhv0e0gRN8
	 fWDzwThfs5otoTmHwtBl7u9Yx4F8hX24TrqQrTOrRm50MKCX3GMHMW8mkaA9j9T24o
	 O3LxMqYz7eXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F32E66886
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620103358.17828.6599333536947313009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0100ef2498b57d756796942aea418a379cf2f0b54cfb2c906c2d16bf62559966
Date: Sat, 20 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766201033
