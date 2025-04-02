Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37889F4E2
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743553795; cv=none; b=BMkC++tZBoD+i6OoUJ3T1EZ29y/rH7dbJ57fv1Z6BHzPi9MdY/ZdZxeFm+Zhdn6XBLXrlKLn7HsMKEt9fnok8SCix9RikNFM1DB0xvA7ie59lBP7dcBN5HCqA8fhY6JVfwQt3cuf63xL9rwjigYIk6+He9U4V9X09iFxo6vdqTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743553795; c=relaxed/simple;
	bh=TGdkaWsWoqnmp6wo0AIJ3ugeU+2lzNkA3lTuLOkH0ZU=;
	h=To:Subject:From:Message-Id:Date; b=Kn3N1tVJTGjIMx7UaIqtdM0dcYTWgDnufOfMWjM1RRMhEXaZrAQQAK2BKMXqUaCRhN2Zr6yqpmzc4R1+kMhdLxFV+VDQuGPFS20pCVn7I8feKg15ZlyTUrVCcqukL5R8Tygqj3CcWnOeK601+3sEuJxyOhFfWUDrk9GQauQcS3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FofdP+86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FofdP+86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A4EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743553793;
	bh=TGdkaWsWoqnmp6wo0AIJ3ugeU+2lzNkA3lTuLOkH0ZU=;
	h=To:Subject:From:Date:From;
	b=FofdP+86QGTS1Qksyp6ivAHIjxID21Iu351Cs3pf67E1lQ0Do/4fSPJvNpLdBA2FG
	 kaLrpYS24Pljh7GajXH6uKGgznhx+flJ+Ko3NfJFr2Na7aSCS1j/+gOP6j25jg5TJs
	 k9Z360qNAHdKKrxvvKeAAnSJb20CPzJPoccylc0Ez6hUdMHQ/C+QdzMI4ISg/3D9/k
	 DQZVa7XLreVPWEPTe+Fk2oLNfch9BMPnQ+I5aexsElVYyTgagQFyEPULH2PQLLqV6f
	 Ie23VW8B/Aa3ZXAV3TIJ4bu5jdj+75HiPUpL5DMoUYEtWSqPmuX7fxibeIu9d8oP+8
	 bqUjFRLkf7QBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B50C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355379359.25580.7026126116285083705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f559559379364582c937c0fa4718be748b020f7cdab6565201677dd7ed9d46
Date: Wed, 02 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743553793
