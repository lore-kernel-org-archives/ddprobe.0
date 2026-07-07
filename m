Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF13217F27
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783404516; cv=none; b=hhpdmxAFFdCLnnp5rgMc7jqPXBThiOrIuXvMU1Gdh10DcI1ZEn52e1ngToJZrTQ1tEgDC5FrA2AE5REzCRfw49fhKEKCP8YwXEhcFULfbdk/+u3mladaEcENgIr+oZgFxoQCy4a+rjgF3rPpdN+e4vV2ds5OIIMlCFlO4eYejlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783404516; c=relaxed/simple;
	bh=M9m2v7TVDWKCa+oIynQrLdUQkRC5WysWGcr+Vt9dZus=;
	h=To:Subject:From:Message-Id:Date; b=M4q5ZWZPDblCAjIu7Jdau43JrGo9GT7gfkbg2bsSTY2ZFTRFx0yRHn/wk64G9FohRMSc8J9eHWwOw90CACD5oqX9cU8UhnJki2RG2KYkaUO2fSizYluBlgYOMlcYToq7U3iV2cCIR0gb7D7iSofYSm24erj5YOO7+tc3JZerHpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N42eadSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N42eadSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1879C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783404513;
	bh=M9m2v7TVDWKCa+oIynQrLdUQkRC5WysWGcr+Vt9dZus=;
	h=To:Subject:From:Date:From;
	b=N42eadSHu+93LIahcu6aBONp4hxWe7V0sKwa4GynWP7nGhXnyEgoqfvGHzmWYX3/8
	 SxqhmgfeDMzhlrDlXeDRNleVaDmG6rBIzi9LzVVYg9pd17qK3uYSs9JB633HSmYYFx
	 ASUh0IyEAcGqgCp4nYEORkHtKyExW05reuQk6byfY1rajbndJh9zfPfe+q7P+1eZKm
	 e2HZdhkOBPLzfzUCQfXG7BDedLfDGdP7KKe7DR0G3sEe6/LoX7yRSa3LyAUPfO1pO5
	 8WMSx8DDxqNwZuI9VzqEq7gtndsr87EFGKwot0naq4A5/9s03tia/Xe2TtB+IKDX5U
	 6FqIlrduLlM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA44C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340451370.25482.14784530914339576324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003c5f290157e9ed8727d51af98a1e35abcf67c3a5f57df55c8f5086c65bdbd6
Date: Tue, 07 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783404513
