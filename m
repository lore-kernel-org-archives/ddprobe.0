Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B27BE6C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721715354; cv=none; b=DqTIAKe73zxcI9DTlKj5gw1jKg9nD8c+PEramPdtBLYvk7R0VpZKcoHlGB4jqLp9lQDozHDqEBcDjcfQSiR6P8u+uaqz7cZ8NX1EzdWQQtrrNj9xZD7T/DQ2ao7U+bBUpQm2nNIlLYsx6mw9gh8GJI8B/QhuD9UkpglfZ0d0WLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721715354; c=relaxed/simple;
	bh=WQEMHrOlBxAmhcttUPukJbHINsnqaLhJsgXZhAyDGKc=;
	h=To:Subject:From:Message-Id:Date; b=HdImD8X+Q0RXfQvSu5qA3l1IgcW82Oxc29AnVztkdD6EZxmnUZ0cH6ZleUyOvGzB4icCEqtBxeDtdaCN7VRgARgFvLDC7HrX7UM3CEV6uj2OR1r3IVHuQX/61uyGP5WeToutlwalC54Azl3YRvviBUpkcmCi2hCBPnTOP1gyFro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4zG867z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4zG867z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA547C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721715353;
	bh=WQEMHrOlBxAmhcttUPukJbHINsnqaLhJsgXZhAyDGKc=;
	h=To:Subject:From:Date:From;
	b=f4zG867z25wAveE1QFIoafoP38YNZBhLWb2DpA13LD0Y2VXxTWjS8Nz5YveGT1y08
	 LTNjcOAWiqman+YJ/dhJWRQNFiDNTq7+Rudx/wmQYlj4dGoN3dkWuxyyItEjoxf4OI
	 feJ5UKymg4wyP/t6V4BQlkwR65pDOfXQ6ZmMTuogHAzveWNOOurbmMY1QDXCERA6zZ
	 HQGIOsGE4NOdmVL1noXBOr/tWnDQHwlSvmEotd6IxtdBDJAXpyXD0i/SZtdQBLqi3q
	 bhw7Vu42jg74rqfZKrbGCqkMXH7sUJfjhM+nBa/UD5M+iiV3WzKqqgcUYckvVztHzR
	 z3iLXbs1FZEYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD39C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171535362.12078.1056291915653054438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9ed9d0c597e5c9e1c10c1c66393a642b5456c5c870d2334758150b3a27519e
Date: Tue, 23 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721715353
