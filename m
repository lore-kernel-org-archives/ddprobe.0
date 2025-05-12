Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC7A259C9F
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747039794; cv=none; b=MwJ1SbQxcZjyMoBOnN8Cb0Q+8nocK2I3uvZGKMem+MtjnFhDowukfbf/oXieC3iOK+xSdjhj9cSnNHaR/3F8AKkz3azZoCjlZN3gHc4o05vFpVvo9VuFtFTu/At/TgtMnPgscw0oJjZBIJT+S8Lf0wv4o8KlL/FYF+/fRUPIZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747039794; c=relaxed/simple;
	bh=M6C7vih6GNs8N5lLy3BCrQhEe8/TPb7tf4mviY9gY2s=;
	h=To:Subject:From:Message-Id:Date; b=GAWz9Gq4NVJAXoAKGCunDkm8y7aNnQMcqktTLYuNLmZbbJvuuU8YFckeFVAo65wbw43iJEWav+qo22Hxe4dh5z8Vmy5JYXGwoq4J6owXI8ikpgtipA5CgoLRWX49/hc66sdx7Q7o7040Y1JFWhXGwsua1d3gfy1QO913rxrGer8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9mfII1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9mfII1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747039793;
	bh=M6C7vih6GNs8N5lLy3BCrQhEe8/TPb7tf4mviY9gY2s=;
	h=To:Subject:From:Date:From;
	b=C9mfII1ZgfwhvgdPS0U0WTscP4jV8vSOdKgDDw6Q6A2amJqJneyTm+kcHR9QByC4I
	 qWWdkoVB4rKhfvBJoKZLLUy1eAO6y0P4u6Vk1t6iC5DW9pSeqjFux4thdEyH+hYqJ6
	 Q8577ufmbrK8uM26+HbHsp3/0oOkkwsgEFJkmgEhikL3RFWD8Pl0L6PVDvRjUcgSJO
	 24fmPO0H3xg8hNThTAUoSdaDVAfCNTrJeAu26nobgV1tdBqIHVaqnfG3xeGsMYEDpN
	 Jh2+aa1d9fXddR6M3OfNQzzU5GEvfDbX1FhCFTEVyteUhMSD1+PnokrDh7aZBjJMKb
	 j2Gtpchfu9uSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074FC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703979358.22709.8081217927110047215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4d1ed9f72cfeff8211075f831756f1b65dae089433f48d3cf784f7f2ba2cae
Date: Mon, 12 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747039793
