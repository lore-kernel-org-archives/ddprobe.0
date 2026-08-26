Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4633C40BCCE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787782234; cv=none; b=EGBG3a3hxovUGRThCsuRARkepzEMwlBLMoTAT2ZWfYPBSmmRqN9sTFowM3lijV8o9lUmU8mAPNmF7+3x0eNsPn6B5JIDOUie+aAx47iuQd96vd3UqriEiVqKb7kjQub1m3TcjG/thnO8TxMy52REMYaj20UcqPpO++kqinWw0Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787782234; c=relaxed/simple;
	bh=Fui7nvd/FL0o9dLVKf8A3DcD+bvq9v68X4ZSjGeXD4E=;
	h=To:Subject:From:Message-Id:Date; b=gSLZ32f25pYlvuBmg1XNC5UlWX0vGK3StcvLcxOCHRgVvM3zu3kMZAL66Cn+a97eLZ1wYdr6B9uvymWFIVNSjD5BdGm/pSlGxPg/Qr9tgUDUqvE0eHziDy2H/vZEzWTh3a1c4ZOfi1GeIMFnGa7zMXdAVvIRDq8AFsz2WAeEkgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8mBpyQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8mBpyQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7E7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787782233;
	bh=Fui7nvd/FL0o9dLVKf8A3DcD+bvq9v68X4ZSjGeXD4E=;
	h=To:Subject:From:Date:From;
	b=N8mBpyQkmqFv5uqsWS3lsNYMPbzr+HGhq6mHno1v36sl/TmVVFL81N/SjrW+ANlJn
	 kyXlI3pLhfTm8ru7ZQJAiOB5KMVlLrpuOE1sQTE2as+ufVbeCGJ7daldIOXaudDIH8
	 S/kVxHmyrqp377xFcluU6+rwz74Dyq2l/IE0VAuUi7yCoOXBdCgg6JuPir70SIROzx
	 /D7RpdQa0Dq/nLGaEu5ym6rNWSbNP/jXcC0NcGSoOz7YSOfM1BublqYRDVbRGE+ad6
	 OP1LREcDjecR0JogaZlG4FERhMIYThsBjv73OBq7O95p0rgvcQWtpw0SvfEWeXFU1z
	 q9lS44SneFTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA260C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778223368.23290.6562067674895339012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f384de7bfc77149d815cee01065a0a8c8dc3999d08b0e46616db0035958bf092
Date: Wed, 26 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787782233
