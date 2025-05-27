Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3193613A244
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379594; cv=none; b=A4kyWEUSyqs7i0jETtoEhJYd4Q6OeAh9VXxTC7g4FGrtRDVl53a4sA+rzonQ4+SMDzCwLWEgo7u7OdwZWxxnObASONo+nNvukK8TxlpwWIyFDsJjF0b4+VNhS4HAro0XWzmd9PWl1O05PzMf2HNwRmbtZ09SAfVnH2zJIJaZ5O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379594; c=relaxed/simple;
	bh=fbsgbX+o2yW9EEJ/GBRr6zCeoSpuFEQMd7EZ6ZP5lO0=;
	h=To:Subject:From:Message-Id:Date; b=dJR4uXQF9LcC51Hf0yb9jIPiY+FJPPlOubDjxeICswkCeQJi++x8+avq7coQv3fI1WRw+xXODXHn3KyN1Q+TBM4RxmatXZGd9ZqZJGv16YbURbW61wpeF5BazfOBw4B9pbVlkdDPZ1XlzuPG5o3HpKt5LXKAO0DVooEIg36ULtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9B2A7Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9B2A7Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A81C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748379593;
	bh=fbsgbX+o2yW9EEJ/GBRr6zCeoSpuFEQMd7EZ6ZP5lO0=;
	h=To:Subject:From:Date:From;
	b=S9B2A7Kk5oZHyRKeancAHwznWxepmrrwTLzLKXFYUKXcT4UNmjDe9UByYczbnxDn4
	 s49O3/6SdiOrQB62CJQR3EJx7RzlXTd642gnNkskoWAYohatKah3jSkrUHwDUeYph4
	 6Awj6W0hJHGcTfs3W5z2M6jP0FRjsKsr0uMmU7a5XBW9WuSlDX1oZrm4Gn6ezYcg2i
	 L6lA/zxNiBY+C+EcXkjioCfCdQ38ChCci6Zg7EwLLtlJhUw0HqAkhSgVmdLNstpzYG
	 UmpnEWt/CnlAJniM0jqSHUufA6G5SPv2zHALrkakJUTPWZFC30Q8NHyMWrzZ1eAupK
	 /uMa1a7wbJevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D7C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837959358.5175.10387336640755201816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca187ce285abfa50fb370c78b0ee94e8fd0d5311ee272e9779806c639d190c6e
Date: Tue, 27 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748379593
