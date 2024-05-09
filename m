Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EA012BEA4
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715231543; cv=none; b=aO56mXXqKXH8HeAIeKx39TPu/NKPglPorrcsAfH4qOStTOQl+bhfAO8gP6k3tX2VmatXNuyXTnXvfaVSYmFlicz1cMOISHKzKlWD8AosYYeFjr0IS3kCCAw3fqUS0iRtAqlo4kBlElHHnzIY9yowMgultsv43xrgn+i0ZwUrDF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715231543; c=relaxed/simple;
	bh=Z2Rgb4XyL1e7fxspA1afe6N09dcoN+Tv1Du6ht99yz8=;
	h=To:Subject:From:Message-Id:Date; b=TZ7vnNVZgICKomhoTjAq7mPEQCRa/1v1cdGCxdBTGm2CzvIhk0yJnvQatWYF1wG1lyRuBXOyneQUohTHAva+ZUnj/ccQ0diy/JT9saUOHQNP035RyMDB/uLcpL5Z+02vwed0k7kgz0UO5DaiGF86q3ZuDGcL9iQdA0xTBMt1BYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEbxcidB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEbxcidB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F52C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715231542;
	bh=Z2Rgb4XyL1e7fxspA1afe6N09dcoN+Tv1Du6ht99yz8=;
	h=To:Subject:From:Date:From;
	b=TEbxcidBT6LUMvi3psxpPm8QkE12wvy/UgIcdS9Hkn1BV7ira84spZ6UiCMcBibgE
	 pCWPwzkCaogN+uWdqhNzOlrQSzg1uSN8K3JRBZSOC6XwVOQm0tx57V5OSSwNZCKZ9b
	 9YK6VVOMlLXb/XnXJh9r2qWLesUaJFfjG5Suw6XPDL1cRBYKJQGd6loAUUvz2+y53x
	 vmcL35r6ZhVNs4LpoGm9TbRRJhDEJkk9p4Zfel9UqDdZp5zzZ3bRNjWQpH6nVbilAC
	 bPAEa95dHhU0ppmFy/H7h/HH2HHZgNoY45n+fLmR5eNV4Npv1JuJxZe3B4wM6LlWpa
	 d/SXQSyJrULNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E0C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523154278.24815.1982339775837648622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a862c091d2f0d5df30466e8a950bbd39f29e26fa8c1f1d92a85a3394e1641125
Date: Thu, 09 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715231542
