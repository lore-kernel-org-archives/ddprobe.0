Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22161758F
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725899753; cv=none; b=dl5Hir36jXxCugZCOmQuoB0a4v5WH91YpWgxda2eVTajo7IF1PVbuvMydN7o3MVBveAsNz9m/HpepeF1LO6cGhU/SQ8ujdI3jJ/2m315EVVxyt3SROZ33IBUuc+kX+9b917bSYhJ6XVImojO/20Hh+Sghr4b+v2lUqiIK5oLPdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725899753; c=relaxed/simple;
	bh=7NBh4HwfdIBLDCkawtVfkAaC8DOcrfXPdx+pAEIn1vU=;
	h=To:Subject:From:Message-Id:Date; b=PwAwZnel55n8etscuYBnPjCukbWcm97DlyYbzr3w7Bw7voJPUUf8fLDI7fM8yBqG3L+NJttZZYAQk6WKNwOLt1jpdGdpEKxttN4rt2KomMr76jfd5YfKC1VT2ISr5kyelewhT7JDZw0EeTAAseqt8mLn2vr8opDn/n6AQKdHtW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hudcl+Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hudcl+Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D30C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725899753;
	bh=7NBh4HwfdIBLDCkawtVfkAaC8DOcrfXPdx+pAEIn1vU=;
	h=To:Subject:From:Date:From;
	b=Hudcl+Vtmm828vXHxnM/JKpe14Evmoaca2nHfy9g7+MqKB5xfk95aZR8V48ERHyx2
	 b7Xe0PpFSy3ZQuPV3Sn3Ry0yGVrtlFTQRmyC42+KW+R4LTzD5KP12D9/Lf2pvnf80w
	 iHTfhi7S6H2hqVxE8eHr5SkxuGu+0qLmD3kzbLAq3tKoDvIZlI6ky46BO1PKtMOjg5
	 LBy1V8mSD5CKqq4l5sOR+tNQjAKr42+zpvQS36ob9x6OZak8e2kKmJTl5J5nsalLPz
	 aoLy1EkfGCJS8iTn/sJF6885wlvKrtLAx2asyVSUCXup7AAWFBBmSCBkAjQ3dv2sSb
	 LILvKyVaMWAhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0BECE579
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172589975360.11977.16723690111847780735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d3784b6870c5b29159e7a4cc363c4084592e503b204b22dfcc559881e0aef4
Date: Mon, 09 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725899753
