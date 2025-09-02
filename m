Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018AB2ED173
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806594; cv=none; b=dV2GZerveJUTsdCbFrwyRAAcjDhX5KS/lVhVU4gMIt9+UFoPcSaSf0QIeXfXDGMVumRsD9r5qedg6u8kTsTaAziJRsQJyS+Pd9PEugLnyFkfoOaLOpbxEbMdMnvfWaSpiMU5cIOqI5KRru04ufg3AyjuvJyZwQ5WuK5UGNZBX2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806594; c=relaxed/simple;
	bh=OGyvlM96czGlZGQmp8lZhcr+OapdiEOp74Q9bXNd7bM=;
	h=To:Subject:From:Message-Id:Date; b=ImJVKHU4BL2BiWFJJgpqC6IdCDmgrJvSBPOQ+ABW/r977Qi97tY99PjdPcW4YXLYJrKRH+kQNBu2/CJAWCtjjhfjyMtFRcNvh/D5rYUWj0IoLRYMchggtvROWWR17taCHVQ6MZ6/Fm9Xv1xkMo+W9970rN1+nJd6qPl76xN0c6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4gR1fyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4gR1fyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B130C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756806593;
	bh=OGyvlM96czGlZGQmp8lZhcr+OapdiEOp74Q9bXNd7bM=;
	h=To:Subject:From:Date:From;
	b=b4gR1fyv6yMdMcV/cadZ7kyw6x6WMu/em2oaqCi1XdTMkYGsQO7W3LbcCsmSPNJ+D
	 2/+1t3xFnsyRvuU6S5q9Ip8zbLYYzTTjlyWVpugNxMSZcrrmbs/4vbQQ9JH3iXl7Os
	 hS3st9+28ub81RA3VbL5vKtymnbuFcDyTxD0cyLSkcQEiK3mh5GD8EU+9i6NjF2wdT
	 YIKBE3FtJ6uwcNU/t5LliY1nKtnAs39Ye2pNt6/ZKy1PeUfcjfAukoX6RjleyZBhq2
	 AoZmxqmpAglo6TjhqQOK6M40DYtm6zMYIu+bpAEQZaRzLRVD/voHsozzetE4LHceiK
	 QskcnpL3R00Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F121CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680659357.21791.18003753700794766449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b25707a2ce3bcaf76bd35d6036c41898b638dd09fcdd5f487603d1094b287ec
Date: Tue, 02 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756806593
