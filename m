Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0691334B404
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773704694; cv=none; b=t1Vgg8S0eW6EP0uYoRb/IR1zOUdmhezIRAKZl4gwClOaNBdn6xLN1MVm/lvlD7bUrkN2QyDGUXYhyjeSXWYlDRGjwNERVqJSpJKt9iUcNsKfW+/QFnEmryfNBTP2ZXT+CKs6e3QYXW0ihvefWkSGmVJh8KQFXpebhMbs8NFWki0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773704694; c=relaxed/simple;
	bh=uEuX/UnXMzbb35cnXMJDo6if7QeGulRplQr3FDYNAFA=;
	h=To:Subject:From:Message-Id:Date; b=RqyLJhSKXXSVV7q9vMxJAv8b9zcta3Z/Dgxw+rQXve4sd7BKB+3pefvpyOs3JIip4vvXUaYq1GJ8H8qbB3ScLaRlI60o7R2+j2sRCxfqPWHoiFn47COpLUHYRtbZcuzqMzT3iGDzOmrnunG372/yrjDMHV64RRF2ctlJG99+urQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtHFlOUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtHFlOUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A4AC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773704693;
	bh=uEuX/UnXMzbb35cnXMJDo6if7QeGulRplQr3FDYNAFA=;
	h=To:Subject:From:Date:From;
	b=mtHFlOULAsuoEnSzWL/t88YZGrzZRrhPJQVqhb57/ueF5CyTCKEsPs6ZPOZ7kMKKd
	 7+5V9aX37sh6Mg+t0NP546qz51fRVKK7GVkIHy2IrqxIUCxbjAhwsBS7GruzhqO4E3
	 shSCCf05flAFrKkIhpWJu/ElXYhPac4cUFEm7lt9ldH3oitKhcvR4RfarseCFylm5B
	 YwzwBOeVeS1i0yaAwSHsgDOgy35Cx8lXEA0zbf4p3nBBQT7Ud+BmJwbWPlqTUQ+EXH
	 /uYBeszp3PFi+Y/iRJ8DYmzhmbVENX58O+IrXLMbxV6cEfOWjgO3TkdoePUC4wSJNp
	 gTt7iRovNynQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC3FB5E8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370469358.770.18440165214494434209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08eb0cb6e8f47791f5761c1fa272d11e36028470a859cd9077c66f9370418aa1
Date: Mon, 16 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773704693
