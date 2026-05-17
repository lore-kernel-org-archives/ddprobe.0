Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4998E3C454E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779038434; cv=none; b=MtiTOvU/aUTpxVDVxtG1ELarJY18s3hUfDNJQ/xYkTAPtTL4fK0xZJM6r0fpcD/C98U86su8RdA0cpUeoetcSxNzynkxfrTc/wkHPhKgHvTTA88/pblGksv8trDAZRU7iRgmFhXgxx8RMImBYvTUurA9CRPgC5O4L6yrWBv7LfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779038434; c=relaxed/simple;
	bh=5wJq1Je19tUKYd2gYCZp0+pLUVjoiheyoisPupbXvXk=;
	h=To:Subject:From:Message-Id:Date; b=dSkdRoGApEY3d6rfomeDkXJVrqxZqWusQ+Zj/F63IJ+LIhLELdTWk/V/2U8NGyZQKYA/Bryq9wzxIM0wb7dRIl4cZMnJ1iTdBKhhkqkiIY0R1xjbCi3SJZwAG/tdlse1AyUed7APjAx3uVY/y7UI7nazn91llhKnsUXXxiDhg30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHjWOeaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHjWOeaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB168C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779038433;
	bh=5wJq1Je19tUKYd2gYCZp0+pLUVjoiheyoisPupbXvXk=;
	h=To:Subject:From:Date:From;
	b=KHjWOeaR/cULkz3K/6ePLRnYEP3YyZImTka5MeykqpFRY9niEqTGRGSHPryctjWa2
	 8qGI94mSfJ5+SjFP4/Gw2rxnBv80O6Nr0DlEWPWNqGvgQTsKj6AvveYAmMMcsuD9sl
	 b5/kt3ivDsM2lara9loqgtztY3TT/57axrq3+mtVMEBKsEkF9PmCF7TRPiWg/WbFPo
	 IUfoSSpz3vXIPOI4Hw/5PL0UqleaKsng7ZU8soWfWhWxfkWI7jmxCnnoFCtUm12TPa
	 6yLw4uC71uHFUFna/0ewv+476PcazdtXygARu9RrbfygB8GLAVe7SKDY1eLQQolsp7
	 Sk5nDQcNuGcOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D9CD4F47
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903843369.19902.16246343362232045688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e562d5b73e695134dfc2d9bf9362fc8dd18155e61bab4d5f25f032b8f6c9c2
Date: Sun, 17 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779038433
