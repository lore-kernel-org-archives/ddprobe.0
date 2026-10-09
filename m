Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A484ED1BB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791562834; cv=none; b=d/lyMCwN0aIUsKMKARdub10w4+KB39SxGYu1Ot07oH33ChjfQI5DeYSb6+kp9ntEZ5+kDeayczAA459r2Dlove9L0Y7DHxmJA6t/sy7bNOABTLLYBYH+vku+Jg4IcoSzt3KY/f4jfecpH8ETPyUDdSc7LxfbFDjtvE1fmeijKX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791562834; c=relaxed/simple;
	bh=hJTqzDUi9G3BTZf5mgwQr+0uNr9HZ0frsBi8C8AfvEU=;
	h=To:Subject:From:Message-Id:Date; b=lBq7iKuA+utmjdDf9X1pDY9nZ129M1Y3LM2zS2SF20Z4rZCYGHeOmShZLzINQoI24xcya+9xwn08/6Mp3Cvaz9SiZaipc4FkDQiSm5ICj5hGsyvjfGEHocNnz8EBEcqR5TJy6DwP4w50sAnB0dUCUXZOJCzuZ4TIgHPqKPLUEos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOpFoRUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOpFoRUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2535C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791562833;
	bh=hJTqzDUi9G3BTZf5mgwQr+0uNr9HZ0frsBi8C8AfvEU=;
	h=To:Subject:From:Date:From;
	b=UOpFoRUAfGir/MjPw8z3z95vLlr/8lQhsl0tDxO/9hDM2dZpYvrBA4mog3gZtNRIn
	 +y1NFoGxjZ2JyrKLZup/VtgKfFDVTaR6C2AFCrvQ2h02afrhN1TsK3wpkekGX652JV
	 CDfXB5KZ10kTC/CI3Z/4ZPqjlOW2rb0pKXWYmrIScPpYleNwLHXmQkXtNHIIV2B08G
	 /5Wq2ub06jjTK7itJSQX/U/ENu+kDUjqAIzL6zVcCKgma+yFAgmHK2PD+SoyVsDa8A
	 ytDdGAanXUa05arbmXIr6dSNRdMtFWQ4NUqwdR9N/oxa8pJPFeC8HGY7FM4Zgnojnh
	 kDBU9axVg15ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F8CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156283369.6821.11752667269757361384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9591f3a032ec15f3e22a24ae65262349c4574f6a60039e46892d974860013db2
Date: Fri, 09 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791562833
