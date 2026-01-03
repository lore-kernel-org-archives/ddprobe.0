Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0542A96
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767420234; cv=none; b=bOw3jZ1RzNBiNnIobXYZlysJXJny0af0RjS82K86B0AIDOK64qBo55hAEdi7rvr77rEtctBHFbLQO+5D5ckai5fz6cKn1A49wXEXN0aAQR2vty/MvKNAjbqp3FFQp4FNz46aa2qp6goZbL4gxuYBePcoRqnkGwOk2oso1o3iqKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767420234; c=relaxed/simple;
	bh=yr0SNr3i6VnekkNR1yiIbb+qWMxunvTXTbp19XH1OBM=;
	h=To:Subject:From:Message-Id:Date; b=VVrahy2ujC3R8lY5wA1IRpn+X55/s5SnZguOLCGMnrbkWUnR0j9YZzJGeWQ45wA2TG4DC5O/vihpoNTwXX/G7ki4J5AVqxBu4QZ0bA3WP7ObRvQLMXZ1pIcgrrDRvnsDBJ4fZ3pG91QoHyTd5gDtSd+dspQE0/nqH9TTjdsgCsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsdxQe8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsdxQe8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB2C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767420233;
	bh=yr0SNr3i6VnekkNR1yiIbb+qWMxunvTXTbp19XH1OBM=;
	h=To:Subject:From:Date:From;
	b=UsdxQe8LZ/oqw/xS6g2XbLyeEvGtyqjB2c4K5ctCZ0THeq2rPoZAoLYevA4gm8Bjj
	 EWn8wOUFaZ+c9EfrSw5268A2B7+Q5SYv8ZU6rbNsx/QsJtcdYZ0r+TPu1ESW4dy3V5
	 LO2Qu/6+5eV5MWuybaDmGcT0hx44buLOdOc6Yyt6NWIz+PaNhrGXXNpCP8+pM8k0fG
	 kWs6gpdNdIsWP84upC0FY3qqsANWrjxKXvoCOuPVUeFKHjhNa+OUYXyQ8BeM4UXwrB
	 O86UYldIHyvac8sTXo6bX5NMtClFXX8bhdNA6yAfSXXUhG4J7Pvygf/OQnGUty3SoV
	 wbHgzWd5ii1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002FFC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742023358.10244.4191627335862903044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348ef4cc4c87a7109d0be3fae1bcc575a1c244c677214a74603a16d5f3aefeeb
Date: Sat, 03 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767420233
