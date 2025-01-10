Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D25207A18
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736539554; cv=none; b=Y2e3pqdBfrk2exwlTAFYMaa/Iq/oMA7yJXF6Jutdf9SmgHFeqh9jgnFrSt90qjQbaQTIPtQqUd4AmGO1Uv3gOJV92aSBDNaMmiXIZFiFo1X68irB85A2fbvxLp/44DraONXR9NVbHVkvhdgdTbG6sr5GUZSH0dBNTDzjXJbrRFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736539554; c=relaxed/simple;
	bh=5eqt/NEcwsE8rfe1J+iJH8tQQGNs6tdLC6aPI9g8oWg=;
	h=To:Subject:From:Message-Id:Date; b=BZh5gZPkvdJ60x/wDpXIfk+t8+z8Y+9WfRfPPlfi8UyKPzv94BmVoHdDYF3V4DOhWIpgdqb+ELdwfgMVf0U+W2pm9Xu32d/SFI+ypgtImTV5Vt9oZSDON284Uzsyzwr2j4E/J73XQrj44Js6fxgqPLBb9ZpwAjd00ZAJ6sODmlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYcpqEw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYcpqEw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD347C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736539553;
	bh=5eqt/NEcwsE8rfe1J+iJH8tQQGNs6tdLC6aPI9g8oWg=;
	h=To:Subject:From:Date:From;
	b=KYcpqEw1GSA+0x1JdHuPt2/Jo/k/SSY4KaXQ5icLjouqCm8ykivONKD4y08lJ3+ax
	 DX7YeQw/JUF2otLbY9jyPkMPkmbLzoWppS+tGhaC8KbXHs1CpcgEP4VbiqHlUq1QLn
	 AU1l/rn1+dF5PgScgQ8+ovi2Eqn7CmMNzy6LG9xQN3adjlk/3BTs1CGWJMb9LnKzBR
	 60+t/cSSs0Q/zQFA67F+E7OsXpgO1YkiPuuDeWknnTzz0jWCFnHvUE49VYR4X5AMeD
	 5xY9why9LYAwy8/Jms7r61YNSs4MR+DgBxtJXY3ZFKvrquKmq7XJYOWv4XAbbwgROl
	 Kr+QpUjDP+rNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCDEE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653955362.11704.16308013290373169626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f8ffba36ecdcf3490aad0d18b0f3fe80d3ba610975046462c3b378ae84d4dd
Date: Fri, 10 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736539553
