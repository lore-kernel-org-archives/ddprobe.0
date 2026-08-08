Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443131AF4E9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786152634; cv=none; b=DZRJ5mSe/WWufZrzbg+nrQ9xUWJjEE0umab9NE1k0WN0mKVpulY7ZqQp+tSqIwI+KpxkaOo2oiIS0WdzsNhzvd/nOlsy3yDygcBphlRcnYFpU4t6Se9x13NCrMezopmem1X50lqlQJOlOMU1+ufHskxwOYx0YPjVTMY5glDpnuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786152634; c=relaxed/simple;
	bh=2JjzMOyJsH+PSYxqmfvLLriL4LjYIiKP+oHSzuGsw0U=;
	h=To:Subject:From:Message-Id:Date; b=ku06glz+HJLK93HWq2NgLqYA0BESpoKPd27W35asL0+CtD6SAsZ+sA1Xa3t583sbrWvsQZmPbxOkAM0vL5bS577FxgjszRL15NB3UNf6OfE887KdT0V+50sIqNe5/ZLPc6sEIqF2UG0SEphlGU/wkCxao8PxLAb6hDKCKBmhs4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzbCugsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzbCugsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D804CC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786152633;
	bh=2JjzMOyJsH+PSYxqmfvLLriL4LjYIiKP+oHSzuGsw0U=;
	h=To:Subject:From:Date:From;
	b=ZzbCugsPtO1jvqQTs7/gagrYokzKrmTsnpU6ObDQo+in3VTuB/Ddl37gCl6XjqcED
	 kycL8hI527+p93i/fyJe3Mqc4HXiXnbWYe3mo14GshVv0xbsmbFXxIUks5aloDkk7s
	 KHhlEqLyxwcNNwbtLzPm3fNuPHXD1JqVtE3LaJ6dfgAxozqg/j/THF3TgoekoUnVKW
	 lo2RwDGLWrZud1OnKgGORZZrte2eCvaLFBFgNwGppzdcFWVtHjnUlLXoLF+gq8ny/W
	 nI/AiEutWM+JcYZ7sbBFvEyVY7DXeP06ybxzZVVx1s17r4XN3zP+PolKJkfndY/bjx
	 DwMN1Tq3YrJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF70FC5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615263369.11658.12580205114106313495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c2c2913b70761f296fbae4fe75917c69ae3434badf7cda481c2bb669460ee6
Date: Sat, 08 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786152633
