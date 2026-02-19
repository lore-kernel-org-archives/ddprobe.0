Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E62332EB1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771487094; cv=none; b=BQHcRZ08ugKXt+t05kIeT51U+NyK/IjkzXRy7qz9cHx6yHTS5o5bk/XXP0eSCOp3ceda5+1Ltf4Oc+RAj5Zgvhmr5TEk9lmSY2CCuPBsK80WAdhbXnmrnZR944PycdjWFcnWK6NTT7Fgm4WFSFUsLwV1IHjMTdn7j8NakV19/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771487094; c=relaxed/simple;
	bh=MxrABP/Vb5ittfW0WdjPA6QptyDlJVqPxOblWYlsWmI=;
	h=To:Subject:From:Message-Id:Date; b=A8gc2kBxwbrUgsNkfOTLGQuxovsG9A0QC6gEX2ErK8iccEKjpCN1OkjGkeA76SwkSYoMcUA7Qy4aqmLYX3iSifOPfgD1VkYxoHUaM9YJoZMqwY1iTu8ed4UVdf+frBv4+ZLT4irMTmObPN/kIDhyN2gXN5iu9A6ilrf96qzFczA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCUrjT29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCUrjT29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5141C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771487093;
	bh=MxrABP/Vb5ittfW0WdjPA6QptyDlJVqPxOblWYlsWmI=;
	h=To:Subject:From:Date:From;
	b=YCUrjT29HxCjwhYFG3ZjrdqtK/bCaRD+nE4lwqxS999AMCzSMWTWs8Zvui1FPLQWc
	 nhLLX0O5zdKyJzgHlM0EKCh6Mv4j//XaD7yirHpMBHqBRFuuqkW+dNVspkPKZqDJsR
	 WYbTAOeWe+oJfqNRoVjs0xKr7Unj7mwTIBz4vX5iF3pBjBrHn7LhZFa8JzJ/HqUWbr
	 1sJ59VAwXOcNUF1ZwHHZJD1Coq4YD3aGWZb3gX5gGJscFB1k6ttpkp7q+HZJFp/aPO
	 iKITp/OutfrCGSz2DkHJA7rAONk5J1N3HuvRzjIAmzoZzSDHVQ42fcxmgQudfVlJ3y
	 gJxIZs5/NHPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E836E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148709360.20496.5315064469227463626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb30a750a91b081583403fdccdf60923606699577472cfd2e94795c9f515567
Date: Thu, 19 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771487093
