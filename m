Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CBB819
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738287954; cv=none; b=MEEDty7hf0932Gubfwyz0G92rQKxXCIcx9G0zvOWGLM1Vcv4dBusL5Z5386cYvePpI4F9P1Ks63hjzoGBItlMKliPcgAj2Ztixym5Mi8UO4j2VcCc7jIAfdnNdHueyWm0BQPYVBrOXtRHaPGV6fpDpGrxBAwO+sMH7+m9tB9+Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738287954; c=relaxed/simple;
	bh=GjMMCY7WSfY4x1UIurmG4U0n7538VqfhuQyXfvmvmB8=;
	h=To:Subject:From:Message-Id:Date; b=pnGFgpWMxoyB3/s7/rIA0gB45d7Miptj92a6bs2Xx0ztgWYeQXidApAvGqtjFR8cygBj0DoXdryUkYb+qklb1h4SY14/ify5VSlxtO6bs8AS1ByzFmA0FNqOs9fkAETrvJgapDfSTqMs3npC9ko+tEIHavPDdyyiYZQGZ45FaRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2xQlN2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2xQlN2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE664C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738287953;
	bh=GjMMCY7WSfY4x1UIurmG4U0n7538VqfhuQyXfvmvmB8=;
	h=To:Subject:From:Date:From;
	b=J2xQlN2/YB8putLMUAP41xNoGdVZeLbBX3sVjitTs0AtiNwwzijpSo4/ntKDGyHWx
	 qFZNJQ0nitOT7gOejCC1AlM3kgf0G9hKqqUWUPXk7/2lrsCKCVHknfqa8/ahSTy0QJ
	 u0x5lsUNkg8005IcKDf5z6MMv/DBeYfdeUFl0wdH4Mk7Eq1alXqtMp4fDOmJcpzmnY
	 FdPpa7CmVex6XUQLQlg1n7CYJvxWFT8zf9CylFKj1qPqQ3g6ake3+nd8JM08hfmVnA
	 y7iQuIkG3zYmD8mmTbmiKCCO2g6mBbXkA8HYdMY4n/l45JEpNqmhAom/IVQxUfZgDe
	 Sz9gZGIkKxh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C864C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828795359.5451.3974233045184010203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a0cf7f1a3ee4bc88d982a6c1ef5dcc1e9a26ada0acc4492822132b71448f7f
Date: Fri, 31 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738287953
