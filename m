Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2F3A961B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786895434; cv=none; b=iFYgdHKVU86vgQQFkMFBKzEgs8walTFPtJhAN7S+kJSX8YzxYTiX7KWkviKLQP3V4ydK8op6Z23B+9Pt/WiL5lpAd/TGSs75Ut9uHrpG6e5R73B0t1KaNK756BybJtIl99bv/MU7xXxjJBun473usc3uK4/mmp7qtd4jOviv+Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786895434; c=relaxed/simple;
	bh=hu/5CamnSJmMncFFDiY7wCc1cT6IMLPArcmmmFpc3pI=;
	h=To:Subject:From:Message-Id:Date; b=BFwNZnxZXoc/+LD97jj8iWrLfSPYWC3K2qugy7pNYIJz3VX7icgogGQUZm3XIfmt2CwoCSuOKVqf8pLAFo1OMVjECn09yZtsB1PupOPVk4kUEQ9Dqt4YPZ1HOWokId4oItW5CuElh5Tf1am3V13zi8sn8zarBFnR3i3jc3fEphc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhE7ltXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhE7ltXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0FDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786895433;
	bh=hu/5CamnSJmMncFFDiY7wCc1cT6IMLPArcmmmFpc3pI=;
	h=To:Subject:From:Date:From;
	b=AhE7ltXFiVbamr0A+XZt7MBwLhKKSenY6lJWf8Rt9SA6L7Dta+h2ueDprcXRltLzf
	 Os/7H157BoAOCnoJNZBY3VTFWpP6ubok3UGm7z7HryNlFpy+VcxGU+IMWAdQVbnL6A
	 fOxCEIimWiQImQbWC+QXaIQnaPz8IyEPXgYMrX0aHxHGhWxk0bJF8ong0PrF5O6X4A
	 yztsWzLQcFA+oVnJkPrr20AByHVkC0bj7m6GJgu3mgGChsEswUsJr26eVOpwjL9pEw
	 elCvj8Ku6jFhma6lytNGlQT5tzALuOV0IvNP8rUVPbe61NMijKs1xPcnBA1bTR+AlF
	 jJYOwCwMlgsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79DC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689543368.3037.3475807706164634889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3652751d7276033d7432de4d70db8a8bbdc31fe6fee0a51137db36ed2a15bc
Date: Sun, 16 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786895433
