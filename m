Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABCC1C6889
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727796954; cv=none; b=jAnTlCOJczAuofWYKjsxXlq0/Mvtaqv0lt0sPRFhB4OwgV5axmDwru4EH2e2G99siOmNZPD/Q4uqkBhf+6YGUMwldxJiDo21U0wFiUZU1v5dvJ5/eADNbbC6lIscH4howBaV+3+Fw3HJ0oBJTPQxb3onnEZy+/xACS53tP3UDtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727796954; c=relaxed/simple;
	bh=SwGOe6q8LHXmWToz1LETOsQMivC9nAlCQp/aWO0Hc1E=;
	h=To:Subject:From:Message-Id:Date; b=MsHZ21vZlFQYg2wcMJ5Ols/QJAs1uxXq48gzssi5Wicf4k0qk82lCNIw+k2KO5FcLy0JZ+NzR62n3WUjKJRLwONNpm/KUHG50BhgRSms5+lK7k0gM2BBi6HKEB+9Qxi+UCVzP5JYlQnRa8L4YGCtQBAR44fE842KoJpQ/5NCnqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Own+ShRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Own+ShRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6DAC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727796953;
	bh=SwGOe6q8LHXmWToz1LETOsQMivC9nAlCQp/aWO0Hc1E=;
	h=To:Subject:From:Date:From;
	b=Own+ShRlCbVf+aK4XyWym7UgD02XA8YP1b6Eem9pUGKNgY5MRTy5jVeRqTbr2zhdY
	 ZhzFKRNHuRxjDBArmX+26sdyL0iu8W3cQFqN3YnqjpiQFKjaRBHFuzfnVHzOHJtPm1
	 rPMP1bxXM5gF34eR32OIrhX4wHTSpnriR8yNyhiqFZW0zKJOhH4p5yWTET0ShQoyFV
	 yqKJR73CqIA15pRReZ22/KGYwg87n9OGL0uyJ1O6M4g/UQCkRckP5n4McOgms7XXsT
	 /dMZDy3a7jopzaa+J89HpmZk0dbsukN/ClflmgUzR/rCm73NTHSEZth0YLb5AuoBF3
	 G/49FGAz5TLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D4ECEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779695360.13940.11294123227822863442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d68231329e59621d5706e4531af3a88197a5a19d02a8b9cb6846174464aa8a9
Date: Tue, 01 Oct 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727796953
