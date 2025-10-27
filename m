Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EA11DDC37
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761563994; cv=none; b=l9u4CO/SeI4OjVBENN5A1GcbuGvQwhlQapQTul6p9pN7MKxXI8B1kobeXSXZS25zL/fV4jL28/xZxxkj3kBEd49OBbp6I5Qy3Q8piKrnPixSyUFCp+d1OtECXsZfwRpXY6xx6xddl4CKw0QuMDhyeC6an3ZkACfS9fe58kOBC8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761563994; c=relaxed/simple;
	bh=dIzmSI0CAX6960+p4yYlfUVlxTAPrc9hzZOdLSOkVL8=;
	h=To:Subject:From:Message-Id:Date; b=rBDyoJSKTJX1pyVTwLgTHNF+52xTUnxFod5HtemDW0TRc8lan6hNM+1FIqMh1D4g9McEKWrdwjiOS/X0ovIM0a1T0zy0czHcYANJSi6TMofxBEz584yhaol6rsf9QdjfATW+2V3qGPzONwrxjOjHeIFDSxV+sz/9r3KR0pAa0eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2/2IA9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2/2IA9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761563993;
	bh=dIzmSI0CAX6960+p4yYlfUVlxTAPrc9hzZOdLSOkVL8=;
	h=To:Subject:From:Date:From;
	b=d2/2IA9uTyZjQTLW+QxqYGWeZ2M+A3CSc9X4vxWcx6kqK3xNQLpqEiQb6n4ygNjOL
	 YpERHf9VUa03iv4z3igv0eNzMqfLQlY8AVSVfnZdp3J8E95qy/6VRrDDDFHJzeV5zx
	 X1EF482tabO11mDkptIZrKdYhqmb4ESVjbvWo/zy8rM8C0BDEU91PHDExC4oFNsIPE
	 8JF3A2yCk2RernDl2WaoHEre9KvopnpIYWyn0nfrTgsp8+yN96gNTecAIuxmac5AwO
	 SeInYCDAI+nwVQMaeTK3IJmyFm/gx3Ma4LAAGoAKbUgZ1CTRkLiSzMZtV1WbDCSCWQ
	 HB0+wx5aNyo4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156399357.26481.4927132363629618372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a3f0c720545846c3a5c463011521c32fd222c2003cba5fc66fe77bccc9f0a0
Date: Mon, 27 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761563993
