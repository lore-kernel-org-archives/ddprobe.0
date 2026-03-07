Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1D345CAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772873694; cv=none; b=snVF3diFqK9WfQRy4Gj9PNwZDaH1c24OGROYEZgfTX83/udblH71zZHfQvjAONdVZIzh8u9nZ7f51dT8/WHoAPg8vqhC8hse60RestSO4/UkZcjiJ0G8ExMp+f6YzTzlyLd0DniYZK467XsjZtSFVrxuZ4swX7IyEQL/vzukv54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772873694; c=relaxed/simple;
	bh=WHAPDIOWBJBTs2pyqsetgC934NUwGMFonWxPwPB/e28=;
	h=To:Subject:From:Message-Id:Date; b=dobkxZrAQdKeEE9JTR3TZzcawLPXGoVZMMX9vrhcKga7vZqZsgAWVIn/ttD673mMzGNsGYM9RWo0njn+M/1CZ2l/JuGHyfdUfjAcD9gHIi0ZmwCVoQ62eCu5P4jxCgU8F3/pZ3q0k1gPfBuJP88FMyAuiMERwj5pjsdMAwoLLhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH/2jq0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH/2jq0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C720CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772873693;
	bh=WHAPDIOWBJBTs2pyqsetgC934NUwGMFonWxPwPB/e28=;
	h=To:Subject:From:Date:From;
	b=GH/2jq0dwPuPwRM834SOSYpeONCTRl8gg6jqfK7PSPax3Mn+rq8IYH7DysUrzz1UC
	 EYo1HkGcIzwHHHdBfc1hjoH5MeeLryhh9XMRhnCY+licH2drCjrIc5Qk27m4lsUfu1
	 Ccm2JddLPm1b4HSPvJseb7FY8U5Kd4aIR6Eqgsf4U2bGCn/MDIIIsJ8zqjysp3sT/d
	 Gl9cWDt8AQmQveWhHlrw/evLsEFimxBHZqjZwkCUIljMhd07FZUADNmV2mVY5v7qQg
	 +Bn2bLTE3hbf0P7FVvL3r1RL09raTmvKHVYTBHq9cXS+ipyqOnOfMBo1YMmtKquDdZ
	 t14F2AO59u8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B4FC9ED9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287369368.18556.5177738518294681622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03585d931ddbcf68d0b4c632a9eb9f3a8cfc8b030ce8cd8b429f4734611eb0e8
Date: Sat, 07 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772873693
