Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B053603E8
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788589234; cv=none; b=VNd+MRX1wNVVEqIl1bXjEzlTbBmuv6PzFvDELFgujfm234vJmozHaQlmPczgwERjrojjlbkbU60EDkJdc4Nhkc+lj9wyeFykYKRulIQO5dBOncjPPiJmNtTcE+pzscl1WShvaSBgy6LHib3ooNUHAVZryNrKExyLlCXRfEIBgp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788589234; c=relaxed/simple;
	bh=ggTijAL0X4F50rHjy1QMwk+YrvWtg6xSgZNPk2V3jVM=;
	h=To:Subject:From:Message-Id:Date; b=DQ9OtjEefk4NLvbF6qDVYmmgwcIp5vBIuWNmyfmZ376GcVIZNCAq7vDriBejdVUJuD+r3+uPLo25/sIlJ85yQRfgh6H4lhqqxXte7Gl4HcmSQrNkOLQB1WyMqHjxQ0Pf9y7WERfQe2f/8Aar8BX73CUIevkOG/G4Z5BoB1kxkWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0bZR1oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0bZR1oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9D8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788589233;
	bh=ggTijAL0X4F50rHjy1QMwk+YrvWtg6xSgZNPk2V3jVM=;
	h=To:Subject:From:Date:From;
	b=R0bZR1oVPTxsZHc170xI9lD2G/LuO3xVHT/jEa8ywCGYbS+RDJKMDvhJP+uaWidCh
	 s4egIxo3tQGZAT7g2rFdQPBXSICoWQN7Lh32OQBnvUxWkBS582thfWQnVAIqu6pmxW
	 YTLEWwUZ7s4ELzzOBblJvOcTHK8ucBRgf3DpbUt1wNw+qOhTcfOi7yBQHQigCZ1Moa
	 DJ8cL0BNXxh7//qib8FcRJBUaKgBefJWmz23az5AigxOyHlF6fx/v1rlR40ZZvm5gD
	 ptypJho+oDphd604q3DNfZx6QpHv0n9BxYGOhUhYH8QCOfA6BDsHMcbrLTqsVq97I5
	 pTHdXAmG2fn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB355C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858923369.6810.17848627542974457048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d1eb9674b0c4df92a05d89891ed7f553ae92adf33a88f6930803c1c9a0ea4f
Date: Sat, 05 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788589233
