Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B7739C012
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782487054; cv=none; b=lAKHIoFM5teLe0XCt+C41RmAJ8AikIPleQjGdD00TQVhK2Tk8rVCLvkAjxo8nmImEy6jizhcIHtEhAJIKNHD0fd3Nz4UwNk+92yyQp3ygxI2mHATSQnH1q5HRpC0Kj0NoN/YtRwQuHaSvvvwAYTM47n2WbxKH/+ZJsd5wHPvLCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782487054; c=relaxed/simple;
	bh=475LPWYEYkxfcBWxTDaIiWH1RqZn+/uFUOzUTesojn8=;
	h=To:Subject:From:Message-Id:Date; b=OeKUoMAvcRNz5oNbEuAfA7A7wGlpSC6wU7yQEg5OsOPY9kpl323pW0mYhuW7ukWyVZpknTIt2/ljMPPk9lJfbSwUZ1/24HDJF0V9NT3KtXUsst7T1pTR9A8QbIRD72u+RqvqEZqsKnJfI4CzWMhhy3g6SN28gmVqBF/BxkkQGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCIMt1hR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCIMt1hR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2BAC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782487053;
	bh=475LPWYEYkxfcBWxTDaIiWH1RqZn+/uFUOzUTesojn8=;
	h=To:Subject:From:Date:From;
	b=MCIMt1hRtk6L38Kf+SXaFGYmWKbM/MtknODnCSsmCmjslIlRGMe+h1yGfEn0oDhTB
	 1wzZOrz9JvLk4Oe0JIEtgyqZRKqaO/v+ngBypsCuZj+wKAgWjQJ5ofSeKxCxrVsSMd
	 yPe0+pfBPci16GdBjXUCAFmJXKXeBPjvot1cft30Mwt8HrOUPxtvzwJ9D2RBxRlaTh
	 X4R8W5cPh5wAnMqrR1RX4YUj/4YE3k7j+kuAl9PjReqVx3itCpLiRbebWSvkLtZtQ7
	 S8504TuTps2kHzpSPG0T+zazjyd8g7PUlVtCMSw6dLNDg8UkoeZwfQRCLMtkH8D96E
	 FGQCql5CucCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06CDC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248705371.29210.8082459327244110164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920f4ca48d84b22633c56d192598611f4c5c0698d3e05508bf9af50b7a904c01
Date: Fri, 26 Jun 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782487053
