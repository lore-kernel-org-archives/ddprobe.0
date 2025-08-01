Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7A4184524
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754079594; cv=none; b=Pn6lk/AN/7c5kj/fIAPqAGEAkXZktQqUeTVY8meOlfsyQFA+IsPfsaap/adN5wwrbC+1s2i0PVmyk5erb5ooJcqmQvnz/BATPge1xa0ugl7WvTaEUgcTC7z+p0aLR2FCyx6p65TThcyFq45QAqv0f2LrKKj4jdd7+dFJGJo3FTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754079594; c=relaxed/simple;
	bh=VPap/UhQX2EIalnAnWtYAdZNlTklTYVSu3pzYUkJvG0=;
	h=To:Subject:From:Message-Id:Date; b=N8Q0Hit56PpmDZhzbR9tVWTcELoqixrHtzh5Elj7mRC5RQtCnI2TRqSL44RssvqlgUYZgayrsQf0rmE/LL+TtCMY/rhCWWahd90ucmtdH+hd/OYInSRAZkqBZ+yYj4GFe7Zdz1i6dg5rC0yOH4zK/yhIFwr/fGEWqBzMfV1ph4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXiEP7Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXiEP7Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C46C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754079593;
	bh=VPap/UhQX2EIalnAnWtYAdZNlTklTYVSu3pzYUkJvG0=;
	h=To:Subject:From:Date:From;
	b=mXiEP7Wm8zFwFC+1uamIV+jDoDWf+69eIoCRyYrHhCxAA298LYDBRxJqZxVL4XHIC
	 +s0PiX1+DIWRW2xQNofAVzs25YFVBvHxUdjBrgyoGXtFatddyh5Wn4DSoRJZxYfDkF
	 VYBKvRVuejjpXDCAz0AVjEVi2LYZMZPWdlDW2SwmoWPUZGUZbKvXoa2PANEYppkxn7
	 LykhlgiD9WpA4ykMG6pY7KKlXwUtnEhtzAPWQI1eGwjMyI10MRK4dMFJu3OKk7jJAO
	 lhtCoW1pu+l7xglsyarbp1igJv4ufyzcWgB/1+dLbZC6Ir5fRYoyoFT6lxYfzsWN0E
	 2Tt5rKd73JAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA8C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407959358.30308.17864106587415168062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2c97741832f51ad2a0ce485e5833ca5c5569fd4280bf5a099bf4e2af58071c
Date: Fri, 01 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754079593
