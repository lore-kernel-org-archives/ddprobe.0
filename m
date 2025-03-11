Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE4156880
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741699735; cv=none; b=QsAJdtIWVwuPff2xd/gLZkOg1nYVDyorT+48qP04qy3Qhyd39wBNI3iLoTwyPLq0VYXIrMfZPNZCjcAUvygsfg+bZj9B/rwbnfhl/wPlnPNgPghJQ4Rv+fllWxz5wZJQmsex6Rnu/pjRQnv8y5L3Tg6w1H0irWojT5A/X7GBRz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741699735; c=relaxed/simple;
	bh=Om1/RanP3D6bL5UDIlQ/cPjJNKehhy3YUwzTL0QtUcc=;
	h=To:Subject:From:Message-Id:Date; b=lUgP6AX9tP5tuEoPMUj6XY7xA2tu1hYlJsclBN2T/vlabZNeoyKoXLEkLup2mpmHeJWvoOhV1KFJ9gerjyU/2BSjrIZUnEh2ooKRou9cvnxBCWqjsSXcBaywGCc5qmOBhJFdoK0w3+rvA0aomNz6dG+i/vrs2YX8Csi0YTaapxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuG/BX8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuG/BX8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2EC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741699734;
	bh=Om1/RanP3D6bL5UDIlQ/cPjJNKehhy3YUwzTL0QtUcc=;
	h=To:Subject:From:Date:From;
	b=RuG/BX8M2OA2Iar/y6EI2E6kXDKaleR1k7g5gU0/a6bjCwsqc858W2gdiPTFwPQRe
	 nhsCyboIGP0TR1dtLuf//Sj8ARp/VyfbUcsLVAeRfaQtdN1rvT3QF4h26tsopIvGUs
	 z2tdoWGVSPBlH/dE5JQ81ctRGis8UlhxZ9B7Sb18egZqE2hxQtyo65sWYmoa40g4uo
	 ovcWSUFGuF/Gk4jgvqnXRMHmV94JLVdH5ax3oSEQh8lsmJltEGYXqWdA9u4nV455kV
	 xxHwy4eao+EDPbGPJ7TqyFWF3XOGTl81siwhgIGzFmfICMurqGhD5ZHep377Rgm21N
	 xzojqqpO4WlXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F82C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169973358.22094.6618631021475035863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d01786e490aea55a3fc084ee9c408714a9904e022711d81a58cd0f967622e1
Date: Tue, 11 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741699733
