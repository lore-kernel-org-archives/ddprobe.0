Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727E1D88D7
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775381134; cv=none; b=FQxn3kOlybHbJjCTJW0WI6pa8SWUQu5kvv3605Q5i9ewGGUX4Fp6mGCvzqpD0fZjyY/hbTdI+uNfZ7eHP+lYmXX5hj+U8JfQOENFml4YaGe/ibne7E9T4QZSejacY8sHxzz73VHJHkg/gUdYTKBylNYTcgTn1bxFwRjXw6bPXvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775381134; c=relaxed/simple;
	bh=vaF897emkziVaW3mqWrnbP2YsVHiqaogcKlVYcanCWE=;
	h=To:Subject:From:Message-Id:Date; b=VXsAPgR2pHenbkhBe4id+GVR/Yzjsgc65+XvO6A/+bkFir5j/hteaLFJYdzgiTngDuS09XjrZN5ViQjPAObYVtwYT0JcDcC/h4HbPA11YyvYmFCN+j323G0JKOdNPT+9r/4jruNoFll57Ds1wzc9pEAIUjO/JfRjC5W2LxFP1b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdBWRyEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdBWRyEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E8DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775381133;
	bh=vaF897emkziVaW3mqWrnbP2YsVHiqaogcKlVYcanCWE=;
	h=To:Subject:From:Date:From;
	b=HdBWRyEdYqzweDtmQHV6hZ8QsSHuVQK/ImGObJGSBRS8eJ2U0smn0zxu0YG0uRE2k
	 VzaPRUm0gARlXD+Gw7L2tUk21sPl4O3n+elEd6HfdFMJU9pkcJdzh3wTGVjI3gMqZO
	 x0ra8vlW2Mst43PqhDMibrmrQgZzDerngsx31CGC7C1fpdY2qXun0s4H3eWEpsxAK1
	 FMfScGeN4tjOwM7ty1O96+t+BwSbX/i+nbgVq+0+5GzBQtruq387oKLZ+1rTsxEL3Q
	 I47W8vMh3CEkKtzPjlxYnYkt7PrDqAJZyg6BTyGMnEtzfklwfIfu9ts1Nevxx5z34g
	 TyL0OPu1e24UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E09E64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538113369.14403.3871024360635876045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651d00b32c50be4645d81ae9ca0198baa9e6bec52f604e6037fccdb16f69cc49
Date: Sun, 05 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775381133
