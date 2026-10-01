Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A495F526A8D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790876434; cv=none; b=euLTQI+ghYritQxn4yDzxB0+OkLOzl3XrcfFr6/vsRQlVV8qRaY1A4hdxMZhR1xr/BlF1EegtNciJh0K/UPQvNf6liTQMX8EPkIR4x96rv2jdkpuL3n8iIlRRelS+vtd2G9mXvM02A1bGvVNhxa2+F7ua9pH4NslfmvtjrFmS9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790876434; c=relaxed/simple;
	bh=2GwCVz3m/nbTB/Vb8iLHl5soj5EkB1NURWc4CJ9DIlk=;
	h=To:Subject:From:Message-Id:Date; b=h7FSxwcyTXFrLZA3SKtoBO1tqKd+lrawkyVqsJ4wlm7yexSVpouR7cvbhNh3K5Hffvqom+z5Ow4+3NTCr19EFdwnf1Tjac/FaYPCnYT8/jKLwzM5zx0B7aih1TlkUw2iFaEUHpRr3kGa7cuUPetP6lntqUyq+j2NWeySSY+tOX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4oAyFVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4oAyFVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF73AC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790876433;
	bh=2GwCVz3m/nbTB/Vb8iLHl5soj5EkB1NURWc4CJ9DIlk=;
	h=To:Subject:From:Date:From;
	b=d4oAyFVvb4Dgdkh1NcXbMZgiCn8CY/uJxdHaku4FVs5eh+ZCWPJtnCkgVS9GFhFEn
	 JMYg0nZ5C0qojYBCQBsOHOVPHtTz0bbq0S943ySDSq+aLPFJvFrR4TQlNjDjXcG/pO
	 V5aGtZHenhTRm+YAUVquf5TiJmSSESqLWBsdQHiPomX9/cayoyGoukPT+yfRmQeaZB
	 D2nqc0x+qex7Y8UivIRtWiirISa0IaW3JrSxfLwpEhEhbvQj1+6iLUaThkSiQkYqnX
	 ZDNd5N6g10iA46t73BG4LiIYJeJEMxdVp9gxJL1YGjsvwzaooqU+CwkG8BV0qdj1mA
	 ryC6c/Rq55AzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB09CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087643369.1314.5690627448977927513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7e8230987373b6404d8b75c6e2b24259ec92bad73672c5ecb7cb2d48b86889
Date: Thu, 01 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790876433
