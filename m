Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2562E3E4
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709880497; cv=none; b=iq8We58+iXXT44JMg/w9tYxvUGAAFv6UXU8FpArlydfrCxDeTmDxZxwjM7BV7U6cQLlOxCBOJAmaM+LIMgEfEb5choJdY2cc//xrj0rccoLviyT1oa2G/UJED1n/85arZKRjBC/bwVg6gtqtHVaPHRmuYPDXPcc8fmlxvHoYB8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709880497; c=relaxed/simple;
	bh=qbr+rzzYpm9vRpXfdOcxCouY/o3cT1ug+9WAVIpOCig=;
	h=To:Subject:From:Message-Id:Date; b=GZ0MKk5eYtLZ4bETZAKgGFb4OBDHc4unUbCF4kMEAA/AdTgzpX3NGpE1HGrW0dGCkABAfpz7pv0sClSRLupbfip6tnmD5UzrJ8N74yLKHqz/Xe537+4fZ4QGox5eUGTtYvZy3rcQndFPtFCA1JMYxyzsEt/IMqN9hs16kGn/0Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgYF0amX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgYF0amX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830C5C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709880496;
	bh=qbr+rzzYpm9vRpXfdOcxCouY/o3cT1ug+9WAVIpOCig=;
	h=To:Subject:From:Date:From;
	b=sgYF0amXoJhZcFf+ZN/nnPDaTC8YuqOkdMh8lWpBsP4hBHyQbWJpcEedh/zc1bMV4
	 N0gbKxdGjVKWgCPgpjwYbEH8RqgxBtqh4tc5qp/4MZIvQBq5dtlDTRsVsRtLw957ti
	 K+BsXoD1NvVsWldGwXfSmf0+28bY/eOzT8QjITcF8jp8B6sQrcB57VMJCDTeFdvD3b
	 1hHHESa8yfLorN0UyLbXPmdFsJjNLIQvbPvEo/+UjhzR6IdrSpu4s1NT/eoHmXa42w
	 4rVjNca3q/PBxPG5rRU5FlXPsxYSjPgTWtfedxMrYH3/Gs+0gGfnkCWil0aL0RfxVi
	 vrJjtuPGtU/KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C6EC5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170988049641.24559.15521813301765959636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45990c8749526727b32b90d7a922f2f25808c74e30702c3a88b11220ba23d3c
Date: Fri, 08 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709880496
