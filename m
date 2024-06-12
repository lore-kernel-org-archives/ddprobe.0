Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CA13F9ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718217503; cv=none; b=PGOQtFRyUOP4Qrv/THP1YaaRlXJLqPpVh3EHwtKLgPHhCSI3Cc/gtZ690mgIgRy4d9R+mzOfBHewp2LBJvGfRaduJmwSFjYpMsRQ9cAAToSp9LYPPn0yJUrvdiezmRxb6YdmDVEG6Zvw+jocmebUed+GPwRQiyX5Nl3ovulI3Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718217503; c=relaxed/simple;
	bh=T/969S9X1AFcxvwRxlGgJ/oW+tjWH0kbBeWzdndeGhA=;
	h=To:Subject:From:Message-Id:Date; b=YZ2NfuI3WpIZ/cZBU3PR1ElziHvgDWImVy57u79lc1rPLvresMEII/Xglsw8TsrWE2Vw41hAJd3IZ85H/GnpLMAR4rQPo25+VTDPE0AICmlqreTTmsgk+TQcKmP0Ay6hJTWCAz0eVkWgfarExp1KU0v8GQWummVCRVucY+dUwcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck+t+bbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck+t+bbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C2BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718217502;
	bh=T/969S9X1AFcxvwRxlGgJ/oW+tjWH0kbBeWzdndeGhA=;
	h=To:Subject:From:Date:From;
	b=ck+t+bbRpenx4Z78TSGFjv0a5Vna5rcx+NKz9TR1TjbgVUw4iaNHf5snKricSFLan
	 Fv6cSk08AmT1fGd6ubrNl3+2Y9yL3OJ8QNybkTK9/y8urYtriC3nGnwNvQRjk1dSU+
	 oJU4PKPP2Pj+cDsRnB/SQILaZyIj5nOWThfoYvXZfOS8DLHbNoL3yPK3hhZPOxRDBW
	 DNnJ6UzMWzQp9+DLZhrEQ6cdKCtLgqAwQxV9sGn8NFQgmTDDoR+gCgsjyTfO0Kc6CH
	 uwtd71A4NfK+Ou7+XDbx1q3VqHdDAW34lOY5Iy02lHMHnidplnB/TIt71k1IV/Z4Xy
	 dmhtIrBftXhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28BCC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821750276.13544.9046073633464850176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5efe3d912e455bb763d21c57ba9cb2de9ea3e0694e7b74552548cc4de26b15
Date: Wed, 12 Jun 2024 18:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718217502
