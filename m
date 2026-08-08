Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E1E375F9E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786186234; cv=none; b=JAz0SFl8EomAuMQlcQvs0TXzfhFbXOQ5hZ3o9ugt+SxDRH1AOoQKQz74fNmaf6pI09gyKeitfBp0e7+HQERwsTTo8ENRNEW2a0FQASZOOVbprX8HtS7P1taGsGWRZYImJwgbDqkBTt4eOS761ZhN1us8K6Yzy02wprqfBi9jNbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786186234; c=relaxed/simple;
	bh=CIKf3DfKuvKxiQXP2lgQSb1U8nOPJfzpoA9IdUFWqjE=;
	h=To:Subject:From:Message-Id:Date; b=GeXafVWg9WNtAnXIpoM7fN6Q3uTuu2kFDqj9YhLFbioGHBxIkDs0xVyIs8ylLtTKU3pmK7GAoC97ze6XRdnt+/scShKVtW5TcqF9Qtu28HTXrYOd3T28hjjsiq7gTJqKVyKLyCzlVzP4u2FO//NZYvzuEdZ4U0HbFTb8eWB8jTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMPufKj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMPufKj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB30BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786186233;
	bh=CIKf3DfKuvKxiQXP2lgQSb1U8nOPJfzpoA9IdUFWqjE=;
	h=To:Subject:From:Date:From;
	b=oMPufKj10hgGiryZs+hGOJlLkBvuuM09hNV7tRk4tkjkCOLy5GggNlSFQpS99fTgu
	 U75jLeBUGMWTRso+QFkcSicAqJtsXNGEnrwqvmOkUJbdIIaEViJTIF1BJ8hJkCHldw
	 DlMbCxYchi8N68BFY/Qf6BFBXZvf1u/3sQkB8S+cKBpcsDIAIVKgWLB3Z/wkSxyj6m
	 VcOio/Mcf9f+7exmqOuzEvQvHHV8G58HU4z4IQ6IWzyyU6+ySFHS4HgOrFoMGbia+F
	 LjY4QQdHFK+PKEe8uHJKxp+sfbe2vNYRkJtAX0T/xVY5wkeQifXbTsK1rBl7uM8W2G
	 qv8PJu5Ag/D1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8BEC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618623368.6411.1811141020703315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb75c184a150cdf4c4ddf47ed387db949f60b0d97a2b5a6724ce57d2d29971e8
Date: Sat, 08 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786186233
