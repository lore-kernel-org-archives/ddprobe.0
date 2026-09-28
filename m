Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D9A3E5A0C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790636434; cv=none; b=Fz+EoCsjNCzkCKdOmYY7185Fc5Dk/46IoDNnJezxgI2OnRZrNQty93gwz84yJpobhi73XBGKPaCwszshwKn13WB+WzZex6c+leOvflb8z+I03MSD5R4YzdbvesybIUlpr04oQ5oNBxAnsKCtTPBWNx+xivNmBUYySq5GuDjBjJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790636434; c=relaxed/simple;
	bh=VVEatuRy+/ev6j0JBBJa024EwSzMsQbG0I+MeynF950=;
	h=To:Subject:From:Message-Id:Date; b=CH+CsF8Sd7rAF4sEUAP5Rfy52/1rzxTJim6rkGE6jMkqxo63KdTEzSdw5+OsRlfMdzJC+ZWikaH5Ai8s2QdI75nUbdV5qi2DHyg5irvMubP9poJHeBbroV7+Yuk8DguvBj9jVO5qpjMbw20Ztu/3M27HrZIhT55w5pLVwakJOcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj2CbxFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj2CbxFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5631C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790636433;
	bh=VVEatuRy+/ev6j0JBBJa024EwSzMsQbG0I+MeynF950=;
	h=To:Subject:From:Date:From;
	b=Sj2CbxFDEYrIywWZ+ZUCV+yMhKcSnDCquj2ay4Xjwn5/Y0vm7rUnwwC/W5bxl+1Xd
	 c+BdFyVKe/A9c5XCtpnqjxg7Usvgm7elcA7YsZ/pOT9zzzrYyRrrRbsXwVs/if9+LI
	 Ans0PJl2AGuckAKjfPCHTXYeSsuI1lUtpyAq86WM/VHlKRkVfqsLrqcd6yZKEXsLNU
	 Efou9Ei0m/dn3K9snFoUhrVnNQ2+hhOq1oNz3y2z0xN8Hov/W3nZcKJQrXwSkSxww3
	 ilaw02TQM/tiHDkDiRqqAzo0iIOEpWK8UnD4/iZlI4m2VlEi8SaZ0vk9/+uQ8NpIYl
	 1axpDimS7sG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC313CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063643369.23437.401394380579090207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd9a9ac1ff985c0fc0da7336f9e767463bb42348ae0e22e1b8ac3c46dd24223
Date: Mon, 28 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790636433
