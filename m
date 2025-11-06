Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF68F54
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762397994; cv=none; b=pAl+AVu74SuhlGLAkPJL30H68OBoUD4pdAwH5nJv/pTa9epOlQpXEULJU7JDq1mWxFwMYIgU8/jh3clMNyK/XN0SlcS7bABBq9fYsytXc4NDgqat4f6DQ6A9xz+WBIxd3HHFBDrkceBJtZmodZuMHKDgfvw5ZWzcHP0cBxg4WTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762397994; c=relaxed/simple;
	bh=3IXkxhZqX9nyhSh66S4rw49TQrRCeQz5OgD5o9pNXVA=;
	h=To:Subject:From:Message-Id:Date; b=fFMhGGN/2XhZmKlq9dmnBDqNYe8BZMlKHWN5V5Ca9h9O72DdNut8W7gpOizdRoHAOxdBn0vD9dwv5LcbDqUNa84IwSK1bzT8WV1YpxCCYcnSmUEXSMdWmNAAnnJ/8UUXEY0WaGYjoxYYWsEwetyMZtb2BfuVglbkugc28gMoYKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CID1JvRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CID1JvRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8ACC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762397993;
	bh=3IXkxhZqX9nyhSh66S4rw49TQrRCeQz5OgD5o9pNXVA=;
	h=To:Subject:From:Date:From;
	b=CID1JvREshlsmQbb4C2Ig2XmHk9MbN9jPluIPgmbpPvrRsga192Vt6use/j1b4LhO
	 GmhejKU/XEoeA+aYkhEtcbAB6y0h6FsM/kQbVRkU6lR5c/B1Yz+0SHCKazGqAIIoDv
	 kGrQG3cmgF9xYcetHC4HE40AX1NoaRYQtJheXw3LhoYcL1NWM1bn9pEXykGEnWNJ2C
	 Z8jwBzTYY5YcagjGjYJOiELbC2TmYT+vEysEB5wPVatU0fkdrQogiS8ppv6uFpQz/i
	 JrOyqrlsEtl0zeobQq61b70Z04Cj6qDyUpeNy7ekq7sEkRDoms1PPRRHq31AInQh4f
	 DkG8tt6Iwfzgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF3CCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239799358.31257.10904233463702015738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cd6623d067a93dff4a184ad27a23669d87350a2c4916a9f636fba843bc1a2f
Date: Thu, 06 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762397993
