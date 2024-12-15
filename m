Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B766374FF
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734265554; cv=none; b=eL3kDXhoxQYiCTCPvkqlmIGmupordRRQdGEGn5JAavEyHQN8lkwoArNTEOLevheSAs6nxCoenkgtdBNpVuWoOvxR7cEudJ5AlFoBZ68PBHkElJTk2RZlEYFUSQscA6Ici3ZEsTuv/DOoRhJf/ad023AA0U7Gvd+i6RRHkUdMHdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734265554; c=relaxed/simple;
	bh=xiZ8O/POA6iZBcYjZ2bHiDEyCWLCTax67V6sOxsoA1A=;
	h=To:Subject:From:Message-Id:Date; b=Ixi+7cbcvXK2Gh2aZuBqm9k3j/mJvqeQoX+kS4bDKa3/uHKF4J6o12bUF7rY5y2+ERZx8LAFDnrkehRySjSG6o5maTi+zRZwilAyjoxXqLl4mMngWdP8V28YB6TXSHtxt0HLP1Pl98PHSL7YWXd9uXmZCMNLoAuQ/PqBLhhxMIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EihBD0cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EihBD0cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6298C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734265553;
	bh=xiZ8O/POA6iZBcYjZ2bHiDEyCWLCTax67V6sOxsoA1A=;
	h=To:Subject:From:Date:From;
	b=EihBD0cwHhp0cxe5Tnk7m82MW4D9tbfJm4LrLaEm4hxT1FpBOsECpPVDMCtHme/fg
	 keZABRugG4cG32U66fNMXFvmkC/4EEFSJMRSa9eroZy8SvAqAq8UIbcdpYoN6+kMJa
	 Q+2ZJNmh1vONHwjZdfWXLPzefkX+I3gW5GbL8GOoXhqv+GjdkfS/C1lJ93hludeeVC
	 Fz7O+LPeygbEypl/hQjn+bAat7cafxgbVlRwaihXlMMaSV2v9HvU9KDsyYEag1Zv61
	 E0sqnnj4YhIjyCSLtzmqrsYks39X4JOU56N5Ku/gORRA4WGxZ3RKQwwa9s6SZrZJuW
	 w51tFurNsTQOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B0E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426555357.23753.10870157938509539222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7877fc4a2e9f45feea0fc1377256f4aac3ed8aaec01b013ed5ecbbddddcceab
Date: Sun, 15 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734265553
