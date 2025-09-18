Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254F33F9FB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758165594; cv=none; b=sOCEAQYml0QpB+RolDEGYhxompFKkk4O9kLdONi6+fOT/wqwfhgan4Zr26y20pSpkMaTJzda0ChkmDkWBptE1S5WtNqlL5/dDaDE3HMPZQyMIMOm4yRjiLDBlak8WKZ2poX6hHm4UBgMI2rfBqwU2JxRk6nSH8JVixtJ3T8RoBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758165594; c=relaxed/simple;
	bh=oNbvBBUnq0ovzEgjKlPjReIxJgVHO7x1FAPa8BZxCw0=;
	h=To:Subject:From:Message-Id:Date; b=DUUhJTZdQip90O8ocwp87t1EQXubVNaLi1JU0X2s+pGF4owefWXPQp2rmeI7SgBLnsDJa4zdDobAVXJuj6Qqp9d08zmoIaqcA4KlipkZ9YAc3UHpg4m8q+LEGnQjFh+escMHh+ciXSQ8n98UsZJbTJ2BCYtEG9E68kDpGbd1zQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1VUPtnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1VUPtnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758165593;
	bh=oNbvBBUnq0ovzEgjKlPjReIxJgVHO7x1FAPa8BZxCw0=;
	h=To:Subject:From:Date:From;
	b=R1VUPtnI32o3/qOl0OayjN/w+VjcnMAUV4ZwuR3+U/16U+mmb+3ds3cywemIABHHN
	 NDNGfhFFSX5GrNHAQ7H+QjXIhNtU+WYKTTSsekn4X8zqgdtEbFqDa/xYs4GxJh6ueB
	 +53QJW0qokD0bOEZYHk5Pz6OQfEps7rx+/D+aUcwAol39Y7NH9Emgpzoq8aLgflL6a
	 sbGodETwMEbLANXrXxRmL8dKIYUc5Cnw9QNmn1/PUI2y1nP8064vZmim1j6CNdvlNw
	 E0xPfAPVLdIwoHRNqihUFaseV6JU2uchd5MeuVG8j+NpU5G/fne/Dm57btsBpNfwXx
	 FtpnoFL1dHqyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC2CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816559357.6862.3078768094260695215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa68fa7c1cd2ed7ab40a206a2a7fcf7cf81d9e9b355e4baa7403a1394daac6bc
Date: Thu, 18 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758165593
