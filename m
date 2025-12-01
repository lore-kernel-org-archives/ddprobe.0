Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27810200110
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764630174; cv=none; b=jSCEzaQvSw/pz6ALOpcQdhXSrC04zDRJOxQCTfeGYjZFMv/z2YbhCXuf7AISlSUpeGm8HMnKlZasBSYtBH1TjRcTXk5MUrJv90rjBkqgbWlxsqm+/Ee7T5iX3ZfqKlEyDL65MHMHR/1enf3D/hp/94QeftmRUKd4YEBN985+mhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764630174; c=relaxed/simple;
	bh=yCTmEqmmvx1c0HTQZfZotngmZRHUsInA3UNN6boEPnM=;
	h=To:Subject:From:Message-Id:Date; b=OMYYxzxccOc2zMUw2/W+ZZQ3CwGXVDZ22Oz597vdO/4iE6sb90PekWjqId1KyJmmKH+P327ADOx0hhbz8voz8blhsOP8ZlGUgPFQutY+gMa6/0MrdUtEhfznDPZzVuW/HdCGBV7m1JT4zeggZeW5VrKtz2IQfB/5m/W4ovbN0Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prJ48H/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prJ48H/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5499C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764630173;
	bh=yCTmEqmmvx1c0HTQZfZotngmZRHUsInA3UNN6boEPnM=;
	h=To:Subject:From:Date:From;
	b=prJ48H/l8NsEKaMjO3xWcdNWxHveuiFzc+tO5MRRs4TMq6LuQsA/gx7wok0/2rSPD
	 dKwO+Z4I3vqF6WLAtw+a8FjNwnXbp/yWjRHh4UF/iwWqROkPUMV9I9pnHNj8Ittp9z
	 Vk41pQDsrUgIQnTD0HBe52QVwmiWe2NxOn2gm6QVT5XluMfDWvJWg8di9Jireax+VH
	 14BKBhRA3cjyJGIDN0fNGNLMdWiMbHnXlTsJLNHuk1Ko2EaDpnQw3JVGx+H8Ld6WVn
	 t8jnfqo2FNLqZ4AAfYSBSSQjMqc5wqs0Nyj5KqzeN5Rrg7HVYBF0/d33ugYbnbiM9+
	 V3wnFhvb9gSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E02BD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463017363.2925.8822278078637936909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a87f8580fb85850ff477cfae8f10ec13d68bf31fa46377dc1035ad5b182e6f
Date: Mon, 01 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764630173
