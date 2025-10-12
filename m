Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AB31EDA03
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760272194; cv=none; b=cynva6ZnxbdjbgGNIVq1ABx4vrW9grClFfwzQKgs47rgKt9LZIBzCT9oaU8ctpULFlwsVBnHQBuSBbQBjuMbR+f5VhiBStILf4STThebaNw3nNHgByH/am0CSVdy7I+xF8igyWeVzRkGkQb2vYPWU9SZ//vgoSXVrzKeWlv6dCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760272194; c=relaxed/simple;
	bh=tcxkNdCBsY4/D9ev49KMQhAYmL89K+p6e7zuLaal+sU=;
	h=To:Subject:From:Message-Id:Date; b=r1YLySfsuLmQz2IFrJOos1M1etRejLOve3wak3qH6FlZxHxnvy/ohldyhrNb/q7d39HRpbQlq7lAKkePo8gpc8muIEVutTIHJsmXzJWTkl+mkFMsDzmI+CaG+JjAW7p+AVXk2ma0J3OFkQmlaQNEu66nfeuqRQTAK9kynh8FMpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hajuJjxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hajuJjxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A7DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760272193;
	bh=tcxkNdCBsY4/D9ev49KMQhAYmL89K+p6e7zuLaal+sU=;
	h=To:Subject:From:Date:From;
	b=hajuJjxtWsIViMYxjb77OngMU9472DVJt+6SdduA/u3+1XavtnAKVt3Xvy+btK5uk
	 GJaWYD3iEE19cZCW/GNbzGz74nM3mhIi0Sqgt4nQFsIGsokzkgujNv9o0/tnSPFejl
	 5LqFzfNvWEaPBEAEQZrlwHUpNemVK3TAk4SIOtHpuxWj1+uu1rM4zWpgkGRsKUiIF/
	 Gi4Iz/qtyl9uSsHriv1S2js3o+7PICjltx+FWZWusa3t95163MUbIQBNgK/Llr7IKg
	 gFbtMa9Ym6rMaCVO2lUmTuGvPocc0MkWvtia1h3wDT9fcbci38BlVenGARHi3R92Mg
	 8y6MCN+7bLnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027219357.29332.18315404339010330592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e0e67ef8bc9d85a45be828ce095c9cc6176c258915e4bfea811fb60be17a1a
Date: Sun, 12 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760272193
