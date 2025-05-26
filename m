Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306271BE238
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748260794; cv=none; b=K5CDR7KP7pucH8EKmIngZV4+pl9FeE8DF8yQphwC7AbOlyOD1LybNcNILJi2fvHx19E4Cw9nem+b2mFU0wLpAluIxnpgnproBpE3Y42nKAYI8RFua6xDGSRDX0hGWM/yznOsZf/pBWtrV6nuf1biivvcMSNKvYSDATzYSj2sWxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748260794; c=relaxed/simple;
	bh=z60n51TPQEEFFq0IeTnkndmxvh/o7CCTWbsaVLG4RRg=;
	h=To:Subject:From:Message-Id:Date; b=R4NLhXcSvFUuK+zJQAz3kaoZ3euBlcvDZhOQfLKzB/orjqsKIN10QNq105CxhdecrsP/kbYPcyTj1mFNgSUqTHSI4KM2Umx5nPjQZ7HD6ZS0tc9xMxl0zMEdOj9wx128qHetMrDiil6rbvtWNZeq19CKCWLsD8UIu+OsF/822/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIukidd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIukidd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B5C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748260793;
	bh=z60n51TPQEEFFq0IeTnkndmxvh/o7CCTWbsaVLG4RRg=;
	h=To:Subject:From:Date:From;
	b=vIukidd6yi0OHyy7nikPvokah6PCEqE0RAVZ8iULeeLAncBjSWM+qhu9Xl/9gVJ0R
	 A7bzqYn99UhJdVb0uFnkEepMMPW9ZH/x26lwY9N3A/dQp874NIUwzPHMNQU0zf5F19
	 TGfJMcHpByTqqMjC/Zehq3eMLYrORfm9t/5GET4fHm5XgJBfz0avRxtJAJDNSm7s5b
	 wfn5RxdHa2Cg5ExIT+CM3idsFlZ//0HHfO6zM/OgXKHwZqVm4M8N1gTcdRPx2Vuh21
	 6TGWwUJ6fh2N9kWlpTyL9jHzje4EulP0hoAxKOnwOVQ3ybXx+rIGUpM62idLOiO94R
	 u/p9P+q9wvsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C218C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826079362.5302.11722569043357079654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6e47f317c459712dea0539ce53e4b3dc9aa6c4aaec74e2440d2436ab129259
Date: Mon, 26 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748260793
