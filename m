Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156832C235A
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760378394; cv=none; b=tBRzQlmvLa+XIZ6i7fx1+FotS7Sz7ye/UOak5u4WA9mQHk8bnktJBac79Kc9ULudsnYopexL3lTkvjo/FASj6TQW9WkMj0y7r2t+5qdLLL0iancfgiK6AUMWfPKE1U7DEWvKIGbss8455mJvpEXOP13APiiRpn3vEq/dSkFUTDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760378394; c=relaxed/simple;
	bh=CoRJv3G2PGwtsjg8aoQ+ubIBHR3MwmOg7/pk/MpHGTs=;
	h=To:Subject:From:Message-Id:Date; b=fP1R5o5YoxdRuSFI1+0CkBNEMus/BbYdws0t2A9mDVXApBkoB4K14GJBJzWz3MAbzj9YyiYxbdlDH7D2ruH7+wU8Jw7ZzSHeoffx4cGuqrSCViW/s6ybLmqb27WMtGZEbmn3Em9M8KALILufWbj/YpEJDRlvw8ZAqoSyS6hck4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD3KM33s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eD3KM33s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A41C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760378393;
	bh=CoRJv3G2PGwtsjg8aoQ+ubIBHR3MwmOg7/pk/MpHGTs=;
	h=To:Subject:From:Date:From;
	b=eD3KM33sp4qAFEjH0EhATZp/rlEc9DwO0RdlIutJ7nmO3cdt6s3BLl6uSGR4Oy0hk
	 CJN+WaWOmLvrxFkZYRweA5wu4ifg5e6FqV2IOp98/q8ZjqOoLbxDkvqS4C65fmStlB
	 n1xSm8O71EfZ+jxHskJhrIHSfJslAub6rNu8TknupVcEvOF1nAvhugl0aIGPGFSJVN
	 0EnNzY+jNw3lndia/f+8DJZe1KnTGcJr7Eh7EkY5rJK+fLQq6SUa8WHUUZk/41p4lH
	 hOuTQ8Pzbk6vdU3vxW3PvjfzpJlVr4OKbeAp79cUcBxqQhAGjp7aFhuJdkti0QP9W6
	 KbkbyXI8EzlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107DCCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037839358.14431.17289576415543997711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018520afe63dfbb8596d8390bb34b9f80d8d6cb2532dba2ada5dbb5513969fdf
Date: Mon, 13 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760378393
