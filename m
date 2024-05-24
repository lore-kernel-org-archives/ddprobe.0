Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F33E81F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716516203; cv=none; b=M0+3KHH4qr/51bXQnb//VWUP9gRhE83jIwA+6Bohe6ZrRvucsfB+8LxWVcS+4LRnj6XXf4kyNGjFDQJzmP3eoh4C8JZnHd7BuQQsCwSFFzzeNbYdgh4haJNbveoPcPRfDXT/cnunkYi8YaJK0mHc8PBAlX+0++O+sEhcZD5RQY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716516203; c=relaxed/simple;
	bh=g02gfFl4F1BYaDAkxXWVposaH4Xft4UjEI9AIA+2S+4=;
	h=To:Subject:From:Message-Id:Date; b=Z9pgnw6hGW3VC2gSTDOya6CGqjClE42hA71i+k/ToiI08lp1PMOOavK4bWRyxjmXOEyBeGH0r5/LTlynrA+6WVBNNCZd/dRcb8NhY7oSINQO9HYV4MB7mmtj/QXY2oWutTOTLk/Jb1xtMkHbnoJN+jHeRX31w3BhKjJvubowaas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXFY+r6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXFY+r6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D3FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716516202;
	bh=g02gfFl4F1BYaDAkxXWVposaH4Xft4UjEI9AIA+2S+4=;
	h=To:Subject:From:Date:From;
	b=gXFY+r6w1qeqwYUwHNfmxShh0gfRZIGY/tdmtiHxPFlzksoRWUZnnQywtDRitevbA
	 TP9w0r8oNIF3rGSab/lUJAwwZvr77FpC8T8kTILAcpHBd31u1yIIB5P/FiR3F8NsP9
	 7vIwHmp3YBjN4N7lY4WfV8Ubx0iOBUG1jcn9ASH+kcrvKikf5wkenp0wPp+/5WP+uu
	 Zle82rKxjrSTivtc7SWdaeNuL3+wzDsItHqIe1Q312h7RUe9Kt/lxTJb2QmJc8pTCc
	 iSnBdex0MDctyks3vFoiNcMZKyZn9YcAElqZ3pCcMR0WNVw86we2losdfYNDwnq/G1
	 O+CMsX3hlSncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE185C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651620276.11686.12499722993644085278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7f373d6089f956230fe9e382fca09582b30c386541b7aaf70ffba0f50e866b
Date: Fri, 24 May 2024 02:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716516202
