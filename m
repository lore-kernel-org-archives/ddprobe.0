Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6533B137E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713492563; cv=none; b=CLD029EYuUJB4mhmJAPerbByOfqjB+5MI2vOBwtymvYeb+EW0gaox1bR55dzomyt55S3FfJ33MkauK0u7arbtOknLLwJmgeqXmcE2BGprAvbv/DRy3R+DYZTiLqhdTjcaXsBWnsqO4f/dRJweH41pA8FclYbmfupRXQiD7oIP1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713492563; c=relaxed/simple;
	bh=N/m+UtiPZ42Wctr/Cu7Hc3T+0pFa9jY9oBM6LDb6lgk=;
	h=To:Subject:From:Message-Id:Date; b=fqDMXwXxgEDYQIHSr9c26A1RBg39c86ZOd/1PBvPHWpBhec16yBhzLEYlrQUSr+kb1bWFXThUuhmjs1Fd3mhvu4EKmRnKxMoaSXBHcsK2V+sS/U2ZuM9M7tLa5w8JYw/WJiKmIL8lhNJWFR0oFhXLzk61Lb+/5oQGUlR1D/cqJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzoCrfwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzoCrfwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD431C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713492562;
	bh=N/m+UtiPZ42Wctr/Cu7Hc3T+0pFa9jY9oBM6LDb6lgk=;
	h=To:Subject:From:Date:From;
	b=lzoCrfwB33zOIPym/ZSp0L3qPQG9aFk2aByJMz4M85U/WNnmqClmXDg8JMIRA89rW
	 t6X8lN24YaF2fG5pJojC49cjQ531XBeWgwcMFcYgqwj9I9x2zqenrEIua/tWnvImis
	 o8u7X2ERUa0pnZZyLp2Whi1GIpmBR9X7HIOiuq4ICu0BinZMtJTEA7YFBZOmEp4m7y
	 m1KoTqmT3Vou0DEe37DbusYlAl7lThELkZxmguyF+d4ZSHWn8JiWUSqj2vrMSFuq/q
	 Wn6jClt3f5HsRdtnxpUoy9oEvrR5ebk+kql5qcja3cMKKmL8KS0k901as+fGUQ+ZDF
	 ak+u5fcTpxF6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C121AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349256275.10975.2116874541026650917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb28abc4212b9ccc187dab70d404089ad3c25153496fc7b1c7b1899d81c7e080
Date: Fri, 19 Apr 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713492562
