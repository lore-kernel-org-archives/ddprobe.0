Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4153B1A08A3
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781131594; cv=none; b=aUCM8OB3CPJWvbaF32BLZqrjksWyzaH3mnAMew+0gCpuwJm1Qcc7blMwL6UI4mETJq8aQ7Mst+7DLNgyFSFhOZMw0ltrjNaDCtdzw2A4OvmZ3fKAOPOTy7Ch62ZrhFC9SsmUNRYNLJIeyntGj0VN5X38YxcHN7BSsbqZTtdufqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781131594; c=relaxed/simple;
	bh=W7AHcaJZ3uNKi+VlQVpHEB/MBEU8XvWK+boB3dupvQw=;
	h=To:Subject:From:Message-Id:Date; b=Wrb+u9xK4huXbwI0wa0phYWtutJZVU/QIvVMkaOqFR+D6DZP2ixgNxRSYhh/vaC2MW0eK1ddhy0kWLoMxgyZRfXNh7H0aEIr88iPj81hMZGs3i8mc0Cuv06ueKrCnJO6A6x4ghR7qPVULpyRQbuCnP5tqzRYU1Ra+39x9lSEqg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoFpnLWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoFpnLWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B2AC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781131593;
	bh=W7AHcaJZ3uNKi+VlQVpHEB/MBEU8XvWK+boB3dupvQw=;
	h=To:Subject:From:Date:From;
	b=DoFpnLWOKOu7YmE9pTM2Z+dgdBMXbR+tBBydVdvrIr5kUVq/eFLgUV2zXfw9vPyPD
	 SYIwlv7maJ3qrDVkfLDdwcxMOJ3OW29lJFoDYl7ssaD/Zzr9e44uyQRGgdlpD3s12t
	 HC1kXS15kNO8n4lkFKh5KKoAw7xgaExbGW6y111gkr43TUi5MrF6eVo1dQ8eEqvBDb
	 DENa3hxfutv6MaC/Oe4bSqDy8++bVe/sNQuLsy5P4+msQW6omLAQLeIKWaa2LIwU63
	 kwyG55b08YqYY/RDt28746lCrCuofSBYNHlRpY3ZDqQ+LYrO1l1rApDdc/ANHsLlgK
	 I/XLCq6cxb8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4D2CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113159369.7948.1521415610267948530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5c64cb9a7b6ae57a74641cea78a0c1742eb6755b8b5a2e5778391f552abbdf
Date: Wed, 10 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781131593
