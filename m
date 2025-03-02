Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C7C8821
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740946134; cv=none; b=dEY1ObEOD28XuFGz5RCAK5PErt6jZ8PT8hieXWisU1XdOqCwA8x3abtR/WRzmcpYqgS5NiYlS549abtqFaTjjpGHaj2N7SQ9/JKrDPbJi72EOpy8m3Dk8gB/xJkFxY62KuKDMiKr/9wsNEL4/0gakzNGoDLaCNFdIwUkdccQudk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740946134; c=relaxed/simple;
	bh=sscCYrMe62yuOv+NhRWogBGTLxsD8dTM4XP/Hk7smw8=;
	h=To:Subject:From:Message-Id:Date; b=Xc0Rt+ChinthrocLJoB4HHBZ1bIgCC9G8V5fXDn4Jf5curuRy0l2+qgX5qAEQuxYMwxemwkGeoOzjbZDBBxXLbK93czr8XPDKCWZp5/XrhsEZhTMy27q88kpozb/fb3b9PWaTqQy37BFZtPajS6JbXo2qyp5Q0dKrr7NKk+lAqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEJEQreB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEJEQreB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9816C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740946133;
	bh=sscCYrMe62yuOv+NhRWogBGTLxsD8dTM4XP/Hk7smw8=;
	h=To:Subject:From:Date:From;
	b=sEJEQreBqHRPpfb0mwqwtYYNpprk1zDP2QQpfRkQhDbiIt3UUYob+4ONldG5Vi+Bg
	 HH2ozNyC3JUwr1XGzW0it7C0djptQFvOkSNaTR63PmQ2q+YLNdhKmhfd6JaCxG1qMM
	 Mhps4x0CCrSBj9uhsuL3Llo+O2nE/6HlJjt43wzX5psYSVmsahtojAjjXNm/9UKTOE
	 I2lPc8h3NV6WWY/SL6JW7fqeAqFxxkOweU0ps12vOM1jfvm9yp/rmhlVInwurSU0I7
	 SP61r0M1K/DdXj6Dx5UFXqiiNdkW9E3Ryz4eMMdZ/cOXAv5kBABp+nETy8uQQKPvyN
	 hVwySChMbJDfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E4C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094613360.4526.13365342931829886807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b32b57ad09b3b07180e90382787a826376565425267d7591cc5234bd2a8f63
Date: Sun, 02 Mar 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740946133
