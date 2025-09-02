Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2877D4414
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756779594; cv=none; b=P2ZoHePlHNFQuqa1hL1f9dJCu65A/wcnkIVbfQAZiLvqRQyiGJpX3mLLyFqXdtBeyNPrGCPXd58R91N9tEyKYFV9fDaAnsgk7CWW4idQSmwsZFrrSS/NlRIPof690cPTQW6a2bBVAE4ryOpDbM7zYOE1nkT++TozGDwh7fmzo2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756779594; c=relaxed/simple;
	bh=zJ5K3aCU5AiWMdTWRqXI9RUaIZBEQaD+d5+6nB5xXCM=;
	h=To:Subject:From:Message-Id:Date; b=MBjfItUaQTcHtv8M6AzLgjTDcmq2yMPLW5JJsxlbTql66tB8BGqHqsUAsHpqq9NgttUfO4dXDMPeaZiICBXSwpwLvNMCgRWhiAc0RH9mx5WxY3DcwdArDUQ6q8u/6XcVyE2ZfWPtDvbrVfEy8pxMf1xGg5WcbuQEg8KsITtUYL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esRceEy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esRceEy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5602C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756779593;
	bh=zJ5K3aCU5AiWMdTWRqXI9RUaIZBEQaD+d5+6nB5xXCM=;
	h=To:Subject:From:Date:From;
	b=esRceEy/y4VY5qYb7w4g2hcA/L7omAWNnIuuS2lMVREky7jJ1CyNBPIERQsoux1on
	 HyMN67xW1Al8kiNUHEE+F+VTJs2zh4c4CPhPzFLSrROF8SKQE8N/uIy/dQDUvfqhli
	 qN+zGCIr2hKnpTHjDNpqcDkzt9angqX3A2FaoLXgJ6gZS/dSfCd+hz+Qsnno7aXdWi
	 cDjqZg1D8UqG/jHCsLndpgQPTX8eUEEqSgk2a5dFp1+i4/AERJA6ejNt26+d4LZyZ5
	 61W1TpgydblWlD6tCCqFEEEudBJM3E+fetlYmoM+BWR5B8iPhW/MRBAUXHlA+S+Zcl
	 uX20d8GEoW1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C5CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677959357.3714.4512642308703679323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576d91e67396f9280dadd0c32794fb8f0202fcf5babf670006bfa098c22a3ca2
Date: Tue, 02 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756779593
