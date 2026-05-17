Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AABF35DA6A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779014434; cv=none; b=W4rOJhsw/1PT3N3yhm3WbSw0OmirgyLYOqB7tmhVaZ0qkMz+pqIUdfk4Sw0CVtWXe+h0P1oIUqRJAY2vSJ1AU2F8L8fWDt2IBgrjTgzCJFwU1py1U0TvciOj41p8lX1WZDv6CTV8HN4/znI95805kSyWEbOS/LpMTHgz9zzR5mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779014434; c=relaxed/simple;
	bh=blzGztpHnJcfvCP5ZV5pXofVAesgnM8gx+eW6Oh7Dc8=;
	h=To:Subject:From:Message-Id:Date; b=npGjYB4/yFyauWi36xtuJxBgqiZwt+5bq4yuabJrt38j9SIFHQS15euYny8Q4BNBuRYM++uuWCwhs132UfKmucFZctmQm04oTuKghPF0CaPxN3K4NRKO/VxsqalaEWZQgCD5xd7j8DIVNDenYtGU06Ik7wRwDdy3WWqqf6ApVFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxThBFjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxThBFjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0D9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779014433;
	bh=blzGztpHnJcfvCP5ZV5pXofVAesgnM8gx+eW6Oh7Dc8=;
	h=To:Subject:From:Date:From;
	b=CxThBFjY4Ib2fqvVDzKf6j3MLZX/Rt0CJt5GrPt5vQ8HJmLcsiXHpHNm5mjcL7SEr
	 gF++q+pCuPqU46uqHCKNxrqCdaDA6L5aR7M5FAfoctDVEvLTtP+fnfurUPj/pIDp1x
	 nq7F1JSYT8XWlKrxocvhe/iK9j8B48y+YgEHr3QBMSKeTpLCHNeGbtA2W8rKw/b479
	 UfdFHrm9CB6s0mr9D1jgPoHsmlGYTpdAscV41Pvloc/cNBTGzZEYumopHJNBmKCsbl
	 1zxgyllb3BwHM5Uk4ssTN0yES4wLDF+4JHzrW1H2qLIClzmxUjmAwHHbA4v4srb+Lu
	 kwjB+NP0ap5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF6CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901443369.5811.5739278675631713528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f1da0f0f4569e522c66ece55dbbf49a1adb52b7331047692150b9eac5e66d7
Date: Sun, 17 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779014433
