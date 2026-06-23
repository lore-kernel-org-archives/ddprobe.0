Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252AC30F816
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782232594; cv=none; b=Wk23DVq0ubYvu9JigrmHh8JhRAHdXEibUpoQj+3e3ASzJOPtKxrReZi33XBCpoxCCzglDl7CcgmL9dxNuzXGaDfFJt9OpKReR9R5u/JqxZUoAv5r2YxgwPXMgGQi6DD/QjUShyX19EpKUpKu5dXsScbeaIXaIcUIbnkDJMv3fYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782232594; c=relaxed/simple;
	bh=tLtk6D31imnsHRnc31/vynteB+TfemtnxH1RVkO/C+0=;
	h=To:Subject:From:Message-Id:Date; b=VVbMQTWEnfIOJvcVVV4LFeG/vlyB2R5GmZEujzHW1BH8IshpjKNHNCvb2zQZTwlwIEdS8E7SE9hDtOdW0FqvR9m9etzYADPkB/QWjThWa9erzcBvH0v9TI53c4s+mOqus3FbRu83rJgVvfuOj3ZMO/R/joqVMF71Ewejl7qNKBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7XuFU/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7XuFU/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC767C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782232593;
	bh=tLtk6D31imnsHRnc31/vynteB+TfemtnxH1RVkO/C+0=;
	h=To:Subject:From:Date:From;
	b=Q7XuFU/A2c745Ratd0JVLRTOQsBkq/yTYjqEsErlYKTdauTE2Xu7HIjh8gD07ggYf
	 RDhYcaVg5PlaINLkuI/4TZCN2xIfbpX0iG+h5M6NnlqSXBcYM8ZPGsWFA3YPKnphZU
	 2xuaqY8yD5hw9ad2i6qYF2eRRZss45GIrRQ+6FiEcMzzxamB/xuYOH6d6/zoTvfWGu
	 qOKCuo9njibAF4V+0SleDURv7sSRYLJ+jLPhcB5A7VLDeycz2qKqrLWD7iFkLvcb1e
	 y1EOQf/Zr4JmhMgd8ngr7nhmMxamGlawUtorRkb+uWHTk+n93C+k9e51XDb+UdBeRw
	 saadO917o69vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EFCDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223259370.26902.18303794766812191498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2405fc69b2d8919abca58504340985e02c592cd02a4918f1e093cc9391541eda
Date: Tue, 23 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782232593
