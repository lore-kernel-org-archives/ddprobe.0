Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F113ACC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720433183; cv=none; b=uyP7k/HGNcEQkDI3sFF3d1lQczo003gjRpaaZ08LXcjkWkt44grKUhWpSvcJm//xE+iPi9kqX46Xyl/346D+uJP3dF0B6uUldzqlwDwo0kqIu5342Rk7/GocoEC8JE5VXF4Rb1oAeOY2nqBPThLLMJJZvh5OBeS7YXRfAaK9hDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720433183; c=relaxed/simple;
	bh=fMRIymzhrgipPEGMojcBlsSBmvdloDMfw8a31NYfl8I=;
	h=To:Subject:From:Message-Id:Date; b=btnk+2XMuK9u9/HVNyOr/rK2KG/ddnsIkkrFmCx1jEFZWB4p0+4V4CLn+ffFNDdVMEfgs+my+NyAaGbRlKmO//S3j7nloyo+9jGzTKkBnaA6MsTXUNKsgSzt1kDil0N6uHXaE6K51hbS7VZ5hla26DFFX1Amns66VRdA6f8slI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZ+By/wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZ+By/wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC7CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720433182;
	bh=fMRIymzhrgipPEGMojcBlsSBmvdloDMfw8a31NYfl8I=;
	h=To:Subject:From:Date:From;
	b=TZ+By/wrCAdUm+RG/5aez31l98B8YB7d4rNi4JkzRFwiInch0ce93kTG8l9QXm/42
	 rAGCIhPIGIzXLGOxCbiO8ZGxU/Q0RMAyAETG8qFZotJsZn1GUFRpUU2ve13EEweqx9
	 nr8SjhZax8gc8YtIfYkDFxp7gbq+KDglKXPNw2/pgZDYPYVo15cCVKMjAtyX5mw9ai
	 dkCaZ2eBOnGYgUB/3tH5L/fqL0f8UCcnbtD06laXuCc1SgV9DVEo0RE3NtFA/n/lyW
	 /q4Htg9X4TK+lrkIJgn/NEOxDzhaz6V5/8kkjTLlvWFz/QKLjQLzECer5IW6Xc+gWk
	 7SFGfoSobFIfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96E3C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043318280.28990.1207672135855995352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16cbcfe99b35581369cb35595e7b7a4a66ed5b8e40061bdeaeb1cd35cbc874d
Date: Mon, 08 Jul 2024 10:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720433182
