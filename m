Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED74264A92
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832194; cv=none; b=jz4nOEgpUXJ8MngeorTs6oQ2QDVKgQSxfx8hcsel4hUeoJyBZEjFBH8IiFT+e0msKKp2jHz7TIkyA3bO98UZm+b6iNWqdC2lYZwgFTMgieIetfVGvNKNvXKg/oDugfFR9W1GMVJ8H2wGcDwEDhQtdIYka9RT0fWi9b81zjaW33g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832194; c=relaxed/simple;
	bh=h15ZFRj8orLtq4Z0u6w0ZbFCjdDJFJanMRIHpb4hYWs=;
	h=To:Subject:From:Message-Id:Date; b=c7ABIZiuw2KCv6G/pTVw162SWG+AARENPJCmjA8vmJDZiS4X5HRWVCeIgL0KCnQ17CCLQs/Dhzny2wMTGtLddxDH1tpEyjYHWQzQWFCs48UyeJZTXNi+0bLaQ13QAbtVWPkPB2JuJk42JXgDEupb8sPgWW9EKzsVXH7GVMc34m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9GmgaP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9GmgaP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A7CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761832193;
	bh=h15ZFRj8orLtq4Z0u6w0ZbFCjdDJFJanMRIHpb4hYWs=;
	h=To:Subject:From:Date:From;
	b=d9GmgaP/ka1RT7inGfLpK3QDR6WGH2aC1w86qwfs6rV0IUD7HTLtihk6goCPJUgdQ
	 ItBuXf7sP1Ft50VezFqEA9yYKKwATlTGeK9gqsEUeBNFvsL5c4SZ9IsEOiVZj5UTjU
	 oslVEtWLcG27PWQ5KBtqC/WA0N3cScPDo9AmDbu+eob7LPwpUS+og4UqDss/9G1XsW
	 vzKdr7zD1bw52/vKJTLjZso9TfJotLAj2wS8iVhPT1+qNz+oVDCalWoqb8HxvF1nPS
	 OlzglcsKfFkNmEIlrVNdGp7IXppS6Elvs3beIkZnehU/yl4Fme0mEAxXm9vAwRra1n
	 fABBx+KXSK0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A09CCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183219359.6270.6185613136723900466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faef2b47b6d598714a8b08452740ee5e8aec82d4fe32f959734c84a5a6ae6dbd
Date: Thu, 30 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761832193
