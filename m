Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F6122301
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772003094; cv=none; b=terFNNAcmZs5U8FkAPpruNE4jRfXU6lmxmrnC4gvwyw+c2JdGA4hWT1tXb4YFebFqgWi9BogwQAUqUeEf45XoqIaHjOnx47irmsbSXCjUiVTSK9k0nPaLd6rX02SoYfg39TcgsXo//zgOdv2CsA1hJGO2pbmDae4wUQRBPwOYZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772003094; c=relaxed/simple;
	bh=c130yjb+T/gSUtH5XxNcadLc+oj7G2DAjEXCsCujdNU=;
	h=To:Subject:From:Message-Id:Date; b=TwZY2r2bv8POwrGJ97npnmWs+V/iL6vRUhHqz5ZucWz9Hu8Iaqr1luLjkmDXR2ZD0wM/rwMNRgQoV1n5LYQRQGyV5yBNnb6OBFhQIalr2BT2CZEOwUfN+3cssp5E+VHTesyCBN0HIA27kf6Um9unOhExN4PDYGJlIurY7hDo8ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubV23v7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubV23v7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA85C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772003093;
	bh=c130yjb+T/gSUtH5XxNcadLc+oj7G2DAjEXCsCujdNU=;
	h=To:Subject:From:Date:From;
	b=ubV23v7ogJOsqSCmf8NaLgoWajjuKgl1awVH4PVV2P7/Ku8/Nn3dGforWTML2jgI9
	 XWttRIqHzFWGAOLkoJuDRY9vm3+vadxFGJ+DmSlPJ1yxBDqX7eHdZYymjZZStYdCBa
	 84Oy5683PF83jjYBw4dSPQAAA8W5fdwMLj8Tt7+aNgSBpZgiNMxIs5iMjpnbhbWzH3
	 a3jWZNtZZo1dzAP3ID+wdSpxC4G/fPQ0fQ9go8hDLy8XDwLxQhT5GBX2sffgIvmSyu
	 TPIhJL2wE+BfzvToObjL8xiAtSjLExQTGbB8EnuBFDer6+ZPlloBuRmmXy+6+MVyfB
	 kbrp3FzGA2TsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22BDF357D5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200309362.22693.5209113293909412555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba930fcbbcd105fc738e3ccded3e7e6cf2e63d04cf43e748cb038a6d80fe84e8
Date: Wed, 25 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772003093
