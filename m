Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5211E2307
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761756594; cv=none; b=FS0UCsY+V2mzqJORyHePsG2JyxzTza0n2YAUsdaa1HjLTKZ4TlPw9UhChfv4Gq1ks5PeWu85idphdaFk2tS1WHTTq+aBW9kUxQnyUVDfcOrMwlRzctTfLZPZf+IwvAZ9nTpkZEZduVQ/WkpKAReESlrla9e89iXnjNL9QKa6i2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761756594; c=relaxed/simple;
	bh=ZArLfvPUYFFzr3voHIB4rE2NsLiBv9xvONEq+g2cv6U=;
	h=To:Subject:From:Message-Id:Date; b=SI1NcW1vgPBeX6ycvAq7i0r2uG5aXWffWcVzg9PPjbc27QJ94Z+BkfDvzRyoi2AeYOKEmAwBPpRLqcfz8i4seOAkdt90IgVQtqlrI9peem00Ng6M4mhUrARvwygCJQxBuCOJLXnfDEk5EehGK5XOUVk8qGYmxBEBMZwHSvoQlOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNwkdZ5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNwkdZ5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7FBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761756593;
	bh=ZArLfvPUYFFzr3voHIB4rE2NsLiBv9xvONEq+g2cv6U=;
	h=To:Subject:From:Date:From;
	b=rNwkdZ5mpItNpviqQeN4prsh6LdPsxZLG2ApNCYHA1mhUqUs5EmXeSw/HT5ZiVKtc
	 SiozLzjvlHqunR4BQBq+btML8H0VuXrtN00Y1BtVyZcJdYyNtHx/9KVK8ATem5ACE1
	 dzJeuUVHxXoiwvt1Dry1nvYhIHezg+7x6QdGPAn/gDoyXU3CCsIQjPhPLH/vGaVYmC
	 az50fz8G/GmPdUvO+PB4+metACIHh6eOC8PfAU9hD4tPrVWr3nW2AMX26rZanQeEMB
	 bQzYGoIdsrkc8QhKba2twsI6PDVko6TYCi6y0dHa02k/a8W/fRdWkAd+exnzUnk3X3
	 R/gtuN8mobz1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F540CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175659357.11566.12434931859176272802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2a3729f8874a43be250f2e92fa0959014a72c18589f9fe31229ad579eb5a0a
Date: Wed, 29 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761756593
