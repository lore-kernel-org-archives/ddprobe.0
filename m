Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE5E1D5AD4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780536274; cv=none; b=VTjxksPmn4+Tn87RF197y91TKl1ftgn42skI6XzTDiAX2xQxByZnvHAvuEL6FwNQwtTRz/+ix0/9L7QYFAysgGTwqh/4aiHOwV16pWK9ENlLPjC9AZgRMtzuq5OwXb6Fth3wwasHByQ043nj+RDT4pxk9F4R7JQVZDrP3dLul24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780536274; c=relaxed/simple;
	bh=z2fCg8QDWA24qZIYMKzfMIGntKGksjWBvglQca5oFdk=;
	h=To:Subject:From:Message-Id:Date; b=jYrKjI3hacFZK6NQ8DUX+uxZkl89v+HQMxleMq08lhmhl0OtSwSo9VdcVYRZ+vqhrRUyv/M9wTDWRJXv6OFfSK/VW6fvHP0HUohJChxbLzb7fXHk2cTd8bR+F6Qth5uFWW2gmlu/1ZyHXBStQIVUL8UB80iRwLxqgB08xmDHbvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8fnSABk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8fnSABk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C82C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780536273;
	bh=z2fCg8QDWA24qZIYMKzfMIGntKGksjWBvglQca5oFdk=;
	h=To:Subject:From:Date:From;
	b=D8fnSABkqu6U7NbwRs6wvSw7dkztlWQei7aKmqJh7kvyJZFRBdr4v+JI+ayrai2GF
	 9TwQAs7x2da3qJGbPv3+v+zlxnVE8NRd/ijBstrD360pmimAXy5VdM+QGzPbEK2XHj
	 kPC0mbsM06BeeHvc8gY4cemcgV8yCcYi33Hxcuq7rleCLJ0IITLvSmAyRrX2B160EZ
	 JSGe9lg4e0bd7zQBMbapFvPqaCOd9sWR+erKbKT11F+jB6+/3hm28ZqsLuwpfxRKn4
	 JgSHhtLkFCL/FnVnzYVHUdiF622T/DwF0gsei4zCl5R+b5DWE+TMdwsp0WEbdSd+7p
	 h5QbemM02onsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8CBCD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053627370.31452.17572937469167227254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2413dd26673291a36b062d615242903553af2d30c024381640d490f57a974e7c
Date: Thu, 04 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780536273
