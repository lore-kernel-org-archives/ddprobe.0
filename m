Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E719F40B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786099234; cv=none; b=JKjwe/KCONnz3r2ED396oLXKwe6PxZdK8MLsp2cLJle8Y7fjiq7BzQILzZ8ta9+i44a1gG1C4h5SNVYElr5spik/zCyawRC0DPQpYhsgePjiNVIk2ypmbB5z3zpBgZ2+iIL2LXfGUgqWH9LexOkzy8BIrG1Ud5BbXB3cv251ugM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786099234; c=relaxed/simple;
	bh=KfHxukINtiGEOaohJ11gOnrA9HOpJwXVJdwdJ3xBzyk=;
	h=To:Subject:From:Message-Id:Date; b=PtL1nPzKUe6GJzki5K36YHt3cqOAdE6JIeNUrxEHzRVu8y9dG6M8ZQd84COpOe1vMlWtSvKC8+WVOiX5SF9zOraUryLELiqMjtY/X4BETiJRcm7G1/eTuXInsn6PxJ951dQTErh2cTAZ0jUmFgpwScRHwNqZg0t6O+d6r44QFRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pkec8DEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pkec8DEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63EBC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786099233;
	bh=KfHxukINtiGEOaohJ11gOnrA9HOpJwXVJdwdJ3xBzyk=;
	h=To:Subject:From:Date:From;
	b=Pkec8DEnDusr2//Kd+K3WhAUMtd7LjAJhFBQkNp3QUIwnaSP7gxKwKjrS/F8+Rf0o
	 FsIUGCpekLVE5KNBeoi483aHkeZMEYxlO2p0mZX46Ha72skVsZD078YxUp7Fg7CLms
	 k2UD1uSUgP09+apsy4LK7C5uDwhCL5d1Ish5wSgOdzDVryxnD74uTUCz17StHQPYqd
	 qv18GIlJSn3wvdcdQuWNGnvVgHnHR+yZ2JuK1WH0pHmU5GTqH8AJJ9Qg3o0ug1zN9N
	 ojinpj3si2Y0zhrj5ltmizBjZmipcXqrmjP3B4s4oyv6dt9mIEsH6gVQ0DS6X8jmJq
	 UOmJDPMoJXx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC2C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609923369.6934.9945870058452396518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981318aa6ea95ca134c372170811db4b69114f04f328c725537de2f5f1f4c799
Date: Fri, 07 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786099233
