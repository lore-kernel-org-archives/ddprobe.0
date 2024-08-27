Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392C54414
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724757954; cv=none; b=MArv4ejM47uO3/iR3PQwnZctVYZdSBuqb/4HqSOH1HOPGEuqy2iDIrknefGwtF8aZ3peMI2r/iRaF3wCRRqQ8GFTgjDOpk8AOZWvoe4wVW99JkILf/4K5I3YGV5/hW9cSVC/Mn9FEVWO+4JPUZsfOQ/4OxDHM1M/JZib9fLtc6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724757954; c=relaxed/simple;
	bh=4JAz0WGo5etJ7LdhJJYwV1evsNHyQCtsFENiiElPv7M=;
	h=To:Subject:From:Message-Id:Date; b=kL5vQlKzHWxWjDL1B+Uhn8BtAo+w611qun79xM7WmpVVkgT+QOou813WVlkMLYoXwBNq09S4YYDyB8thD009toDF9HlzXliZji8KEn0Wc7zQzWOLq/VNv3Mf8WAhaErxH/h3CQ9NKXRTWXtRkfh/sUhBjWDHj9sPy4bi4RKVDXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMoSHsbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMoSHsbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACAFC56775
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724757953;
	bh=4JAz0WGo5etJ7LdhJJYwV1evsNHyQCtsFENiiElPv7M=;
	h=To:Subject:From:Date:From;
	b=UMoSHsbDphPcLQjE5yR7vAm+PgCYhfcb7xlW99oc9ol9qFAfF7he4uV7h1HCsxi5J
	 p7N+zKKcscXkJ6zx5uvJVMvmrR1HLDlr/SYJgAHYaN88rKdaildhgU/avnYRJiim4+
	 y3zKuwpxCP3J9AhNxAiC2x9XbvLUas0JbRTTZeAO1aoRf4LI4j0NSxOkaE5Ov7AADZ
	 IfX4Rc72Jsw4S8xBJrCxc2AfP1Qot8iZcUev7zYl4ZQ3pIFzRSySjCo424nqXIteVG
	 g6r/iWrVYoQNIwMzLmvewP/+pgTsWqryKZKPhvYgSlaqQiTNUpQXSmHA1DW+9+KaTw
	 MXKN0BCWsWtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F28C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475795360.3150.1794164932024435910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18737733d39866b1c8a3d168c1d0c62df7dd560942da5cb688b73c269e603034
Date: Tue, 27 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724757953
