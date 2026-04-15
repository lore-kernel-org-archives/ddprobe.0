Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7BB3CF02D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776241654; cv=none; b=L57xa9fYr+vWesyZyBhhRyhrbjs01HnToG4dsXlfIV2AqpIo0S9E22APZUtH4K10jEIhxVZbDfttAqWwPbE9QM97EGmwfLE6tyLzcRY91xiBgv+SZy/CtwlUnE8be/7y7MViwq9a1xmvNs6GNcFDhy7HS6NTHAMM05aWKJfP80U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776241654; c=relaxed/simple;
	bh=qVrQuwXoCShHCoKxiUb7WgLMlHl/cg0MoLxLAmjJBmo=;
	h=To:Subject:From:Message-Id:Date; b=DUPX1YipwKNmAGLwuXC6Ogt060RSnwQnKHl9980ZJcSOrs9RyQ52F+3odfIfV1GoWi5DufG10vDmVfMOiBhTd7vwG3La98/yk9reJVENUADdSUTuGeg4WZo73e+1S7ZNjOebRXxM51iWw2oo7d1lEr/EzU8sZz+H32+ZLOblCco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkcN7QVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkcN7QVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEED3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776241653;
	bh=qVrQuwXoCShHCoKxiUb7WgLMlHl/cg0MoLxLAmjJBmo=;
	h=To:Subject:From:Date:From;
	b=ZkcN7QVGZjPKX1i0jW5qpKWkX5uT7l+IjapDcNCNEp48glsBuqFnITx5dS3h11tAJ
	 Pbf0P4ZAwJVHrIf2SkML4uJWPgwssp44T337bNfWSW4f2NvMRciBcdPCez9uyD/9/5
	 bk5cibaG1vPPwEHya12VZeDwvaTHTQ4Q/7Dfsp1veMcAXkT5gnVG2QgBFslmFPbc9D
	 IJOSapo8zbF0Q1JYaa7k7x3yJNKHF4JACMTGnnMeQgdcDksU+GpiDYo024XXuz61ma
	 oOqvQjuldDj/9lqfVdBbx6uMnaDQXmiJk/diJ2epha0RQY0I5zDZ6f6sC402jln5qC
	 P+rTiPU9aE8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB31FA0C4A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624165368.1391.8713012836435463697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf7ffdafc991abdc251a1d19677b88a799e26584b8aea55531510cda3fd6a61
Date: Wed, 15 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776241653
