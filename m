Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229541D7E47
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736162754; cv=none; b=OJkFMeQf2xFhqc00IuIoyQ1rZputb/68B86mc4PDoOfBhIxpuR3dgdaYbG6ClOBmHe2A/hGWiJedx4ZEJaQGLwTMvGRn+qq8tlHgUmd+JOc+vV5/XK/rJGtrCqxuD26X2CgnxhEKBFZqXtCN9fWHSbEijqWvdj/XT65kgE+4lYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736162754; c=relaxed/simple;
	bh=A3urg93vlmYDrl40o8FmLhx+gYJDUErm5lhdDl0m/Nk=;
	h=To:Subject:From:Message-Id:Date; b=DPxrSk2Wa0ato3kPiL88DYYSTp9EO/3c+VVHR/ADKrLx8yFkf1xP1wh4CsxYwRmBAODzTU7EgHFarj1BYMWlaFr+2lWEShIsMzdxfUZeC0Ch7P6X3rozjHZGuOQAFgfsAX8LQtsYByv2KCmfXd5rBxArGuU2+jBuNgtRB7F+EnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBMukoj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBMukoj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D6C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736162753;
	bh=A3urg93vlmYDrl40o8FmLhx+gYJDUErm5lhdDl0m/Nk=;
	h=To:Subject:From:Date:From;
	b=mBMukoj4yv5DH/M/q9tm2PL0BAsK7olNIahod8IMjUuXEyeEaSBJKqE6TZZtNZy99
	 wXdC7UrBuxRAWlTEwUmO5bP+L18BZ/RsKanU2ctXNsUstgbSKPDZF4YIp6h1qmNejZ
	 oPyeLiv1/beZj6kYm6M0/jauWb3rxWyRGmInJFtLWTx/3RyLqpN0ZFWOD0O12s6dAD
	 5sUDi7SiJIZrduKOOd3FKS6yf77x1A8AsWZnT7WhxWPYFLvl8b+V77dxwirfZgESMS
	 RrujisL8tVPlyG8GcbxYcdUmB+XtsajOsQB2g44hmbN+JtAAudBBfeH5Avv91YAMqg
	 MtYYDIpPBJLbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F5E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616275357.7229.10211946972670821353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377755b3d725940be1c9aaaca013243b3cead7ee33f7aeaec12bb64c4e4b90f1
Date: Mon, 06 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736162753
