Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0C51C6F49
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724772353; cv=none; b=jIJqNYegD4W+o8DIVbQEVqiNtAB5eaznWlvCkWKHnMG9uRTlC7mqdC+ftEBGGDjXQs/l5GKGlbzj8qEHcVnAg/aWCBH/sn/0lTD6GKr3ndhlCivngmxBR7y4kcbabicPrE7/QZGarx44GC6EbXCExdUCRUkjQ3xzWd8WuZ7bge0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724772353; c=relaxed/simple;
	bh=tGBafqhVbgRmUXwIILE/yzNJVp++ViaRgYJpLIVs2DI=;
	h=To:Subject:From:Message-Id:Date; b=ohmfPje7Ewn7/ZHmJBJtt7W+BPjC5I9jxBdMih2GlpMVQjOlfaGyYd722dy345SZXpD9/hKXt1blTHWQsJ/fAbMltai9Yc/3r3DK+o6mhrAgFXI+zYUpL/h48RnxwdcCOYpnefh6Rvycm9HeYIZBGEQ3R6iMivq3hvNP1IgP6E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBO4I3kM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBO4I3kM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD862C4AF50
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724772353;
	bh=tGBafqhVbgRmUXwIILE/yzNJVp++ViaRgYJpLIVs2DI=;
	h=To:Subject:From:Date:From;
	b=VBO4I3kMrXEy9Rjz13QwrpmvvdFbn3zb5vMN+givB8r79TruTKqS40G+1QOl3T0Rh
	 iQqMTOuDVZxBt9qttXmi1ytD683/HMVDnpqlFSOWfLJTmwR/4DzLs7jONfbKDFRpSO
	 S7/kuS3zBMGg/eUkLmBTelx2E0k9FyKYGEbRlRpbhDZA/DM0sSJyAYBD2toRy03kui
	 Ejw3sSFrXaf2w+1XyCKMHVjONtrr0gAWxGPGGpMaUyOqKNBVOQ0hL+MvWK8qx+RSCA
	 /Zlg8rM2oYSnPMHnvLI/Tdxjsj39hcXNFXCf1okCyewKxmGm5BdjmnaV/aLQe1Dett
	 PhFoHp0fqXQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9640EC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477235360.8836.13209314609959713045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bde28a1deae3fa0bc2d56ee946d3f55fdf44123fa4c85410813a5c0b9adaa64
Date: Tue, 27 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724772353
