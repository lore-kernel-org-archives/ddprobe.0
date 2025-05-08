Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A618E02A
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746737395; cv=none; b=oS+pGtp75etnc0j2PWIMSal2oj0kEHJIDH4RPM+kT1FYrxHgBTAnBW55vQ+kv6EoTIZPp4uqBqZMm96uO3BaTWDw/wsFnAJCHskG99dVSmRFb0dYvokQScBvUwqdKleaS9NYu6043p+6cRzaHMWgcAsgO17ABEaQu+kaEYwGKNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746737395; c=relaxed/simple;
	bh=QWudEgrloSd2Q4bNHslxixfWO2IWCOyQJrQws7BVgiU=;
	h=To:Subject:From:Message-Id:Date; b=FFdOqralEoJwWlPx9Gd1gN95CQ0VoHy7+rDZviKXUswxCBPNYXV4yu0xjn84NCmiGhBAK/TzrbMi63GsQqAbazHRMG+UYN4I+H0w+QHfphcD02cJLXduO7XyVscuEdmOljx/8BcEIoW/W4crZScRiGdITlGrHVkG7dfHLEi6mKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArQS/gqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArQS/gqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3525C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746737393;
	bh=QWudEgrloSd2Q4bNHslxixfWO2IWCOyQJrQws7BVgiU=;
	h=To:Subject:From:Date:From;
	b=ArQS/gqcd2jsZxLVk9145chrnUeZnnpTJGvysBQLfKtCE8lASGOBjPfzWzntiaqi6
	 Tty6bIV4XBEefDxBeMXzM3WQnGUmOvf59C3dzYwriWcB0dJf5aQP8MiwFdkOxlHBAn
	 nuG2QjWc8r4s9l0xEznIj5u4/WWScuc9GEgO7nOuaxccNrattUg8MD+fHgZ4vythQh
	 YMDkcfYfyNZ4W03sxC1XmQotJ5eHdmfn2BOlPD/OQ1+5XiIRGQJLIZa6B+5kFw9bNG
	 VIIvHCenT8TtxCnQ7ZjeHoDmpIYRlMV4FHLAlUVOdNO8o/ervKszCVUoPRbvXHJINU
	 l1z7Y9PoH8/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E7C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673739358.29730.11342838281384863836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75f93687005e47f59038470818026848efd5854093cdce81429496cbbc454d4
Date: Thu, 08 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746737393
