Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8EA385500
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772013294; cv=none; b=b+JYWECROXffdiaOtmp444UUr3TIxT0nU0e111/gThMcxKUpcnWBv1XW3lpQXYJ/oUzfAgfZ1Ijmtlpn/fzt2NZvaqithM3nYqOdckgChJnaZIx9IO1csCa7Du3gJXN0uQMuSTaCljM/zL0rWzTPp+0DC2XiAO1N914TrFtTFxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772013294; c=relaxed/simple;
	bh=bsjy13xGUfaeSjlQFPX1cR3zl/3HYsIE8vZTEDDkW7c=;
	h=To:Subject:From:Message-Id:Date; b=O2euIOI/0vXIQ2t6uHIvtPjEY0jKupFO0kXhv+mg2J3/8wRjZt6YCOtLv3CMHbXTBS3tDRkpk96hjG85cgx5sQsAPRKrAw31ZoW2G9xYFcwjvtWXkFZ6x8fYsA40cpf1nuA5Ns7rToo3rMqi3sQs11V6MEitTNCwVD528AqG9Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvUrb/du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvUrb/du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D4C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772013293;
	bh=bsjy13xGUfaeSjlQFPX1cR3zl/3HYsIE8vZTEDDkW7c=;
	h=To:Subject:From:Date:From;
	b=tvUrb/du+/kqde5IrGDXVCHugKHH9YcbyXF9IqlNfMNv2mmOPFj21Rlwzk7KjwchO
	 9i7aaIyMFnFyjC3BtzRFsG1igDR2ZtnNKJQup6VaZTJmTd85+pHLK2qRar9UW+hABq
	 qN/4CZh2owjwlDfB241HF94DMQsSz1IKhUYVlQzBzWc4tHCBkaFp7RfCaYg8wUPIPl
	 YemtpYJLUpozfZCmNvBfsQzbecPDCmhWStASgboQFqjJAsv0icrknY2ftva00JXr9C
	 4agOBT40idCVQ56Sbw7/UOuKhuG1XHIz2ziVmYSBPqZ2bcw4luUfZ06C1C/hw84TmX
	 sXjK2I1bmRQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DCEFD23A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201329359.8436.11072444083082820401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d163293f30ff5689e9a2f99de5541d571feced5f0d3fe9e4b1318e83e83adcf
Date: Wed, 25 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772013293
