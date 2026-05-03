Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143F285CAA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777804654; cv=none; b=fFNBhx26F2xA/uI2Ukl8/v5Lgh43cMp/Ox+AAC/I/FczxbttQVHa9Cl2TBuzyu54MfYLPJ8jueUczyuET9bGBlXwH+pGLqIkZq1HWMlaTDmah0q6LWKYnjuqdcVb1OSVEs0F4T8uN+uatdyBk8IPTx5qkRIO4W/y5QOjHL3TUnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777804654; c=relaxed/simple;
	bh=3gIbxgVZ0XCJj16WshLZdFagYfc6CdUBATji+R0nhiE=;
	h=To:Subject:From:Message-Id:Date; b=kDffZq/yaIQ8C5M5gIFm7Q1aE8ilOIPaWcKZ+gpKikjGUYzp4H2sYaVB4iP33gqZJ8ska9rlKmFdpyGI45SHoaHJ3hAjtZUHylU2qKFVKN6SHQ3cx+bBvbVgQw1tSyU1FCvMerjQISzsQoHGukwqUWl/NGmmEpOIIvAwOzCbzsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQcaT7Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQcaT7Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04B5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777804653;
	bh=3gIbxgVZ0XCJj16WshLZdFagYfc6CdUBATji+R0nhiE=;
	h=To:Subject:From:Date:From;
	b=XQcaT7Z2kQZ7RXzgEgh5n5c2bPE5CmNU7d/fyrXnTEachWngNjkcwFtHq9Q/7mQuw
	 UEgGy8fatn6NUFDEBlTW5r1oCGIdFYHwFe2D4zMyi/73xupP3soqTNUEY2OXA+M8nN
	 ksNQQDlI+TOzIU6IXogeUVYrOTFiBb10JmgqnZWa04Dc2FuG/57Klttg3+qhowKy+q
	 wdGN0sV6oquTmewj5Kl9sfe3g2hqy0rZlL4e/Zh/jj3wJHYysW/hYFvHZHB0QRL14E
	 tFBipIgVs7p5vqXIqZOR0tlYfFp/hNzlzKzjbOHq4R0kfAfsrCg+elbH6GWQIn+7Nd
	 BMjJO57b7EyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E0FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780465368.27640.7991112467585495896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1900339755a08c2b7374e791c7dccc6d888f2485ccffa91c3bd6a1dd7d1ad44
Date: Sun, 03 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777804653
