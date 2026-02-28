Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F741F30A4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772240094; cv=none; b=mcNrfgyYHYP5oLBjRBYYoTO778ku8RVARrGoV7P1hg7GksDu6jsWa5THiIJCbK5NClwbGAWgPqnNO01WHuciLI7cXmczzlOPwIm6QgovLEnS9D2lfakyzGVUOnXwTSE680UFphEROHHLcp5bV0jRs/yk82lJHUWrhDbJ7wQ83B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772240094; c=relaxed/simple;
	bh=0YroG86s3OgenyTSG2lIkqiTa6VOBPKwYBGTSy3phek=;
	h=To:Subject:From:Message-Id:Date; b=XwhBE1gZrb5XWuFQpfn0dHBbsf2gOAY1vvpKbz4HL++7LyIo+jjbfXJ4fqicPiaFy+piw8lyy0676+CqMgC6I3rnYFj+F5JnrdYLIG4xgAGn+tLIu7fiZ5dVly2cqpUsgdlyIUFG9/S86DLhjzy/KOCP2EJAW4ESKbp1ayHg+XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RX8tx5Xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RX8tx5Xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFB6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772240093;
	bh=0YroG86s3OgenyTSG2lIkqiTa6VOBPKwYBGTSy3phek=;
	h=To:Subject:From:Date:From;
	b=RX8tx5Xs3IQ1s5rV3QkM9XwXerwgKGrHaa0OzHUMpqKZ8jr73mEh3LqvjEUg/MpZV
	 jvsIvNZC1o3QxZ3TodnT2eeALRSgquprP1DYjyh1DFoNgNAG7xeLKkKbh+ztEgy9wb
	 870tVFg4BIRU2BU/4cQhljtLI25XfWB7ugqxmgBsBK9R24b0bY1BtCHXERht9fq8O8
	 xxy1j+6IWXk5zMiwTnnQg+gPNbxU1LReeeWTiwyA7hKtaCuLhiwcd2KAYuIHYCT1SR
	 eAO8jKsADcQKTe8BaBd35P6praY0vgHmvDG3mLfaIdMMlhqu3iiIQgZ19ZhIQGz2ob
	 I4Uc8FN+DwS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9830E1048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224009361.10745.6242548925947766312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b167874195aa4b2dae975a57a5a224c2bfa1c0de9164489400b712ad6f64ab30
Date: Sat, 28 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772240093
