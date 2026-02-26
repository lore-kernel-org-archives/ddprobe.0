Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEC1466B5B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772135694; cv=none; b=leNmJoQ5/UMzDRI2dryWk+FQ/hP+fmAVdDC4yqJmi9Mmr8Pih/SleQZwNbdG0/ve8z9e0yBxZsyBjVdGgBKGCjuqqtIYngeg9PnhAtv5XuiVPVhgtBGH7ICCK8+cKaLcqxkc5HJhbRB9ewhbltA9JWV4o6uH8FKjT5G2vOOfvH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772135694; c=relaxed/simple;
	bh=WMOVwc+U107GxrmrMu0CLdy5JrJNovOU15GzZWRmwXM=;
	h=To:Subject:From:Message-Id:Date; b=Ihfy1z0izFCeHbrr7zn5Sd3UN4/RdQpXpkcKdu/w0yc0TFMXa/tST6GrYbMTDFES8prooNa6SJBANYGKXc5YCiI8acU8nu1568g8aaOplEWYtHmJJ2pyzSE2B9aWqE2YSDXyM4NmTxHf4fJnUmejat4bOmrwhWfVgP+O/fRuRsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzowwQhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzowwQhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0736C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772135693;
	bh=WMOVwc+U107GxrmrMu0CLdy5JrJNovOU15GzZWRmwXM=;
	h=To:Subject:From:Date:From;
	b=tzowwQherRCZJp3hwKmXGZE8sGWOlIZMrxQ8t+sKZZkEIfut8FTVl8v1lIC0Knacm
	 xGnqvqIQLJ1dUQi6vgyxOMiZoQ7rVHAgMeEys9CSa2KlAVPSLYusQfMtKbmmZGGXsp
	 AF8LXpaGmQ5Q8q1KmRPWIgIGOMNVdhivNOuxwUhHM9cQVsLr5HXMKur5sV/nl8IxiB
	 xEqtCAd9rOzuB2HODNIEorSHxjxsEhq6PdQKBSIx664JntDIjmDnHxoMzzXwTiMtov
	 jspnqEkR/kNuMgZoRjNxr7Iy0ZbSjpLiheR9euKFGmrb2IGYD+IR2CK3CMmcnWl9LM
	 Upg8dDLLtP+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148BFD9E0C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213569358.27474.8914747639009912635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ba7816a2b8ca9bdf2171978b515d5db3c9a4a52e04f028cb0e79245fd4dc5a
Date: Thu, 26 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772135693
