Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4A2727FC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767597834; cv=none; b=X/AkcNfDj8CkzdZeS9xB1iLH8VFp7OWD99BiO+Au4oDbVTHYZKy9j/AVrkWW2A5dWai3E0lIjTD616St6AqQSUyc8OmMHI451otBaGJv7VHkQNLO31v9eS2kI+K2aGJmnoX9BQUkCQK1CV8ZZ6/xE+QTJwwkqH0Ac9ClQxoCeZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767597834; c=relaxed/simple;
	bh=06qQCm4bImrK2lXh4943NzXdQXYpWeTk0oEfxBPtvPA=;
	h=To:Subject:From:Message-Id:Date; b=HpehSbKx3UWPqJPqYeykNc1ji2ZhAc/kbUrgLc0F51PA4ZJvaC5AIjTb+WjhAjp/AeoI4y7PqZhGzr1LCQ1opL14Qba1ltOxZn8XZ+Eombs5DRaFBNIlcKHsgM8AJgVHCJmGRwQeoJO0vPjdoj5rWlK+TKVdbPCkM4ky8Tjybqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd9qLjPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd9qLjPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC212C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767597833;
	bh=06qQCm4bImrK2lXh4943NzXdQXYpWeTk0oEfxBPtvPA=;
	h=To:Subject:From:Date:From;
	b=bd9qLjPVhdk/L3ppkVhKNohiNw86JiDjxVSeoUMqXwAfJt1B3MVArXxS06AbUiPi2
	 B0ZFkJ3tfsy5oYGW3QKKoB/5AB02jfSkaK/2dehZ5vhbZJQRmJirXVrL94RBfOTsag
	 hctLrOkI5gnLKZPeS1fXF17j6ApV+uNAOFM4+lG3MGiF7fSGXYlYqQ/7W0mKzL7lHW
	 qtRWu8s/dPzVQSyA804Xl+fPnHJzfBC9MZrw6kIZQF/TtykSE203FIGP22j7HEOG0T
	 i7iBwXB+8hPCmBUE1jRFILsov5saMNV7cgG6K0jpOBVoFKPxYIBg4PvcKaRpCppE8A
	 kQ0Gto91szfVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE4BC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759783363.9941.10124748435525781333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f197961029150e3f0c4d9544bbe7a07e63e5afc93155ae042a714123c597006
Date: Mon, 05 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767597833
