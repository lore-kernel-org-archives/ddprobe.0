Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894B82F7445
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786013434; cv=none; b=pofPrzXLksra6VuS3zcSiItbjHDtIKQdzE8HB0YjaXelj8dYSiNOST8wsSiQ42zVJ/gGlyKU88cH38nQL8n1DvdAcZatQEbC9bowjocmWZWhSbZAXhGiplHN+zmtShLey1i0jAD8I8DkYO7g6bi5lqVbXxbz0j+vCkG2vw9LjR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786013434; c=relaxed/simple;
	bh=o/gBxWniuCx6lGkORxjMYvmyd0OGaseW16LyffNsDm8=;
	h=To:Subject:From:Message-Id:Date; b=qCmZiLR9fURwS38pzO2zSgBXbeQtl8810pAir5IAkVLjeXy6wQpjLU1PmEoSQQv9tRuVbXagIfsRLV9utVuXxdUHJWatwbBfLFDS5B/UiOJpKu0A+VArbS2lGyiVkmPqCGibzk6Lq7BDV+jXCk7fc2hqVqbgKJSCzQpaoaOnO3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVO+EfKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVO+EfKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3871C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786013433;
	bh=o/gBxWniuCx6lGkORxjMYvmyd0OGaseW16LyffNsDm8=;
	h=To:Subject:From:Date:From;
	b=HVO+EfKdu2l+FYaSqb/6MYsXtkHC2RSfjnGyKYw/06nPzOHTW38RzNWeK1U7L5+uv
	 EdZJ5Ib3zaTr8rflSvUv3DqpOseTfx3dZ5azQ6tbL8e6HnDCtO2n3Seaoy3KBo6egL
	 NvVdHgfbL4CwxZIXDmOGB7WBsdsyBCtVroLZBLLjlaGxZtREULCoxNu1+UAmwUdA60
	 q1w4G1c3DwVd5MHCrKt2iPQcy3ipEoZhB3J596PD4Kg/OfvDhP4HTnXWoOAyHWcgUD
	 kgO5uFG2PjbXkgP6wFtbkOZowyGCxNp1JlC9NrDiD0G04HSyWqeSj9z2FpGN6Vd2sw
	 jKCm9gs1AYGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40A7C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601343378.14317.15862476676713410733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b90e77a18408849b246571ceb56cc811b8180ea704af96c9147928a26e71dc
Date: Thu, 06 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786013433
