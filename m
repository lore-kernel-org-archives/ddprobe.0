Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D2F3B0AE7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775085334; cv=none; b=FJNYaBS3Hp7CLtAPO7nyRhB5Dq6EMZ67echgQcXBBh34ddgdgDs+vU72ZFcC8tak8cTnbn+v6ycCcOUyTffpEWYdX3qLWkPlc9ESf+SgdfI8Wd45gVzwOdh+c3F4u+Bu+YPvssx0IjMq+zfenCV718Ob+KA3hDgvEmkTjstTdSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775085334; c=relaxed/simple;
	bh=TyPrkAnnHufxc9GQJqNflHC3cuH6qS7HFp1qPErrMo4=;
	h=To:Subject:From:Message-Id:Date; b=eE/3q+B/dNfrFS17Xn5o++dG/Ie/ubMyF08LxnIiHbP+ziec0LYfKvmZKunEhIYCG7SzyV3lGFt0UjUP9nbJRG/peF7sO0MM5GBy+d3saq42TVrOvIMIqLBR6tRdbHq/3jCEch/8ysekS1REjcY4+wjNq81/YvSIQpx8lN2JrDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slbp8uAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slbp8uAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE273C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775085333;
	bh=TyPrkAnnHufxc9GQJqNflHC3cuH6qS7HFp1qPErrMo4=;
	h=To:Subject:From:Date:From;
	b=slbp8uAZfU8dEmC/ekzKL7lXtAvCDt8/nI/8Pp68MOLuu5JJxxj0z8R8fK2Z0FHvh
	 ueqjRj6PvIA8p/uZzLhwxOQlESgheVVk94P6jZcXlgQ0ZwspgLqrWD8QxKeaTBQInn
	 T5BTZUJLUiUv7QhpJz8dNMqUcODB6MhFj3w9ATUrTVsbMtCaa6Doa46bK9h6I1n7X/
	 2cB94w8CF9bSwZl/szidLVEdtzJ6YUGl7V028wbsBkWtCytveo2GU4nuNrF4oI1wCg
	 21/jJ8JDDADtNb6GI0BNUTDiN+5dYIYg7i8SPme62/I6c6qzfenz89b3CNs96dYrl9
	 /maCYI7AWooCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47C1112242
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508533368.18030.15056728260378127057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08aa5bf5a0418fb359f4c5debe0753bd76f68f67417dd49fd269437c8f27aa81
Date: Wed, 01 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775085333
