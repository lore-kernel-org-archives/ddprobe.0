Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CAD4596D
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714464743; cv=none; b=iMH50HUY/3N2BejKCiRSBQUXTX/Sh4s6sTCAuAdh6QEJp32n85XApgPESP5mABo8BrShGDkg22Tcj3tw02wvli04E3dILk1is3MxfkJJYtDvqUonEymO04UPkg4ZZ+LrPnG6Jn10Ik7H/aSY+O+rYHhvLeQzy8Y4TJg0Q7ljBi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714464743; c=relaxed/simple;
	bh=ZTyZioL7LXJAFD89UA9zHPXIKqv2QqPNAaqeCGSPgmc=;
	h=To:Subject:From:Message-Id:Date; b=gbrbJQ79l6zppAa9nPhzK6bOpESj6RCOU9IbZGrMiy/RogIYtdbi3SUITePLiU5PT/OsZPzbl5Rij5ykyVBRKhe2kFaQpL3vc0b9Oku1RTnJz/c7dH/ZaoRtjMjSfUL6nFYYh6/klnIBkeYOXqSR+JBMRgWvqm4atOUK5fAKGFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVjLRymN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVjLRymN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D032FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714464742;
	bh=ZTyZioL7LXJAFD89UA9zHPXIKqv2QqPNAaqeCGSPgmc=;
	h=To:Subject:From:Date:From;
	b=rVjLRymNXtLEODTN/Ed8CndvV2jqmA9fyTqfjJrZtht4niX1LuVonin2FLMrcraKk
	 cwGXb/CnW/D1fWt6nH5n4UKi+iINrn31peqzyvtUL4cfgqgCMHfi/cJoh2wwjnS4tY
	 WEcev4sS6kLguuc9B/eiT15KiJ0TUw7l24trZAr7ZLJ7PhL0qRwuQ8KW/icaLNUG2b
	 8xbD7fUgf1iedxXFZzUB57MvsgT1ZUbmZa7Y+yihlmaJpMx07EqgJ67riqQJ9FH8WH
	 VUh4pydPlNIAhYIgyOEiCopxDRWruRDFkmfp3NTqIPuPRGVjKy67EzZJe2RqkGQjF9
	 4z1454Hm3eNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF71DC10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446474277.20940.8089215471562467146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366b1d9f61bf54c92049c6a449df8fefeee94981619ac5db4e76cbbd8be102a7
Date: Tue, 30 Apr 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714464742
