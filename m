Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0410419D89E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773099294; cv=none; b=RtXuxylpi8kxMtzxAZt7iZhANcihC3ft1TKQ4vbdhDFE0fp4DpobSwMHT949cOLV2klUOd1CZ6d4Nx5GCeMM/ZlI/667tc+7DpK9cx7GxyjRXHzYfwviWD/OfMJL4uUvJu3jhz1lh2ut0kGn78opcs18WdRVFeQ5X1ioxdBiQ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773099294; c=relaxed/simple;
	bh=OfP+Q7qphH67PF+HTLPiIJ6syvtLcEVOi5Bt9LbBhzw=;
	h=To:Subject:From:Message-Id:Date; b=dRjpLOcsK9mrCw7nx36MXzlpzQQRpWcRuoxo4DIe9oM3uh8Rtijo2ybd1E2mlkd1uqvcIgrz1+P+EZkt0bDl3dP565fXeSkLvSzw/0ICm7Wt3gOBknBL+4swXojQ5yDddkqkB7qrrHKiRHlj7I6QxIY1v4ZsBkDXLtBNf8lA6fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWGYvHkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWGYvHkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773099293;
	bh=OfP+Q7qphH67PF+HTLPiIJ6syvtLcEVOi5Bt9LbBhzw=;
	h=To:Subject:From:Date:From;
	b=uWGYvHkjeSPnjW/Vha5bD6Acu84zWjGz0QA4DfvZbUrU8a97JBCLVr6WfC/Da3Upn
	 hvn8XWrHM1nVom2nNbojteEG0hG84O8wEQM52MRK0key45eT9zMWmM/56HODxN4xoF
	 1UpcRyxLriD2nDIjo1qBuV+G2hjDRJms6Oio4QNNBx8cQci3a4Q/eVhMvwrqhJME8f
	 xGgb59c4DP+oYjVNMsJ5nBTZS/i4qVzHUURMuODCPucLeh63yMkqriTU/6AS+Tt9vV
	 X1o4uarSVs1LQlNMWmXZCcH6Vczb7FvjbNP1RpldA2AH8hhIG+MkdNtCu1zJEH1vmX
	 6nIDIJCrHgrpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91FFCC9A2
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309929358.535.3402642790030249085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28a96f88e3f6bbb7a052f5649050ca877427f37286e3b5e65dc7b627338abb0
Date: Mon, 09 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773099293
