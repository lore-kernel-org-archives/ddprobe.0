Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054E332916
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784639914; cv=none; b=F8S4CkUiGx234mXQCykLSSsEsF9LMqbr2uj0pxjvR8dGOQwxZ3C9mSwJ3Lqz0QjwhhRPvKZOJDnJO6FneT8LtAVtgNjDb28vXQn3McTJ/SC8pdLUCwAsM7poMcf9hr2V1lcohteI52jaBsrcoNRGyX7dSYs3tAFTPSn7JKvS6BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784639914; c=relaxed/simple;
	bh=s7Vh/WR/3J58F3qE+aPoSpMJOCcZO3CatEtB1vd1XAY=;
	h=To:Subject:From:Message-Id:Date; b=hyqOOgGNM0cpL149pOWu6I73IIT9dDlakP0pp6Y4sgnj+8aRxjhr0GpGgsszIPGNN7mGDbjdNnrjqWycGfXTTfAi9jmlIdP5MEai54QA1Bu7vcqS6wiw4ChFBc5HsiutC3fSG/KskI8RKy+9E7RRGPLF1g5vrb23Fq3JKIp+y7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eInmXYIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eInmXYIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07EBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784639913;
	bh=s7Vh/WR/3J58F3qE+aPoSpMJOCcZO3CatEtB1vd1XAY=;
	h=To:Subject:From:Date:From;
	b=eInmXYIJa2tmQ3HSzqJi08nXN+35msnUVovApf+Tb3F4u7suu+SxFOsHHHX7x8Mvs
	 aACTNkLVFTbQc+9+xA/WvCRbchl6WQXkW1lQri9WjoEcqZ6zRv/ktD7Uo6hQm8LXlh
	 x2d/Rs6J438oOo/xA0gnj9TYoyVqRMP9KNAZkuA7YUWFYaTIo/haa86thke+FsRZUi
	 EuZQpJl3DdYvwZ19SXVCyxhLdaIiba+BtmnDTMO+mbycJX9sV1qLNA160juKLB3aT+
	 mfbkCSXYU+pkgk7sMGJQXt1oL+u6aBjm0j+ygXjaCpkScrvu8nVCS2rCN31/M1cWg3
	 xZl0h2j6fUZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6AEC4452F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463991370.4047.10978593273959505893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7fba9e4a6bc8388556012b96aa2b380ec33e3dde04646f6b1aad484f32abb6
Date: Tue, 21 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784639913
