Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ADB1C2AA
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773973494; cv=none; b=KZBhXL7gzHpjwi3YaZXneBeLWbzIiBBdXwhuykjVNbjA3qxzm9jW6Ex09cLceMXBpFle7oeDnBxCJ8G4YKM1a3hP5XFEcQPwZZ3dl5psM6X+n2jqisRXpUntrqKslpveHxqYhD4qFznGaN6tahulktUH38EnDs9s3JnPS65ci1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773973494; c=relaxed/simple;
	bh=zITYvV3MRDA5emfcbVAmzk+gEF/HyiO6fwG2Oby5xBQ=;
	h=To:Subject:From:Message-Id:Date; b=H5xRQ+Ka2+JwtcrDRRgFeRyjYlZR+BXqBRkEk/CQ2gU68jKEVbnQIiLwMYkiKQr0jXi14TAyMzeq25NSaAyafdxOrX3PklVIevGNUWm8baPAMiQubndngtjt62dRNG4Q5HQtF07RegW4D4J0OW9JaFk4CB8Lm/Ll3jXFFDkUWQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNxiB90v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNxiB90v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B79C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773973493;
	bh=zITYvV3MRDA5emfcbVAmzk+gEF/HyiO6fwG2Oby5xBQ=;
	h=To:Subject:From:Date:From;
	b=tNxiB90vKiFYrcdoHgDsj9bWZ6vSyn5QNbNUaFc3uOd8RtiIa9dcdI68SNKtCTjB1
	 ZXy3nv4i+hxD0HcMTDKT6HmvlfrrnHJxhc2NzYcjMSMQMo9I/+usCrIE6QvpYRYxr3
	 WoXOwyHiwk8ittt0NfjUcoZX1XaKeHIzUXje7CCx6xZLrLIXgJtYGnUtiV2PwTGUCT
	 ze19HR0LRl1+4qQj0ddw14JD/K09KixIOkl8lSYJ+MFVTKplCYtr7LYFCbKkAo2pZs
	 /CLIhZ2pTki/UcoFVL/j5gvxDlcrRqsQhXfvSaLxCx61w7SsSyCFDO1oWtLRTx9RGx
	 wldDP6kBeWa9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96076109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397349358.23460.12346927416507052705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fc472b57d7e8bcdd234f75709430bef83e64afa858709ef8b974a7adf18ebd
Date: Fri, 20 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773973493
