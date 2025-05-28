Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3250210942
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748396994; cv=none; b=Y4Fu2iGwr7TfG/EeWMwfN9NLWFrS6ESxizhRSbnhxWqfPzFF3Nzn/BUPrllvWkolUTwgv4BSlhJP+cEnWUnAGQz77wXUweb62QaLG/ZgpsZGZm1+g8G3KJNuko18t9C3HOKyYr1CKZxJWGkX9rfPu6iDbc/PXCmoYl3l08YsmAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748396994; c=relaxed/simple;
	bh=2+v+Byf4FOfS0PDj0dj3s3WWcRu+hQFrxRujQ+QAzVc=;
	h=To:Subject:From:Message-Id:Date; b=PU4l6pze3teWojIl185wxSLlPoK6AHXdut7pOLI37/KphrL89PV1KHEUk89hhuoXVynIuOH4pf/UFamxTpBQYOGJZujc+4UL69PwWZg/0tujuCO9qh3oQ7WYR2QEI0FveXK8JWRfSYV/+d5R3cu9PJhrQewV+qWGL6nYfvfXRo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFtEiOPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFtEiOPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748396993;
	bh=2+v+Byf4FOfS0PDj0dj3s3WWcRu+hQFrxRujQ+QAzVc=;
	h=To:Subject:From:Date:From;
	b=tFtEiOPT6wRBcv78PjhcwPraP3hR+qFcisoNeuyCztz9egpIh1XODOuiuIC7cbTMn
	 bQZSiNMjGB6vnJYpt9YYihDl5lciO27Nn2oJZ7Es0oF/2241y+TlbAaV0oIAhaynNb
	 nd6BOBlC4EfJ2odaPLVt0KXHo+K+T/QDttEYQv+nMve+04s6FboeYfdQ5IQsKIcM7L
	 9oC0whzZ9pokKAnt06X0/Nn8BhzyKzWj3We2GdHVEsfRx99KcPQpwTiac9dJUblx4Y
	 XSZs0xK6ALl/Nmbj5qBrgWxEf4IqFO7pftqQpaSvS0A/2bK2TIGNp78JUH1Jnz7kgi
	 06DeXmurHSnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F128C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839699357.28983.8331545574603135185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abb0fa4bc1aa2e56e212dd945b406715631e25b902a24dfd1a8c2a802124f66
Date: Wed, 28 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748396993
