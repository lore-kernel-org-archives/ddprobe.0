Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A37B7464
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758577794; cv=none; b=ru5JwbctM8Mjra5pAODz+UrfYLhr/ZxSM/DeUAFI6LXPFJtOqod3KDAh6K5HCAaGGSrt8ColpkaI05aa1JtaxBJr9hLAXGyrugwbQh/4vAN3ETzjjxIA/mu3QeTI57yz9eifDTRrD7VcvBrthiswcqr1u0Va83zGNo3hruo60mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758577794; c=relaxed/simple;
	bh=5E4FpgnSTHPjbZeZGfJxqkojP8c0j22vyw/nfopmep0=;
	h=To:Subject:From:Message-Id:Date; b=Nm6NISqqydlQNJ/b30OIzaFKRM+BK8WKuKANrMmbLS5RTEmDTXebEXJ3XPZ3uWo9/eDYzQJYkWXlyAAo0NAk0KQKHtjmHCmnz0FsVaHjG2xUlqjGxFQMNyGHnjEgzXsXPaVfTsR28KY1qtSLeJASDknZ9z/N5g9mJ0WjcI11wDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPWVH/BM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPWVH/BM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758577793;
	bh=5E4FpgnSTHPjbZeZGfJxqkojP8c0j22vyw/nfopmep0=;
	h=To:Subject:From:Date:From;
	b=LPWVH/BMQf1vq+/EPeCcHk345pImzfMafxfRRYalDixBMT8LlUsVqqipU9HQDBXlj
	 kh3t66Zeao59K3KV4W2FnKSgQ03fbH7JuCTYQ/0057VvkRLN05d4VlmAvuwq+XCm/2
	 OPlliAc0xGVEE6B0Op47SlIgQsG8KjPT2mNisatCGltyTAY+um2epp5vw2k5cTHQEU
	 jKcb4JtF2MaUlrOpkCXsFTCZvDWiRby+KF42hXs9U70weEWMNDzC4ShgWhiDtz2L15
	 Fb/RiIPnCYc8vem4ezlprVgGp13Qj+gmw8lhpwO5yeupbNgoaYiOewiNHCqFq6L4Ue
	 Q5K4eLREWBU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CACAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857779357.18057.4470637882394570370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d264c5a428a4b552a5a84cbeb8088c876810882bf3664725ced9748dcdcaec21
Date: Mon, 22 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758577793
