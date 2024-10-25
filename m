Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25451D270A
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729896953; cv=none; b=LGsLruQiaNUTp/Z5G4cuFDqZvcwFvdRm66KCnhN9+t8O2SIxAUCVKb4OYKeOTS0g6LIzCbn2PAw478lhfEj4vaPAMACz+lfjaMs5s507I6RQMZ6/RqJ1bfS643aJ0U9Ilw6aWVoutw5s1MDFKOKb+kpNwWLy41PxoRBh30rE8bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729896953; c=relaxed/simple;
	bh=YELQxAR0qW4hb2ETe1c0KFZ9Tmu+rXgpkDJmzD8YeMM=;
	h=To:Subject:From:Message-Id:Date; b=nuDJw0VXg95IFvmWSKrOO2blMdFqBRSASPnrgMXC2VBay8c07X/2oe4uYIicB5GOtZ0m+wBnvY2jEl/yaPgMUwxdtFJppmO+0ChLe1VGEbUmtoCYMngsD+0k1easM6zP7hs0/5gfGn7oUo7+8qTReewvwlJY/QbDQRawMndfeNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBO6+9nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBO6+9nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93DCC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729896953;
	bh=YELQxAR0qW4hb2ETe1c0KFZ9Tmu+rXgpkDJmzD8YeMM=;
	h=To:Subject:From:Date:From;
	b=rBO6+9nxsgqzBzFjQvSxcFJfvDqiyl3wMpHPFAKVASXGC3sJJMtAOu8/nzhB5wa+f
	 LgxEF/yh0jtKBfQOQgHSg6WneUZ0OrdmDsp535KIHa7Z09lgjSP1YS1/k5W/c7p1i3
	 gwQU6bXlv+zg2YaDNOoVt14uADfRhJF6vvoG/lDfXnY9JxZATjI/SKXvAwyEt8nFEN
	 QxmnV6/1RxysxEkA+UTfu1AVyijdGZY5eV10OjWz2wnaacI7YBrtMpUuh1o/55HEk8
	 NMhnP87Adijhs4yMxwNPLA0uZKJXpbowmiZGXSzCm/mDEPYpUfOXlSpdKTGIuWSxYw
	 INFAxM66p+KUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C54D149F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989695358.32676.16039942389137101691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ee5fbd13c563f213bf047c08dd2730de1286628c92afe9b950196ac56a0391
Date: Fri, 25 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729896953
