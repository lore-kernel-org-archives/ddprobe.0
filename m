Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97AE23745
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706399296; cv=none; b=qBaG62lX8UgotxdFvJJUND/4xlIglpT/Igjq1XnQ5bU1kZ+mLYxsduOB2llBSNRoi0qcE+UZ6Yj64gzDkn25qG01JzNcpYP81oKtf+rTwFnXbxozmMyIsxPlas6xnLZMq+DbDA1uxX0Hd11orltKy/Po833mjmKbghatN7VWLF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706399296; c=relaxed/simple;
	bh=mTAC8sFcenHFf+jAn7TYsqm5kNhLBZXHDd3W4fYfjxM=;
	h=To:Subject:From:Message-Id:Date; b=KvF8ZW0Ix7BGFmsYwAnUqFIq8bZyvQfkNDXb3VKA69pT9Iq1hDB15UCKlgpXzOvdQV5iMm5Qu5FftggGvbdCW8Xjj9LmgOyJj16NmN/B69V46lKeou73Ac3cdKEvtlLJgOFd0V6es2BInsvy8sBD6TqFmppPqqlvCOeErldVnpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soDiBZwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soDiBZwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA07C43390
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706399296;
	bh=mTAC8sFcenHFf+jAn7TYsqm5kNhLBZXHDd3W4fYfjxM=;
	h=To:Subject:From:Date:From;
	b=soDiBZwIZUiig0F5IF6kjQEqPuBPhxduNp9A9Wpf88DcQWG2724PqO2HhThoh+yE+
	 o9PPtaqKli7/SJt+kBmBedqYGaqbIHrla+rAZXS4xvMSUwKLjZIEhL8DB6xI4OP0d3
	 EcnLJ1ZREZgowofU3/1y5JKgIhg2EG0a9GCFJWK5OsJeUufrI3qCHjz9MJkpVg6JcT
	 cYfXsRHdEz/gWYSD0Y0bKGKBV5RF8p7OsU/PCgOylPzjIkvJZkCYmZ8PUulUo7GkWm
	 cQ5UOBwLdPIpyHbd4LowZSFKVomXcT1d/RkTEnLxEXok057sYsAFYjGblYJD0M6sac
	 sbsZaUYBHSJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D63C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639929637.3348.77681813963178905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75ed770e0cd091e568bbae7850668420c90bdb2022f5e2c784ef0a4a62fc4e7
Date: Sat, 27 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706399296
