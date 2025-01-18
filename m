Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4E5789D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737192354; cv=none; b=lU76XN6hgb0P+wnAQdBaMBNqtF4bWS7LwIw3Xev1D0rVUyCDUq+DqRCxScxCz4+Cr0yan626vId5JoW52NKES2q4OORWvDRbRCYZ5RRl997pGENgRYh28vsTR9nbSyBIFnG9rPlgFozJFySg7PtPXMWrGuIDTmhGi9KFmAaPKjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737192354; c=relaxed/simple;
	bh=pqwiXw1ifCCV03jnNPJ5bKV7fa+SPBm1eLnjuCtzy14=;
	h=To:Subject:From:Message-Id:Date; b=EetSN+V/L0stbRNI12nGuL95r7M5/RQYSH5rknc7AjAYrtiZS3ZPtTtKbxB8aMbS2Zwr84TdTslscU9aZBVKFqdkljhkvNdXuakoH5cS7StpUvEcaytNsUXcfLMIjaq7I6sGakU6duqdqX11mEQohpzkoL8b8ujFXNFzkSj0zeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZRcI1eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZRcI1eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E44FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737192353;
	bh=pqwiXw1ifCCV03jnNPJ5bKV7fa+SPBm1eLnjuCtzy14=;
	h=To:Subject:From:Date:From;
	b=CZRcI1eXFa/bmDLFPyzcAiQQOc8RSNa4WcQs02qa8SXdMD98+LMDjTyqzFuo0gsKJ
	 lNi7BVdd6sc9/m7C6Pibqr64vRPp/bjN67FGN4fICbp7HklnQUKuM7w8BhWe/o/IGW
	 ou1AtAyAjK9FlmyPiWNRosfFDL8uX0anJU1pUAusrDDfgj8+k0dOkB5EF0fUdYtfwq
	 S0EpOJWZS0ncfwKB9736u3mMsWhZWck3yyy9oOG5L7G5fRYOpEx0QxngKq9CrGj6d6
	 zv2nsFxwYmDG2tIZGQ68dBTBeKICbKYzhzzcIsSu2Gz/y/+iGzbYuu7lHPyxykiLFV
	 4DWTyB7ElD9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E4C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719235357.9174.10375014905729182639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edca82fec922d5442d0a2aa9534795f213af42b4ff51e7d41deddca0fcd1e92
Date: Sat, 18 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737192353
