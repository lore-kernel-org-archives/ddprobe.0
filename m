Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0B93D7D8E
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792236034; cv=none; b=I+/ehswCAUc4dVt+pD6wYotW/e9suTiCWLhsDSFiNKIKLcheIzLbSYB1ZAgCOBF/rPZMq8ns/GTbfFepz2ByA+AX7/dYXab4AtTlvNP9Q7eo+lhkx0fmVYiHfd2dV5b6ksxnJ6Higd/PsOgqHz9FIrLzXLepgYdV02jXwaE2iLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792236034; c=relaxed/simple;
	bh=+/IxUC186W/1BHEw9OuiKTkPohgoKefq7FKkC9+UKXY=;
	h=To:Subject:From:Message-Id:Date; b=NspnfR8PdGp7GOlopIYe4tSoQ0xP8RgzjQI7wXXGhzY2aqOer/zvS92fRGfNif4vvvkvxS6CpiNLtpKkdzax+YtxNCUebo5MFCFbobYFD6Eg7HxtovqyDloTzYDjLeZT546tZDfQ0Gq2DMFhTDiGlPlhrAfuOh8fFZSwUP3LUJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+zzti5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+zzti5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3348C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792236033;
	bh=+/IxUC186W/1BHEw9OuiKTkPohgoKefq7FKkC9+UKXY=;
	h=To:Subject:From:Date:From;
	b=h+zzti5cu0i5Y9uL9hHIHyfbTbM18miKTuYJeZPkasSWdZMa2dHrbmE1DKbVck0UN
	 YjBrdhrAIR26TugJeoN07MSlHwsoBmmuvvHz6IXjO0DZ4OuRZaBIfn4KTANijOI4/n
	 Sy6pq+36paWRhWsozwxgEdjOjRFLA3qDsU6gkygDWeGlKla1wx8aM4Kg0WHS6rQPyb
	 E1uFvhPhp+ArNEN4d+QP3nAZKYg/NBiodA2rui9rMBcUw2Z0xn7eIaEY5htQ69fJkp
	 HqM8joG4g5eyg9/4csBhoLhFY+9JYuEeudC5ELhykCoxt8fIEvg9VBDYGMwjS5Z0jG
	 VCv7SSNCL+a/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09FFCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223603368.28797.11301611516195157413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6397a537c4dc98bfc005771f9cec8206bbccede4722453cef8ebf230cd2f7d
Date: Sat, 17 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792236033
