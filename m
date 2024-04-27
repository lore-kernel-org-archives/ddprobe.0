Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CD32032A
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714224143; cv=none; b=ty/otCKbxARzQNHP+EykAgUUEUcOMwJfpaiZfiv0f/hZ5KZKWGN0LiIz9reaq1cqfZ2CwUU9OQ8jrfWuxLPrKdmZRgOkMS1tCnufe57RSk/9gEo43zQOJrCHJThfasZiR7TOUc5VfhQ4QDoJXZPYWkOJtBsKUflR+nMjo7oXSVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714224143; c=relaxed/simple;
	bh=GfqNuI7A9wkkD9bYy0evIam271M8Mk84nF5Sw5ARJsw=;
	h=To:Subject:From:Message-Id:Date; b=CPY+Hc4Vy/9HKsK0BdMidSeFGOPmPksJWJ/hkwXUfmoLBr0yxf7KeDWUnMgy/yoBFgOpvzUaL6xESvX1XJyOjpoVbGYG4YNoFOMlN+9gd4pg9AARjIdzn0lZqL11AI77nGsAkjP+/gfjFkjNMpdu9lGNWX6aG03o56KztJ7fG0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg91s+Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg91s+Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE00C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714224142;
	bh=GfqNuI7A9wkkD9bYy0evIam271M8Mk84nF5Sw5ARJsw=;
	h=To:Subject:From:Date:From;
	b=rg91s+JgxW/nD1ds5iAXm54aodxY8h0ahLJb2rR9dPXiooc0rLw50zZrqrSy5KoQU
	 v2i5SW+73e65cRoqHEUTc6qNtb/yAJhF/Jf5TlslohWtiOW5+P6/q+I24YADZX/943
	 E2mdBSLRHpfK8tJTrw450I/wLat8aagQ0vF5BzcIFi+stSZAp4JPIYwzla9BaeHvmt
	 kRtny+VB7qwboH7zeGInlR7NJX5hv43OEbnXsTC770U625GtICdT8fvhTR45JdND1c
	 HmaW3keyaHU7yUaiFxM2EXGIJzHBEBVwaawz55GACXvz9ZjGMMx8OxqLqdxmtvKR8t
	 9Ih1oWR9ThTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D53C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422414277.24706.1541747564143101987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2030709c32e20675fff8455e2424555900b1659cb58b05f2d9c37c90246b47ed
Date: Sat, 27 Apr 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714224142
