Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23436216E0E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736549154; cv=none; b=ZJp/A0yZ7IjOl/AxuSekMGUiZe6YHWN4Ak0zy8Ct+18fQSv9UojUJrmyZswgMXKy6wYwrYhmyCon1zYiRHL3GO8hCB2K4aoTW9MyD2y2jjpkHTyuu7A9SZ57DBJYmn1b+yfbkQgAS9juS6t3dgcDrJLxBH0BLeFaq+OACX1S3XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736549154; c=relaxed/simple;
	bh=dfcJLiED+FTDChcSi4n4nZ9SdvMyxq4SU5G99m5bMzY=;
	h=To:Subject:From:Message-Id:Date; b=GyEGwUDgjsPyrrHyoz4Gq2q2nhDgSJEJrQSfYRPW+qv/SxhNhABm9UI778QYCZPG/UmNwcqabZanzqrjvLiLGQFpjpaLiMUzXtICptVME9aWpIFKIr8wgJVLiigXI0VYug73DLiRHHHz73w53tSRE+eGeVvM6aFTppoTv0E8wzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUxGbvLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUxGbvLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736549153;
	bh=dfcJLiED+FTDChcSi4n4nZ9SdvMyxq4SU5G99m5bMzY=;
	h=To:Subject:From:Date:From;
	b=ZUxGbvLdat2LNu5RCmwtKkLN3Dctdclwiv2yGccCSy11VjEeHNEy55/vj5Eh+iL3u
	 VWLbSXpWOuiaR7ypLAiw2KCQBLUj75Y+U+ku6bJDTC9Da6j/jBMOuit1Z+GYu6jRnw
	 LnA6fBpLJtmNDW81jPG2EBz+uz4lgrTXKwiEOHCf/Q5atoFmwkXbnigcCIL1Dr7Xwu
	 w8EbRg7lFS+dfyBvczoI+fuNlG/fTVm7mgdhFi5A06kByDk9cFfx4lomVtHzlPOrQJ
	 wn9PBzqJUkC1vNotu6+/mNnVMkpJs8LC2La60RDL++ND7N80gHUF6nWSXLHJvLRcaK
	 PLHFkLZBe8Qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A62E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654915360.16595.1939222299553827651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdda92a2bdf9c7fd9a52d5fe5ca061cf0cbcc08ea7f1556dd9eab2aa52980cf
Date: Fri, 10 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736549153
