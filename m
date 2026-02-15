Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0886331
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771164894; cv=none; b=Ory8ch2czJBpeXwjv7xPJwRHIx5lxx1GjUlnh4V0S9IAIcWEN323WLLNq8o+huYvd0JVfi/sfef9SEr9TUz4GJJ15DWVCHjv1rrOPB3EGWsXVnUy/m9Od5/VKOMohIQsJK++0iqafR93o29fdngrPDmmxTJ8xhfHA8oUmoZ94ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771164894; c=relaxed/simple;
	bh=mekqOb+Pn7rxaFyMNtBst4ivOCRnln4xA4ukmAbT2fQ=;
	h=To:Subject:From:Message-Id:Date; b=P/OukHHLhX8fO1n9L3M7JCC5AR68Hb9vJwrWO1cIu5/hyHzXmbkfODrgLLF/69zdCwhdJPZkMq4kKlqGz7HzO+8/NzvjqAQCzu/LZjbvOIs0uJ2Bc+kj51cfgXcQByINs/G9uK+xTDteq9DfDLFLHekSlSDwZpPhJrL8FkM7+yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulBACue2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulBACue2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E31C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771164893;
	bh=mekqOb+Pn7rxaFyMNtBst4ivOCRnln4xA4ukmAbT2fQ=;
	h=To:Subject:From:Date:From;
	b=ulBACue25llN+R6wjNb4BkicpKLt3I5O4yQaQTSC2DeQXYhbXASg4oQBw1ObkD5Ff
	 dkpKvJel2zoD6g3VK04tfovOErSPVCQmxFcEf/wGukP306RVzl8DCyZrV2csuoWoBx
	 NuxUzfkdmb4wgyioqP0mpCBo25v1U17sx5D6Z51AalwPZzJAyTZZoP5GPnwS+C4S13
	 q0lduwNBniKhKFhGyzXeYYkFirW9LeZxEjWfgpVI+7siYF4/uFnbxU0Tc9gHE1F1Dj
	 YSVIU3mFkCkod02AYAcTeEOriff092QXryp87mO4saFp9+WoSCsb7BMW08pvCYxf4I
	 QS0fEwLzARbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1DCEF586E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116489362.10726.8288959821218712814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9ab2cc1d822cdd275c3e8f16ed88d4c0e6b690a54a344fa21a18e0d434d860
Date: Sun, 15 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771164893
