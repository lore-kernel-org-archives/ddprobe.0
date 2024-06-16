Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA111862B2
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718526503; cv=none; b=CKqr6cttQKhOj2i0qX7nZ+7/+X3bcx+woohW5DAcEMhNsSel06CI21wTPza0m8SWi9DXcboQ03a4n8eeIPa5KwKrpQ+bdii0GzxKvZ9cuO2xXd1Ukou7evMfBaH8EHWiP2e3j1NoDgTsVorGpzy8DhIWXhZDKJ04XazdgZ3rD4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718526503; c=relaxed/simple;
	bh=NKtlgG8Sx6sMjFMoqSBj8OMPe1curI3gyMVXZ/L9FuE=;
	h=To:Subject:From:Message-Id:Date; b=rY72estcJ9VkYgfjMq1jo6aOMyvuzVf040eyyDVa3wNKFcKB3889jbyBeUAHbvtWClcBAMaC2fa9djPGJ7KWhC0ggdTi58PKfB35FhrVSWzLyEFpKfGxWG2oOxlzYzr5/bqEbQxjSq7u83tx/TZKZlP9FbqLUQ74R8ER5kYgmZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=povFyq1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="povFyq1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB459C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718526503;
	bh=NKtlgG8Sx6sMjFMoqSBj8OMPe1curI3gyMVXZ/L9FuE=;
	h=To:Subject:From:Date:From;
	b=povFyq1GUkYyx/T5Qubm7o9Bb3XVrZzTSptyIMlQYu3JsyEeJQ2pXHE/cYrNTa/m0
	 rVwaV/0+JwEK0MzA+sQ9AciPZ9FRd/FI08CA8/d4su4v3i/BP3PMQBQjChugxlHqc6
	 HisBxqmyBG1Z9LqlECIVMj1h7GhPbto7LMgA3xlHCL67cZOgLu/ohSDfFqmNZWcU3X
	 3b+DsI6o1uN3EQJzGRm6RuQU2J73t0Vt5C8iuoh1TXSapYJXzefoppqfWVS1LG1Wc/
	 AUuvA4aIKO0xXhCDOnDIAVdEZbRyd9yKQ0GAdwOBRGwiROl5Y2OrwbaU7eYXDmOvAu
	 jlwr79wN0HZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3650C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852650283.2434.1649745326440284079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c680cdcf0fc540e41ec9438527d0ac4459c599fbbeffbeb203498081bdd24080
Date: Sun, 16 Jun 2024 08:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718526502
