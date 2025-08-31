Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AA2F9EC
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756600794; cv=none; b=edi6Q/x0ynVgrELctWvfaQreYdvDSvaW3l+2ln11+J1RPWZ3yDDUVvyodfpcMe+sThYJutHTepZlopPg6W2KxBCy+vJ33++Bint+zJbJbCUIStEuPyUhl4Vqfs1NO7y34dn9wryHwhgNsRe/wJFR+MqI+j2ySbxxBAvQXHBawFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756600794; c=relaxed/simple;
	bh=j8FhCqKLiGW2W6NvS/dMVBulYxHm65gqmej/QoHbY1c=;
	h=To:Subject:From:Message-Id:Date; b=pNMPwR2ff2HPSTkoyW5mc5LTN1TG25MzYCLaRvusnh9xHnGUbD83H+BQgcscffc8xA3GwMucWb7jijHgEjhubvk2+9O2hULpbxjDX9ugyNw6rCsYIlTZOU/qgJGfNFoJOwJCBVWsQMnUbZL8OSqZvDY9RZ+p+FQelP1Gt1VDenE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+FARPHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+FARPHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756600793;
	bh=j8FhCqKLiGW2W6NvS/dMVBulYxHm65gqmej/QoHbY1c=;
	h=To:Subject:From:Date:From;
	b=S+FARPHMNgdkNIBp3wLRTT02C4DaAUmansqsFTjzZLmtqu+zRaDU7dnVa1EuQrKVF
	 1FszS9Yx8UA6gt7MEsKawrjOv2d4aUUWEJviDaxK9SBHvKhs+5Ypioi7cfybPaIZTP
	 qJjG/lbaACqzFIo29/ieEuOF980lLgT0GGXiMOJX2VYtoQkkUonrYtOrdaxRVS+G8e
	 KYJFOA8Ek9Wubpk7ZW1/s72t84Xj1mhrTomR5rJtFhU3eiTz1TlSWVikr22RnOwRIa
	 xUzI9E88f/d8eDOvxVi8k44IWWOuTyRyVNUliW4wamOOr6k/luxm/cUAJjSbdJpSWY
	 D4V+7tPKqEFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ADCA0FFE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660079357.31076.12447781559906768623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67da2aa3f69c610757c0fa2582a8bd43dc9c776d62d473350b5d7d98297b849b
Date: Sun, 31 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756600793
