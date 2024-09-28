Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BF51714B6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727567154; cv=none; b=K5xzJ0eFOH/f6Eo2nMnYTUZtPOxwB3XkG4O5yD4iUKbALBkLJACiDdCDrF4T8diIK3L9YIqcXwIYxGLRXLZ2xGipSyzgQ3t3coGhPaoDNFJGc/S93A2SOmLZpfOfQFO9kHZ7MHgRFwAmtD2pe4k/Je0srUC5aUghNgG2HgUKxyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727567154; c=relaxed/simple;
	bh=nqwwotLoT/zbR1wGqHRcyNuFCYT9fjofltM45L0+H3w=;
	h=To:Subject:From:Message-Id:Date; b=C21t+t3BzfhMNzzX4fhC1q+hoJXCvhyIHRIxf66stmZhfX+ubkhzyGSQTssf4KtU4eVI9djQhj0obHcipsYKNFzz1+dgHcyZX4aQABLgFRe5uHLuloAeaPdR1m6I+7+qA7AddVak/dDUtiOxQaLFUDXkT+hYbhOH7OugSmHHSdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCjnxGzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCjnxGzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D1C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727567153;
	bh=nqwwotLoT/zbR1wGqHRcyNuFCYT9fjofltM45L0+H3w=;
	h=To:Subject:From:Date:From;
	b=PCjnxGzEuxPe2/gQn97hmYc6WHsbKVmv5Q5LwJnnUVg9SUJBb823UTQyLdwcyr4YA
	 mBPS4cSvIX3K2rhbChQOAxSnucgTRKc4aqyysBaoHANVzGUUFPE9xPmSubZkgrzNTx
	 ziY+1RQCPJys4zrQhn/uB1Cu5u7ClyLRotoUNi8AWtncMd+THMJjMlT/UlJb0QtePo
	 JXlYPsifhHYeLYSItXjsTD3BL2od2pp6pU5EB7MKKRwr/D8ywSJELhdkNvyTOKsAiu
	 1BnIIk91/m1RD06OrZVLurN/BMANWHJ3GIrcJ0cQ1RQUHS8EsAz3S7X4zoW3hKYEvx
	 zoB5rgWLw4MkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93244CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756715358.23796.2715369155721545883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e325181c6b9b6c1405090a952e296d1c72c880910b2a752fbeccd3eaff48e0
Date: Sat, 28 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727567153
