Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C2BA48
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752436194; cv=none; b=S9YLg3DzD3AOdzUibPyILrojQfqk31xDt0TmZfcO/gKVZ0B7bCZapSJf4XeP/+5uzmZd0cS4KobZSnY0NArh7FdYI02eXGLZzMzwiR7k1eqTEG57K2XmXfs6XtYucHmz2crjh64jR6JA4HSSCQadYuDkDhDDgIuI5R3gtNRRElU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752436194; c=relaxed/simple;
	bh=bwM7IZdAqpy4Q0AudqRUguaEwCXVGjqjsr+UNO1+fT0=;
	h=To:Subject:From:Message-Id:Date; b=UOezAT/eYK0Cp+/XdFTwIgt1HRjDq+w2FAvaE7LfvMIsrTt/ycHLCJkm3WIwmJTEwy4uUQFLz5tR7lLFNDlylRS+6wTboBjyclc4Ne6xO13WLObSOuq2tScBdNMj4aoYkaqaj/P5U31RdN/d8qcTuyf0PbyxC4LZeF5KHJ1gknE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohFsMWog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohFsMWog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752436193;
	bh=bwM7IZdAqpy4Q0AudqRUguaEwCXVGjqjsr+UNO1+fT0=;
	h=To:Subject:From:Date:From;
	b=ohFsMWogx/9rGSLTtCWl6xAl+sGNzYZIiPGk6k3uCShTeVWw6xmPhVU4CxNFaG/Bg
	 pqUGChfRaEneo7y1piHBXdHFA644OoZ0Cb+f+Av7IMtHfInz2T1GUEJvI7Bb6GxVQy
	 JLdic5tyI7LeXGAEirVU3HCw9uPzq/fbd3/3fK6g6W5lWVqF9tUih6hLXxDzIf5gwl
	 Qdo+K+bTBUoJC5rYdtFbYEKIuZdzrxbjlfsy8StIW1GwceTfemYHXyepSTnjV0FkUN
	 1ZgjCKOyOek3ITRpfmGXwrMKhvzKKl0vqASmifp2+6oGns2mDLXEbteqZjRdsF1W0M
	 O/vzglshJbLTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1BC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243619357.8306.8966570947433754458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12152b300290006b830a6dfa6287588df3796600b798613244f296e15a175068
Date: Sun, 13 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752436193
