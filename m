Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516041A682C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791687034; cv=none; b=DBja5XofYkaqfTOZZnL6N4X7bgbzF6T+YPMJxE3TqErs4Wkt69TbiXI+3Hi3CpHf/gRcpVhCvrkdRAyewmECCnNhCIJPDgPZzWy6Fjres2iOmoH8afzTLQu4bA7UkcN0gnWlydJ9UC+fcIUtN1XuZ4N0cU4wYI60L4uUjfDh8RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791687034; c=relaxed/simple;
	bh=3SDOad8pfVWhmVLjxndzZfgB4jbK6PBVToVww5ggbuY=;
	h=To:Subject:From:Message-Id:Date; b=fMlOdogQs8pwIoqm8ROHGhe6yRJSQuuAvkBnxedPw1s6VlCI0jeiRXkGPFTK/Gg4fXfOlgzTT9NcJDiSeBWo3hNqEOI/dyPCrUFid4ExUWGsbnIczMEySWd+jhNwK4rPSKMsgESfSoX+QkePN7vMPBy7eZ8uIprG7jT81WY6egc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcjqpXZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcjqpXZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8F9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791687033;
	bh=3SDOad8pfVWhmVLjxndzZfgB4jbK6PBVToVww5ggbuY=;
	h=To:Subject:From:Date:From;
	b=qcjqpXZjuu5Jv7h8AE9CGUZYtKcSFAmz6ks48wrqOIVYeL+QOXyNFJfrczNFcdtQC
	 U2u6Z1Cj+KFYVb/k8FBQUvCqWN4tCcX99S5mtNIWBIBJ1I6vNsp5yfpdW5J1OwnriX
	 RuJ6MOaM609xbvAuKSNsmxu/8jaLWBpSSJLcqSONy+p5JzgbinxqvPYWcqTSjcoETM
	 pAs/PCs/wL6gZHRpwGb+weiy/llqea51A2Kc+6sMX5iAZ+OcfWOylqM8Z7ptGC1S3N
	 bpSqa1ruFWM/tx6aQe6C+tosUtDc+uGKQnBh9bnxQpvAcVgnA5dsg3L9n0aLWirxk/
	 /5K9Rnbi/3QUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95C9CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168703368.9006.14028833520754860860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72d712943ae1ff2e2590528c8fcbb5c5d35b0999123665a0e0f6384b1863f56
Date: Sun, 11 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791687033
