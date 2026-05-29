Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608335B62C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780026154; cv=none; b=KfHxwErM4tSWMA7PxI1/9sFEA3YtJhemy3ah5KGLwTjNtTZ+IS4ID4OqAcWuMs+XKevxgSWZNamkQakTjEX9qH1P0syOPeP4SGvAJxWkCjhLTFh0JYHbdVtcN1rGlE8zApDGZA/A+REIUwuUV6SEywYBV5wIxZJFKrNUaXVaCfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780026154; c=relaxed/simple;
	bh=S0UAns3nhHXo2QamyH/VjS3jtTaLlSgZrI97bxguUak=;
	h=To:Subject:From:Message-Id:Date; b=lYuIxnv3dCoCfDDXHGuY5kjCNGbGJp8iG6QUePcKLp6yrrYgjGGhqXuJhEQUkXo7bq30TZiZzIka4INDuVBxn6GI945V1zf4bJMEnenm9iDWnF1WmzU0/l5M7hFMW7Tv3/iiosMS4I2Mu95CdxSnf89HFvkm+wHfs73OeL2EahE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5sWqjPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5sWqjPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE94EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780026153;
	bh=S0UAns3nhHXo2QamyH/VjS3jtTaLlSgZrI97bxguUak=;
	h=To:Subject:From:Date:From;
	b=u5sWqjPECLt1UOeccvTcmUmN/QedWP6wc1io1+8b9tsQAKM9l4UQDhTfFwe0PPgWX
	 KFJX+C6hCKMK8oAJ1tPkU5QiVTJNRTj/nyMlV3bNsBy0OFO0x6CvXCmxedE/yHMhB1
	 9QeVfFEYOJ+UpALH4kh7lT6JMXHo4kS8VeevyJRhlfKWbvnYKIBJ7V4PhH3svdVs0Z
	 cQ2XQi20/yB9YPjL4FIUNwGW6esxk6ASZV8zGdBNZz8tHVQD1onmKnMg55pAG6WBkh
	 Ko41gqfK7Enfk25rx/Yuq1apntB7Rjtn4u/L0xkCvooau8gD4VRMvYDwXU9Y8DPw/S
	 taILf+6MSEZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FA7CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002615368.30364.10477743632590599477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4439ea5ef22db02897dc0b64b7515d1e5d70a00c7b0ec42f3d417a7281c7e7
Date: Fri, 29 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780026153
