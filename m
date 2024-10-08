Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214F31CFEA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728413154; cv=none; b=gwQgAJ4iqH0YfEbRnDhRV8HeWmTnleH6R+AQ/DSwccLdPTzoXaXERMPomYbG9lQJ0+uDZZ/nNtoRRELpq4an4UC0aTDS8oR8wfyNCr4RMd68nHeLFnANWVgTVGKbEy9dbVyfHmcq7+Wda++SZMZhQ8T6PZWiB9iCL4OndxpWMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728413154; c=relaxed/simple;
	bh=L8091alk05nlG8J159f1klLjQvRKwUwNpg9qfSdLRyI=;
	h=To:Subject:From:Message-Id:Date; b=iYokivBo6pc8FETbZZ97UXYPO/2fWQU8ZcaaWglrCiAVsfMHEMYz0yC7RgLoGURBr79xKDPF8TMzGrfgARBPnVAbPPori8qzdoluIUMAUYLfRe1YMol1u+xCmjY4R6exj4+sqaUwiYKa9O9ohXexXD9Ty1xf7a+ltrqi16b47b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koI5smIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koI5smIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F5EC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728413153;
	bh=L8091alk05nlG8J159f1klLjQvRKwUwNpg9qfSdLRyI=;
	h=To:Subject:From:Date:From;
	b=koI5smIZNh39GZoVjQItiG8thNUQ6Az6hihsYAabZa9RnAAw7azKzBjOqBJucWkZq
	 opGWtXdi4STCtalU1HMJBu031AKeu61EldEUBnM/X/2zPs+Z5HZfZzra48UzIiNQFm
	 l60rE3Ukz/tjCMpvfx+E3DisEv/WaqjnF2yNkC5UqOCl8uJU5uoZXAri8BXDEhsEHw
	 R1x3HBQ+OkxBTvkQVcyBx1NC+b8+pLoDsvMuzIHujca6TiDStGg58mokQaa55Z/4sZ
	 YfC28l1u1II45Yk/DQMjQI90UirMd6wA+f8TmYgeiTpth0KkSXZxBS+mmMt/pbd9fS
	 IfxhcEeWSSAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A6CEFC3D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841315361.24183.7041157348253302847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8ac5c668e3e1fdf7cdfd26af341e4c989ea3ae5a2e2520ec38a03d4fb04d0d
Date: Tue, 08 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728413153
