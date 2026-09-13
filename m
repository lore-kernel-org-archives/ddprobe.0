Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E3223328
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789329034; cv=none; b=AB5T11oUsMBg+299hRtkW4c8oI43TKUr2q2FsMDssZFuhIq1XxohWdCELNLDA1OIlGqujqGkUMNW4k5j0YBekvrgnITHiJWnNjVdED3maCMrvt6MucH0CDDz5C3+eFaCQQ7/WAxAMz5UUGgjdjqWc+GTXi4oyVQExPDnG6XqZ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789329034; c=relaxed/simple;
	bh=nTvilSli/InJFcfERaH17wJluj//mAqU7OQBktvzq00=;
	h=To:Subject:From:Message-Id:Date; b=e0JFPFt1BrSMBHHaWrBH8mZEe/C8EnGRM18sPopTSXJDShSAEcyxARKrJ/Nc7iez4XYCLh7VDlyTQCr0LCrf5GC0/TxHymWEds2nO4v6IUfrajxxuFLxVitSfG7CCps8Jyq2JAzOa/Uc0KZg0bFvK0aqzSTKpbX4Sdo42fidyoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYn+QXTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYn+QXTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789329033;
	bh=nTvilSli/InJFcfERaH17wJluj//mAqU7OQBktvzq00=;
	h=To:Subject:From:Date:From;
	b=BYn+QXTLLzaZ6td06tygIc6GJsumFuH4cLKJYsR/REMa7LFzabUt3xbHeLWxwKqh7
	 qpGpWjaX7BIVuwlnPdmSx2kqKdUYLdGzhtXlT54UjTiS9K1js4YLovjASmE0F+Xdoi
	 2T8TSPuYRZG74yBr8skZglnq2bhFjOBnqU9OgiqLQw27IpHaYkgHJOFxeJ2NYjJEqY
	 recRuW3bcG5sN/zDYbOdETViDU+QTGg1EwWdwNlLxnG9J/SlMSiIYiblEZ7hpGimh9
	 LkVlsr74zIJXDZoV2oytSCYtKDKYxqL/C09g2zw1EHH4dQb2Wh7gWDEgjTJe1qZhwu
	 wcSIdGP02S09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11FC88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932903368.32025.4203978975143965260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263fede9dd187ad43975b4146723397ab7e9922ebad450f952bcadd2ddf563ae
Date: Sun, 13 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789329033
