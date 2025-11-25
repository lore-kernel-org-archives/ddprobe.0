Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2747170808
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764051174; cv=none; b=X7h3Dhh2hUrklJv/IB5eXbAxgg6YHTQoLylY2HP6WHURgA20TUeKOlp5PK9aKROGT1+kIkHCQgw5Dbma+x5Nj7y5VTICDwfscbtji6VTj7hw+Mv8WQF3Wc3fSHNR/9NKRJryzqVSd7tXmtFGn1rUYF866ieLDrdGU6DT6QMhDjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764051174; c=relaxed/simple;
	bh=kwYdkVV95JoNRplSMAPGedxOTaKwt9gQweciVnuzA+Q=;
	h=To:Subject:From:Message-Id:Date; b=aNWcEB0SorkCJyctNr4zr46CwFwdslltp/WrESgcWmPuTbvFvpV5Af1hDzXQEr29PhxRZgJcgQEa1vqhT3OXfcw7bHrj5GrKVQjdyiEQLVoAOb3v3Q6qpU4Gcs5fK4HmeL8mAeY3uJDrfCPHNIWaSqCTDDJGAxOYPo2Cq4yLCK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcnq4eUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcnq4eUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD15C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764051173;
	bh=kwYdkVV95JoNRplSMAPGedxOTaKwt9gQweciVnuzA+Q=;
	h=To:Subject:From:Date:From;
	b=rcnq4eUH9xydTy/ZgWaBv4CWXDqnXvneYSZ+P+oiiWRw3tYelSdmSi//bW/gLCSU+
	 sZXVzbqL4f5XHAmyjvpjnaMlrBTKKltT6821ngiU/cQ0Ee2JkxYMa5ON0XomAP0KDO
	 q901USw3buZ8wspFVeBIfmXYN0iErGXLmpkp1vRq+zGt/ewjVWz+5qDAkc+Xz5rztT
	 fCN2doSOOj9iM6sYxw5t2ON3ITFGtoExSqRf1r1bIFIrKJJ7RW5cE7L5C6ZJ6RHYBI
	 vrTUoy8QNcYMY2c9ZmrxGaD7QHJwmvML52VHQWBCYCs5rxM6bsbNslq15hEKqu/4GP
	 zSRADnFg85aJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995A8CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405117361.16796.8466862235878276304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ae23823081abffe39795c8d0332c8f3370e7f9b872d07c64a530fa2b52eb9b
Date: Tue, 25 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764051173
