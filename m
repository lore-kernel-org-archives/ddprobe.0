Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC05107A0
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723268154; cv=none; b=etnl+tK2fGemaONCuVJX73BmUbnc+LEBeieP700M++yWyfcItLwYxNcyMSk5UWhFeUTTtfNdDcfCX8nR5jrycjXkC5Ce2t3tEKVEgZx8DPRJqzg7IVcOkPea1Um/N7KmUS9rYFd73oLrWUVCzcCNGbf26L0YZ4CnQZZjSqngBW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723268154; c=relaxed/simple;
	bh=0Is+fBD67LIBSSSsDjyOkS5Fs1csmU7JEKJJADuYgkw=;
	h=To:Subject:From:Message-Id:Date; b=l98szfTRRWtDhCNRRr6LhutIJdc5F2REqWUjSzOoOqIlnZVWZwdAGlVXTzN33FqOkcVZbLO+V9lOgJrrR5tJnz2hQeLdncUsRwwkk7aNMUoH+lZdKcm+G4vZlnWsp+V9KnFOOS3X+i5/YexU40rCxlAXQDOu+0A8ImBIAh8SJHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw7128lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw7128lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC61C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723268153;
	bh=0Is+fBD67LIBSSSsDjyOkS5Fs1csmU7JEKJJADuYgkw=;
	h=To:Subject:From:Date:From;
	b=Nw7128lk5polO/uJikD/Eg/2JTSQehzOSXYy0kIm+TDQgV/soP5trwljW7D8x9oAc
	 XD2ulc01/rf5tPk0NutBrD6mTwwzU4kW2bzUgEtvNZzEr8xeP+1WZzjYLCl29nUxdX
	 wy1df4S9WVzPlCeHoomUugJlbCfJC+UawN9g4KnSo5rwITevvsjKXh6F/1MoyYpSyt
	 YKUben6boRtqIoyQlwVMPgvP5abyT1s1R7HJNRWdYSRDZSrIKUmlaFabeTMlUxdTT8
	 nxhwR6UGbueyjb4VgmS4BVWr8mJEXEAnUrqzYITa/xikvKS+rl/CRF3bRD/IXNcohl
	 ddijCBr0PuoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96359C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326815360.2260.1132436598958450494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8aebe62b4df416a02de81de7bdde06d990f051d86e5660c6c24e513dd0f501
Date: Sat, 10 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723268153
