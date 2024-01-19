Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3774F1F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705664897; cv=none; b=i6kGTPwddsy3G3Xn4TYwjnS86mQMxyeb7C4y0IfgsJDPbW8XQ21YyJT0ZGBbFVs1/EwpUQGGr80NUDM+Zn7Dj7MXo9Dm44DnZk86CNsi49UenEXwjPkS1kq1GvoNo+IwF/RIN87gTRb8jMgHKA9QLNL0BxO6kAH71OITzMtAsf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705664897; c=relaxed/simple;
	bh=bpCil9vPMHLL4rsnJsgE9IaacC9ifwOrK61ozWg/w0s=;
	h=To:Subject:From:Message-Id:Date; b=tIpgus4QaL/y/1+Lxr6d/QUfPHlc9ddNNwfROl6a+hE/p9EOZhjRHlXtZ3ZSZZyyx48SIbSlZC0WIXyTZWKDSSQRmfj0AkksaEWDXQllSFEdJc8EVmOlEhO8GZRx+5t06sIk0qIL9JqKcRjTrh6eM6TtKDJAdgFoaZiG+7UdcpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV3PQEkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV3PQEkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79880C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705664896;
	bh=bpCil9vPMHLL4rsnJsgE9IaacC9ifwOrK61ozWg/w0s=;
	h=To:Subject:From:Date:From;
	b=QV3PQEkk2JUZASX88ViykHF+Y0AkkQlj6t0m4QM02kwuCC0PmQVCq+pNXiHHcSRzl
	 fLENjn91O1rYuoMcfcNkTniKAqn5Jqnhc5kwSvsqQdNLkbd5DlmAANYbHtlynlozLR
	 EPqsgk0fpde5USJFSxZ7+LWZpikWCYe+4m8Xjx0J2oAOXn1aIH6ZaGSOcsYNUHrpk2
	 94g6rOsRJ23bHpVniwkmxAKdbzYuHsdDYeLcKTpUlwXSf+1Ck1T97xtqjIwfZqOy9n
	 ncwwVjyS4w7QNlQm6WOge3Pb/Kn3TSJLmfrqhs2hr0NLRc0ttCm65+p8xerTgsCDKj
	 vU9z+DSfuGBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC14C47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566489636.3170.7532782238304769589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf05f202e5203d98afd5f1033ef23fcc0feffe0f7734ea71198ad10c9fba536
Date: Fri, 19 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705664896
