Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3046D17
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751588996; cv=none; b=ZI0VfReDj4Zz5Th7EkiMEwVV6xZSteFm6dByluDbMMTH5Vkn/faweVOfy+cQzNSbIQhhtGpKRGi4HaBiWYLnTWT0cOlMcIc4Gm3Vm8PN8Ibons7BriWp1WT1zif8kZUUZuHExDm0WynZEWR4xTkYCvcu4RTf7Ynnp1uchNOjL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751588996; c=relaxed/simple;
	bh=vW//Gdxpgp7XZdAm6ZdL586RXETzV+cr7ZXc+rqrlTY=;
	h=To:Subject:From:Message-Id:Date; b=rcQdtTF6eKa2WfXVuGyA+MUPr8YKN5hN/KkgUzWnjszkf9wY2HyG60Fb6mPOjPYtCwlT7EPKKloB5omma5VPhc3PYF7YYh4ozHi3R62XoQFG0PWo15MOvCxHIMLYayGviWWe93W8QIQXQ3U1afSYMx/NcGVBBEe/z7qmCdyxuWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHWVrGCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHWVrGCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F651C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751588993;
	bh=vW//Gdxpgp7XZdAm6ZdL586RXETzV+cr7ZXc+rqrlTY=;
	h=To:Subject:From:Date:From;
	b=iHWVrGCCKSaqe1XdVS6aTiQ5Om/+4E96895l6pOST3DPAaitElj7CimfH3ecrkuaj
	 saeRcEag0UjzJqSZoQqzPkwWiWkyzIVeP3OkGKXWuGTzW3wMkAOMhfGE/s7gc8F+W9
	 pA4JSonrgVqV0ycBdz+eHCsAT+tSzVXp1aQEWhdVrbkKTONKgInZMLYT7UT1XSKxwD
	 cm9QyCYliFkZYrar7bYoq4EPi4QUC4RtQRYyXIGH1vOXF2f5tuh4HSwUgwVzJFf9Gh
	 GoMlmVllb+HqIA/hewCcBWQ3Z8ak92Eg2Il4JcWPfEVM/0Hc0Lmz8YVK54lbLmQCWO
	 L9Nupur4tiIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E06BC83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158899357.26296.8296852589448903212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8898c77ef0159bfc42036174919def74e3871f8dc0b42c92ca50e15f8d8064e
Date: Fri, 04 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751588993
