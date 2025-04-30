Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AE325D8E7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746018594; cv=none; b=IujeSPR6/6rfDDBgN0GqOjnetRNnL6/zXXECyHmZd22Og/Mluo5I7K4+mmWWKa2s4Lc8cuA3XoPPZ1UDQAMyXfy/7ghf/GjX+hvAn2KwfZMHR7qdY0jYQ55un8hA7smOEwzLzQz5Ki+d5aajNkXTDhTRRNSI77iMUajp8lZMYgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746018594; c=relaxed/simple;
	bh=y28H2XuuJWCv6SzIHxZDgvsWz8a8W4eCd4Qc8RxkkFI=;
	h=To:Subject:From:Message-Id:Date; b=doPtvyoI773Km75C53WUh4tCaP4QYkPsfhyHMK2liTNEJGufRN5UCDqrayOqmPLxUAtN5itNXksTiri0KD/KHulMdmEFURfnC/HrOyHMO45UQif2AzdxL5Z0HazhdLtmZs5sUTKlv6BX5SsgZVI+yqXO9kxpj4V4fHkNTtIqXqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uerbFkSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uerbFkSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC26C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746018593;
	bh=y28H2XuuJWCv6SzIHxZDgvsWz8a8W4eCd4Qc8RxkkFI=;
	h=To:Subject:From:Date:From;
	b=uerbFkSh4iqtuqCwyXs0kxo+0001bOfWAO6mS+SCtuaasqvjac3qxfnP+QZnG5L4d
	 uF2q58GxP2EYiI5L++wp57RMzOA/oBLXRNkHpJ6drZnCuwLV7KDbFkHJ1vcyV3M9rA
	 ioWM+PLLZ4zYlFjeV6eHXvSQLFt1QgzJY3UvAxgkwxMzK5ANCWbuFJ2lplXP07Z5/2
	 RNgRYW3e5HLOY3vLtRASEC/ivI8IScWYBWLQ1UmhIAie5Xfj77Gb9qaDShN3IshkGJ
	 U6tEGn0cPxEW08jk6VkLXkUoae90beXLQ0j9p/k5Ezqkj38HgAAo/mLhSsoMJW3ODd
	 cfHUXXptyf2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FEC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601859357.25172.8720818588812207323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d300bc3295062daa15a95b3bfd98302e583ba53e7f40d1810a37e90c295b47a6
Date: Wed, 30 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746018593
