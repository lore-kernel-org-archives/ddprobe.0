Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109692E2F1B
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755008994; cv=none; b=K9SeY1c9M9rxpD+j35pkyrhY8itbDBaH3ub7F8Xm1ZmcFSeHfuOzR+HRJPxGkNTUiBQwtEXz1G2zxyFg8roIpjK1kAPPZhvtfQ7dzjoYJyP2DEs0rtYFBPBHSeECa/igH+WaMECvhpHFEsgpO8ouHgICaoDyndklqgeAo9xGbKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755008994; c=relaxed/simple;
	bh=1mZk/0Vj2Iok/G1ToPQc3o5B3dSAiw/IC5vmba75dDs=;
	h=To:Subject:From:Message-Id:Date; b=SI5ea72xAg6Ad8icKN2b1lWLRzuA3FsNxCxna6gLP18eZ+lQUlbLPnzWpi8ax2KMIJSAHC5RAS71cDg+WgXsW/5WBNKJjarx+WRCx+nqLie/SsBfAKcM02v3aaZNSw3QIRZExliFEvkOXFCV6AKVtDrX7LTShozo/3sBgj5QLBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLdaAOip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLdaAOip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11F2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755008993;
	bh=1mZk/0Vj2Iok/G1ToPQc3o5B3dSAiw/IC5vmba75dDs=;
	h=To:Subject:From:Date:From;
	b=NLdaAOipKDdiEN6zaOTfVtCE4CZy8gRXKzXKQ86LN1AfeZ9SXsOQrhHjHE3pVa/L1
	 DdFe0z+/Q40il493+m7CwZ848sd23GPkKaaPeEYMs8Zc5h4HKEasfEvSJjSP9fh9oa
	 u2zeqvNWurqRWZthaQ3UTqWlkiCfzEFjSHqeIDycGDZ9f06bGywn5VwtTLWDJHolxe
	 wpLsZJ8ebejRNv1mrxEucASCS5imdga62nMO8aSkC1vUIlAi+Pp0yUzuEZ00dzh2Co
	 pwKve53kTzfTra8P5bfWnBDoMfh6KOsd00/qgbQi+yXlzoUaBFdr3x4FrogNiWK/5o
	 b4cmZ5zb5kIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92226C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500899357.31874.124848775120586452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8818dcdfd5a24cc326051668421dad7e83e50bd40b996421db9655e2d3fe3fa3
Date: Tue, 12 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755008993
