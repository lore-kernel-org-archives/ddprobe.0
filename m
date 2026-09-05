Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88E43876CC
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788639634; cv=none; b=KAQYl/WoxptoFlKngMl8L5okNhkdSE/LR3b963ej/wUQRtz64mCP9ZNvLJmjMftIanRf3hmdRO6KyIlp9MyFdhn6Ro0mckm16jh6tk6zgz0yz776Kc9ZB+Ro/kkKW6V+nusltHJiy4DGxXAqArAY2N4CIqR2NiwBJkxy/M3+B5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788639634; c=relaxed/simple;
	bh=7GAxspoaPceFaOXAET3saSuTCu0eg5FmcatKHL1yNcA=;
	h=To:Subject:From:Message-Id:Date; b=T48gu/uaZgz3xxv8iN2Pni9g6rV9hG3SgxqZQmoaTBQrjUMyimPpoJAfIGLNv9fV3Obs6DMGY2B51zWo1Xn27ux2gyK25FSGh5QD/grktxdM0yh1XeFZu2Ye4ZNOYS5rZ/qnCB1w3VGoLsqQ1hEn0i/wqAyJkwM9x+TdeQEznts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUTJoCZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUTJoCZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC33C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788639633;
	bh=7GAxspoaPceFaOXAET3saSuTCu0eg5FmcatKHL1yNcA=;
	h=To:Subject:From:Date:From;
	b=AUTJoCZbjgIrfeBQZlbCkIEn4JGszco6CQXJkn6lAUYkjjHoFWGP6Oc9usAyWAIHk
	 jHN4IEi840tUlryefWkXvmdJu+yJj1hzD7Ye/srvUw54S4zWuO70H0Za3YGDm1dtYa
	 Ep4jkJxMy4lhRFW56/W/krxhVHZagAbM+c+NcBpZ55WMvqY+fBK+8poSeGIK3ig/tD
	 BO5OOWyidcZr46uJf2lYywBujfbUjJNPB0LlTJXvjaZX9gmhBwpRtRj3wAW1EA4J7+
	 ctd5pwlXD5Z/Od1x7Vn5Icl5ZessPH0VgazmmagfDLPIBH3kYw3z9TTuJc28kpVb3b
	 iyk+N3DmtM/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB98EC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863963369.29533.13348749345473657785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59fa19c0ae1830e2b09aab6a46839334640cf321158c761eed81369d82f0d1d
Date: Sat, 05 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788639633
