Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D2129BDBF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772429694; cv=none; b=OORFF841M9OxvfYiUbeMdbf8XrNTkZORonyIJiRDIXbeU9em/iKlARiW/g2IkK34cIi6YwyQlTdOhe5oWmGmbZsPspb0P16ftZgIrEqwEnME7sTrt9B2JafDNtvcjS6EvNCLWv/zqIt/KG9gZUbiLKOwA+WgZpSjwdM+HJfGPpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772429694; c=relaxed/simple;
	bh=Nae7mIuq546QVPaYvIu/OSqsYTL9gO7Pd1cyH78PTyU=;
	h=To:Subject:From:Message-Id:Date; b=XxjclYmBMVMK9oxAVOoq7ysbwEthck1KFxwJzXTWRxnGhktOKnJFpJaMs8KLqrnJPt7XrtrE6PArFAfXTv3JBmXkgOvDwKR5iWGIj2QLcrjZMaV6w0Amjrv6s5l4rkH2ZnP86s5i6LhR8gcGJv+KVHp9HUnuM8qXaFHa5W0Bi0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0gs8kzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0gs8kzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D5C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772429693;
	bh=Nae7mIuq546QVPaYvIu/OSqsYTL9gO7Pd1cyH78PTyU=;
	h=To:Subject:From:Date:From;
	b=e0gs8kzwnZ5IBYGvJTe+YEsn6eYWO9vpQiEOAxRNgH1ajexoBK9BazkUll5eaqXCZ
	 d8HQ1s77v/2kZ3CUyj1Pk6htYfCHSzCyqKjEbViMOtc81TdIkR34gBnlCJrAgSTSev
	 hTpteYwHNqg8F7IsvquOmZqBUq8s5Yap0Q5yFijsHGtLuD8UOEts7c0J/FItm6afpc
	 v0V+RoYbC8YT/B+2PsM4yCak8VJlCM5V4CA4ku9Fdn0xO/Zbyn6mD/h7jkSn7DISQp
	 utTygEeaRSBkb1GFPfGiAo/DzY4LqZudEmajeGcsunV3iz+tf+kWgT7bwh6CpHngJl
	 R49EH1jXp3YMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1015D58E5F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242969364.22773.11854596595792888136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c390bd7bc72495b0cffc7736d64698caf96e9be90d9d309295b71289fe63c8
Date: Mon, 02 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772429693
