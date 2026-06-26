Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB7D3E8681
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782466054; cv=none; b=fC49zMsVnmGimv52Qhuxy8ieC8nrkjvJOYS1MJf8BqWnE4ebAG1pFixGOMgdWbHQGb911UYgw+KI8aTjuOYCN1ZVmZ7lyLV9KUmcdpY57inqrtV6iv9v83TBJAKFTo28WZfxjVPkXX82vmi7xF6CBMkRxIVhmzn9ESohlSLYa9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782466054; c=relaxed/simple;
	bh=N2zmtfhikLRmYgXyZhW7W0GQ9rKNTgAzjPg+EAmX2ZI=;
	h=To:Subject:From:Message-Id:Date; b=b+Ph+FnQ1kDqJnEcyEns/viW+5NSLfs44AABPcX4p8EZooQCZ2k6YHwotIazGNzF3XVgO1JMCdcYHAbKWVslUz2eSrE12ccve4Iq2gLHTZ9ziZrZJ5EGtGwpJNMeSN3TrsajBjai9d/g0liHon3SGX3/viBdA0yvN4+0HpeQ5+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y11sbz+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y11sbz+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2BB2EC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782466054;
	bh=N2zmtfhikLRmYgXyZhW7W0GQ9rKNTgAzjPg+EAmX2ZI=;
	h=To:Subject:From:Date:From;
	b=Y11sbz+pPl5qS9hCCUb2rdaRq1NZTKsFYrvOjzjnDtADKRnot+7lmHaSBcm3AW2wq
	 ga7eADVK2FcJMj3IM/sRtN61kL6GxCOEoUBfGuhK/3CcXmzShtCCFcmNDLKnyppvux
	 SaIzHIYoglB7Y+T1/06Vuf0YriGVPkDRrRt4/Buwupzg7qHqiPbTolyzDbZDIIrRVu
	 iz9zmxKIjK4xrPrQ82yU73nej0PXQvzgNp2b2SGgJYmnTX/nN0soPBGgwfnLv0c26f
	 c6xErFwcWmKAaiOasUu/DY+1fdwT9G4WmJwzNMSnxQxhf8d+b/7NdoUjTTl14oAAGz
	 MvjDjWxJPH8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F47CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246605385.3856.11658052370223780121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d1830d87f09d6891031a22e6129fcdb757fdc5196b79ef45d1f908d4df1f2f
Date: Fri, 26 Jun 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782466053
