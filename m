Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10742DF136
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778168254; cv=none; b=RK6ZLq1dAIw58bC9Crq5RH3qm3jYUkTrrLkT/w3Ka6YaHtHHptelHQY1BPbQUTr4h09cAV4CyFsgc+QAHLWimtSena2P+Z9qkZYJ9DTZuLpluCtguoFUPnsX5lXMV544PVbaVvxaM3PEV949vJK5UAeukJK3z7oG5XxOa++0yZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778168254; c=relaxed/simple;
	bh=iFYbmsKvm/l/mUXhSP5yr3Pj56pm3MRvCVbp3gtdiA0=;
	h=To:Subject:From:Message-Id:Date; b=QRNnkCTF9P4o2ahOSPseiEDYEspRtwKi3PnYEK5vddTu38HREQUs05dWNp0YdoWlyd9kbzSlFjzM7mL1Ff4sO3nXwHgP7Bn9AZbjIU0JiLV768q3qLxe6Hc5OrX1uPRwarkGRtXklOv5EboOMNo+ov5l/s4iXQ7xS6rkFfwJBq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owyChipn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owyChipn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C131FC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778168253;
	bh=iFYbmsKvm/l/mUXhSP5yr3Pj56pm3MRvCVbp3gtdiA0=;
	h=To:Subject:From:Date:From;
	b=owyChipny0xoM7kWVBRLxV9CMNHXIpbUfLhWqollSvTnHh3r3+Skg6IcTzHmnMKeh
	 KWcCg/GGe5jDIXcQKrwtTOPGTn+Jv/X7V0C8aAPLhwHjOav7/CRb0J99kprtFVaHxD
	 HDCxw3pyBzw7YWV+jhmHKI7uEsz5b5S4U8ZFLdSaVUjw9ReXEjeOO8+VRKeWuUWXCW
	 wPGdRycgSOFQRpVZ3KRa7fkvF14ZDAVy5l8ApmBlF2RW7Q8GwhoeO2N0J1MkaBGTX4
	 voGzABqYpI/nkikK7VtDr49aRpHqflQH6gi3WQtL3Rd9xVwA8GlqeHXvEhh6DB1O5g
	 A1BBdKNT91T8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC2BCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816825369.15337.12188984423933236353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe8a07a540f0478b8d5c4efde28366917fc0e7a28643ad91ce89dbd82bbb40b
Date: Thu, 07 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778168253
