Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1302623EAA4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767079434; cv=none; b=OHxlbHohyvm4ktckAydtJkGD9gkOjGVRQQJy2uMOw+FCcGCOAUkH2bLDwPDac1WhsJd+3DNdvl/rdAglaLtYWJLSlDAAlmmep5/AwcbSUlTClAREaJSVAt9YUxOukmwV+TCFJnVojAYY3hoDcHLWPkJ6rdutHicvWBo4UoONauQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767079434; c=relaxed/simple;
	bh=o6T5Ag0JBTad9MQHwKveMUjKMhS6DOVX75Gk9/pvM88=;
	h=To:Subject:From:Message-Id:Date; b=BALaokDPt+OUfUIorWXM3PKULq2ByWPD6nBJsao9cDSR5kp7WKathHr5UB0wzfk2EQ7e7z7dTQ4As0xt6ahYx1deTC9Br93fjPgesbt8USarOrigIOKmtPN3cDxS9k0d1Nu4So7+PQ+gtVW7QxJIRhppTETrGqe/dJreGGg7EWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTuPvPWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTuPvPWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61DBC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767079433;
	bh=o6T5Ag0JBTad9MQHwKveMUjKMhS6DOVX75Gk9/pvM88=;
	h=To:Subject:From:Date:From;
	b=pTuPvPWl+rG1tq6X3K/sQCEvDyMzhEx/OKK96RZQX4+0whV0aLVoENb7NSR+aMK8J
	 itpJQxTGRMtn8+HDr9Xj4Q9BMNpy3AMl9hn7gn89i2rCDBKC322t/K0RUvnEi9F6ap
	 TfDRYi2juIAqAlZpMBq5ErtsphZDcpYlHowU2aCUcXnE9ciFUgVnRwuprIKirkZmWP
	 TN65KKRFaZ/18Y5EORMDqwVnBCtaGctNrkcqsNkixwcfUriXinVusmBOM0F0o8gto6
	 xwJBLQ/luzy2HsIF2x1H4Cr1BNChdkdUiMDHwbz/TQNBWJBYJut9P0EQRqULeYeQmT
	 odqXFF8+E3y/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2CE94120
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707943358.24977.10777374206499969625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0217fc3b442f026ad69bd2ed65910f001881d154146d42caeda06bc324c83c39
Date: Tue, 30 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767079433
