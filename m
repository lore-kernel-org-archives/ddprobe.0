Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479414AFE0F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790278234; cv=none; b=efEpQSw6dxkqaH0XZJtcH54qlg6gQ+Np4/84rLGJi5wWs7dryXbkOVebrUjY6k3w0VburBksWPbC7mUSNLG/wyQ3K8GX9+4YDkpFRTS7DUn5HXk1bE8dAFdj1c66WTJHkQSmRp0ZKyRF39E8Lpe1jyWQuIWJS4L3cWyRdgDIxv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790278234; c=relaxed/simple;
	bh=Ab96pFMkpGz4QmjbfOYA1zm/dfb3ebOfvbVX0l3nFPo=;
	h=To:Subject:From:Message-Id:Date; b=f1fR/THJhlGxXyGTPhv6dxq5cNrmtgwznsHHMGXe5qXk8/7jABQjiLAjZIrueEygcapwbxpBoMpLqAFXOQ4J83cOQ4VbR6P8g5fKFkNmSg8svn5JIPIIEP8M7TQwzlmJo3pmYfS0XfndjKuDnaGIY9ltBr2euTSMPB7oDbwgwYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFfdi6Hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFfdi6Hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1774C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790278233;
	bh=Ab96pFMkpGz4QmjbfOYA1zm/dfb3ebOfvbVX0l3nFPo=;
	h=To:Subject:From:Date:From;
	b=kFfdi6HzmlDe9ptP5FkTwzKrJ0v3Uq1DD0Ze6iSStVYEiYfAQVpGUEpSnBapbbtOi
	 dIToNTPWAKxvvJiy3KdLZxVwidDSNRuzLw9dPZDb4vt0eR7wowcXwrvdL+zpURW7TG
	 4/XFLwkssIC7KaHS7BDsJ3eEzBryi2WV8of8riPngMDpkC+Vzi+YiaN9Jo2kyjYAZ8
	 TJ84KNECTrV7hGi1iMB58rbYQhrNlCpAusLMGigrVfXsi38VNSlnPN734OXt8wliM2
	 o/pQVNn1krtH+8TQr6fqivUqx+g860YMxbhK8IwEpNxeJ1PzDbJMvH4ullxngQrd6g
	 RXZtKjN7CAJrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE52C98321
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027823370.12889.10371172235421411169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880701ac3bd668e67943d66b214e8cf93601626db9e08d8443e4e3f84efe1dc1
Date: Thu, 24 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790278233
