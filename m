Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27432DAFD7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768686234; cv=none; b=mIo4r6eMjLuK1TLue9mtLkR1/J6H4gkNT9X4iPSNjR889EUO2TSQFqZytfItOlYbnoJ7ECp9bYsfFfSSAqvufPaplGnd+L/+uvX/AjcQUyZCxtuQvz8ZZKv8EAlLAQEbYs7rKkhvoItJtVl0Ij41wYpRSsChnSe0Bz+ZgGc8mfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768686234; c=relaxed/simple;
	bh=82cr1rknd0ln3xTCe+uv1rfF6A4mlp7Hbo195in723A=;
	h=To:Subject:From:Message-Id:Date; b=b8E2rqUDNVm3C1tLRnWP6q+LVBYnnwDwujkq8JyPgt2yiRZ4ayOkkqLzYQP5VIeudi2v+5HSP1iKLx6Gw+M+9RY27Pd9iI3U4euO1j9DFV/oTaSEUssMOctjAt2K1YuJWHABe8dClgWb+/UD7hZqQw9BqWxy+d5KQgMeanbyWZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrTFBT65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrTFBT65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEC5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768686233;
	bh=82cr1rknd0ln3xTCe+uv1rfF6A4mlp7Hbo195in723A=;
	h=To:Subject:From:Date:From;
	b=ZrTFBT65krQWdSveD3UwMqhb8KCJQxkO+eC+sWUolA1bn2HImrJUWYVozPb+tSmWJ
	 byGYPRAdngjzRJSd6xD798583G+L70rfaO+K+KtP0QvnVg20vyi07A7k42dhMuEYsP
	 BTKBZOxiAQaOYsRuQ0hA2uyUwkne+W/BmsLX+szlmjzXQ3l3tWnszeJ7nEbQnzC+xB
	 EsHzOqQm2zE6vEkmR2Tg1PFL9PkvaAxMyxkZAG0h/GqtqaM0+De86owjUfailwvq4u
	 a/hdXlZ20+fkBt0qT1BwUbc7vVNzEftF1wvdLFIq7RdgGAMPXZF6cV8k+bgEvvDh62
	 S4VK/ZrC8PH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41AC98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868623357.23560.8243671179991195776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3707d856e24c8cca899d302a74a4789abcc3b8f88132654befbb596d9ae194b
Date: Sat, 17 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768686233
