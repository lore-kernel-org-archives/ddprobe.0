Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452E12EDD6C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782474454; cv=none; b=cal1gX2fKWjKFwGEemExh/QvTFUJTO+k2n+LrkrVn0XPkCpWOoc2ABMiNIXiapQMnWJ48pr4tXX9WOGaz8G3sO0sbls0tO+KopeBxf9YQgfk0BTfwCTyA6qJDwN+RwVsVPye/eaZOvFKNDbMPQWjsvVZPIdIVRPFDdYCfTUNj3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782474454; c=relaxed/simple;
	bh=NBGOK9HkBj/QRP+6KP17TxlMDlBV+gpxjPY17mLhbzI=;
	h=To:Subject:From:Message-Id:Date; b=k9q4ELadlP533oqCHhfeKrzxHq/DnZNwQqfjl0Dpfh2wVCXt7x35gnymgC4Lfaa+Hjp7f1JC5byN2A9i6lOlx4iaPQsqOrzesxuFVCcnF2NQnWJFDKusos7aL8mH2WgxCcQECvm281HOeC2kT/xn5E8ayMXj751pqpGHmtG85+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs3ixeLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs3ixeLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB05BC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782474453;
	bh=NBGOK9HkBj/QRP+6KP17TxlMDlBV+gpxjPY17mLhbzI=;
	h=To:Subject:From:Date:From;
	b=qs3ixeLziuVd12OSGruJSkaXdM0C0NLNTArZPdS386RY72dnm/XSooRZpLvWvuo0r
	 nsu7ahomFcjXNEMGPvv9ttitJ1N7g9zGEzHIlQpKnU+BZ+MKaTjR8lIkc5Fi5jRu8n
	 3EFeVBqy/xxi/QAm0BXzzSgoEKwTBN3RpKizWdNB5QK3tjUMlTU/k4nFlWgiNr8zep
	 Slg4Io5F7giZd3REU7NJ7Ah4+t4tNUEaGqi4J/T8G31b78y15n4qL7stQ8ga0Z8fCB
	 zQzTixLu3KqFDY1PUP2sQvOKKJrPLGI1dmWobwixTmf/m+ldW32A3S2PYsTYJotQ53
	 73QkVRpzM2y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD367CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247445370.12043.7674254012290869932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5473637ce93d2f4a26c114fd3086ec2cd8320a1fe3d06ba6cd26967423fea6c0
Date: Fri, 26 Jun 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782474453
