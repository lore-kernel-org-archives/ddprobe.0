Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA2A18E03E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722428154; cv=none; b=nvf13D6t38rDHCDgXzjtC88wAJMeNT8qg35jG0BGRCiAtsNMQZFaN47JXYGUaG4YVK2r3VUxjeu+X/iR6wzKsKoOxZA7L6HeZMIuJim5RxiJ1llq14lSHm2+YH4ch5f0a/+guUBTVlR48Z0NgYamqz19pp7r8QCbxoSxhfvSH7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722428154; c=relaxed/simple;
	bh=UTyeQI+0WIrH2fmOtrX/YHl1n3tf82Xx9bgFJTqAU0o=;
	h=To:Subject:From:Message-Id:Date; b=LMitd/CG9g8wXcLs4GXX5S3W8eVuBCYYrkCwPfyO4FOx6iWNF6T3ZUoPnsutim1A430AErXcM0pcZKW7QP86CRLKPXJ19k9NQ4+Xk4ODf2+bf3xxAD/ZKYi22G6frEY0V8iZn3AGtooYCEjOuj3A5UN6F3gfYkGJCpXORmpSkgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7l5IUjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7l5IUjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EFAC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722428153;
	bh=UTyeQI+0WIrH2fmOtrX/YHl1n3tf82Xx9bgFJTqAU0o=;
	h=To:Subject:From:Date:From;
	b=H7l5IUjUpwwsHSzT7WRoM52O38zSQ8bGa3rCMPZnJ1X3TV1DMAF4Tgyttc3tqCwpb
	 jB6HA6/CvvZaEANCgColsraM9hPZ3Ut34kk7ptLgyQjILkWQYQmhHBlLM64Y33niYy
	 6kQ9IrDbVjudmwJUnjmn3O2FIiBAwB46DLFkBJI9hIeRSVCnElW+0slcBYE38V35Hq
	 p4LLSZFsN3iYKc29Ly5joWbBvW35vSCElS0ShKbGIPUAJNzhzsIerH2VdI2NIPgprQ
	 77nWBJ7OmKyEX7ThYSscxqiXFPfebX2w/3DhUHGGO9bIy8gZIQ1oAxJtZgRl+NSlTH
	 npx5uHZlKyDAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324EC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242815359.15645.12021133855036069264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44672a15e48c45cb5c0bcc7ab5e6fc2ef60e5f43b31b1c6e4b26434fc643204d
Date: Wed, 31 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722428153
