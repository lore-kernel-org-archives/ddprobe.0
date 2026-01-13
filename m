Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F1030F806
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768344834; cv=none; b=DH7gGct59X7EP0S4gvR+x2kSHIiq70LrsRMY7DWR8RXZiAbAka1kipqfEKoYzEufJZTgUMmBS+JZgmwGuDOdNGsBpfZEa9h+mUJThtpr/nvVmkHFBuJC0P9B6nEvRk6IQuVkzXrygqfKUdmybEHGPkwytBcJHZMdPJCHnHqEcPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768344834; c=relaxed/simple;
	bh=aT0v/kPVTXySW6Jktyv9svukcuPn2tNQZ03EyI3dfQY=;
	h=To:Subject:From:Message-Id:Date; b=SjaX6rhHHKKaP9biSnP/Amj6BEiXs85sJZqMZGg7I/lOSmgBnnAKUDiHjKBmgE//dJ5Rse4IzVeJBeSMojU+sUJwO/BHJRfDkBN+BEuFZPkaSumI6MiXZHjuM0efL4BSO860H1nTgQPJBqnRcKLGD1DMk45xSWdT/waMDEtRJlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0rOWtQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0rOWtQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F3C19425
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768344833;
	bh=aT0v/kPVTXySW6Jktyv9svukcuPn2tNQZ03EyI3dfQY=;
	h=To:Subject:From:Date:From;
	b=O0rOWtQ5NncRBspKxMRIvho9wlEIHximhlHTISUWuLcvSCXT+5PmSAXLhzLobFtFs
	 dM4Kjrmd+vb5inFPgPOX8lJecwqUythwbOvZWcNG0aLqqWk4RgbWKBQ8O2R3z0GItD
	 iRIpQTn9slc0tTRzgyqAdVPGedZJqHMpTCKdinpy4LtzRnuzZJ/woAGrqdgFfPHBhZ
	 MIXBfHS1qlxi5ebEc+8+VCrrxFkubG0FPxjzdUzeGeOgjbGm7kMEMV5YyLcsj1/7rY
	 kWNvGL3eYcqEs6plQsEi2NpwZY8KcDZri3y+ia8EUXXmSVsrGshT69MXHi5q8LGNni
	 XymNOWnb9xzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F533D30CEE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834483357.10200.10432568532441329534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01695322e61ea355bac64d9aceee5ea8c82935832bbd5f750e91512dd6c25e55
Date: Tue, 13 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768344833
