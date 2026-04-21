Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D6729CB24
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776810454; cv=none; b=M/pox6YDeKxjgisoo/v58JyQF48gdd/R3nW9eak8uOZCsXDjMs2JpLgPEH+ndSl5tvWGCyg7fc4yvTy5pzHeop8LDzUsD1U4elLmcUw+Bn972kaCFx9BWBqHdbH1i1wFgRjolxtn27+VxFzC5lL7qGpRgigFSuI8v1wjXHO4aG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776810454; c=relaxed/simple;
	bh=+WeCYEraeNgOLAk3hzP04lFCyXaYqor5xRsgDqaIE3w=;
	h=To:Subject:From:Message-Id:Date; b=kGOvCol42VAImCvlXZwgSBXZJ90uGDiemqjfgOet/t36PKT+nNIQtzcjPC7/5b+4jaYQNaCyJANPzIxs2J6a4+Ln+jBZaBcfVrpmQEGXHIXT7l7AVbN8e9soaen8nXOI76ZG2VTnrHfNPSDdnfjTJpcDjK1HWMFqeE33+Eiyo+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o14XJmux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o14XJmux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE43C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776810453;
	bh=+WeCYEraeNgOLAk3hzP04lFCyXaYqor5xRsgDqaIE3w=;
	h=To:Subject:From:Date:From;
	b=o14XJmux/9rKg9pzqnhz1Bui9UtNx01yvX/74cqnrkLRVUWYhBSqnH0nd2yATcGqh
	 5xg4nA7HiF7UA5RszyTAohdFyus2KOCzlhQ+Xbh8TV0E88kiHujDWbDDnZb8IqiYyk
	 36RwPaU2vAkmTeW++8uMAi5IJy0/I0htRXc8WGSyk8stndJqk0sm7rOJdXRAIZfrzY
	 CF6UrNUqXHdF2qydLYi4dczmbc1bJ3nkdIvHrWN9k49i908Vq5GhpjcLyRyED8DJQ6
	 GmgR3R5JsVz1s+tUvTxOW03Ah/2tvcYUT/G8fP8xtOabBKCqeRLPSH7JVTP7fjeNbA
	 cCOKIDlvC7vAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6CF94CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681045368.20264.9238194058095890598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8525ba882c252215ce1ac8d10cd913ed832c52629dd1aa6f79d5680ffaf4bdb
Date: Tue, 21 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776810453
