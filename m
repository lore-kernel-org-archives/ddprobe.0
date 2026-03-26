Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DA219B5B1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774500894; cv=none; b=LBMkdTYOoqiol+wTm/tUJ6ZVc1USms8+tKp7CS7jWC1XwotS3UrDXxJrqXdpVLA3i2HjdEnH0itnaewiuarUvjA8llWwJSo71M8gIXhxa9X27MCojN9JU6+Sx8//SL6Dc10HOwcXCCwAeTcd3lxo8R4I8O3MVafJITV/miuAWlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774500894; c=relaxed/simple;
	bh=3VNl5wpcgT3OOvPcNOPtfswtS2a8z3HE+v6QUO0ztKY=;
	h=To:Subject:From:Message-Id:Date; b=eAnSkQOzf7yku7PCQ4lF4XKWgO2E7GN1H5CleQjdJhhY53VOIHbOi5+aVsQLWJDB8R5EeHwDtC2NY6ZEPR6MiZfHgx4llufACdElj53lGWZGUhxp+qimG7LIpAC44kEQ93vhysLESlPt5iU+zMn/ZSgMpxdK73M6zKi1jjNILpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn3EsC1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn3EsC1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A608FC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774500893;
	bh=3VNl5wpcgT3OOvPcNOPtfswtS2a8z3HE+v6QUO0ztKY=;
	h=To:Subject:From:Date:From;
	b=Vn3EsC1XEEj4/BbdyvIciukMJq7SZtAQ1csrIRSVoTjtgFaIaJyHxupaWnSyBPb8A
	 ssMl8AAtvMnwkc3p9jjXwftL2F+sarc/5H+WgbdFOrFssrSh9IIFXCywEm2UuaH0AY
	 q9twV9vejgJLYumwQRuOL4lWydFIkpqrLz//0HwAiAML11MgvBeZgGONq0j8vwB+Rw
	 1PBqaqAoHL6e7F0uLIMFgq2xaYH9kc9+1rq2AhUzjYRCEHgUDyCEBFGsXruROWYhAB
	 ocvnEdXga2Vs1n1iunGwKCoFPWg14NeM2bBllcVtdGGXsNl362ozcihWmJPg31AYjo
	 jyDcXlfIjuhPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92929109E54B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450089358.29744.7250901334447369873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753b296d6987a0b7f303477c0d463bbcca24a683b1d0b40ffb618577df88fe32
Date: Thu, 26 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774500893
