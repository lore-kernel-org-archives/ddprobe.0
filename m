Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C98D2D1913
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788178834; cv=none; b=HrDk9vpOV0MCPQK1wMhJFfeVI6zY+0RhOpT4+BtVLd6JnjBg7LApB6YS65jIqN+EwgiOB/hsRCIPqQSuaTW3iRuluzH99gWutw7+BjZ91JaZdEiliXnVSAGGCa43+cOq8pM9zNWemWPNwChk5URYcD9uOvq9Z2vTKqo0OLk4mOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788178834; c=relaxed/simple;
	bh=YdAv9p4lJ3aEaBkxtpy0hq4YTAJwZghcCHsSDbcpSro=;
	h=To:Subject:From:Message-Id:Date; b=VVQKLQcQ5yZ+rR2P7NR05wD0tanHu4/PqaGdbckz2XyJsM5FaV42Jn0wHiZSAEt55mATazkoopiYpqqnOEIF2VJWoL8GxociLVYXk9TGPr8i3Rl+SRKqfvTRgGfVnBdIcD11tEVwc8H9Mlj7AGG/rkIJYZ6BOl35+H2j99QnqD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6SJlp3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6SJlp3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE711C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788178833;
	bh=YdAv9p4lJ3aEaBkxtpy0hq4YTAJwZghcCHsSDbcpSro=;
	h=To:Subject:From:Date:From;
	b=A6SJlp3N/Mtapw8v68w0wAmWwgLLyEAhizjshV5LOlNtmPMAqQaqwC8gBtZMrWBSl
	 /f8FKQhlrS9Ngn8wznPVJE7cSF/WrlwdqS8pFkj/hLbUWD5HLLZ6llpEU6l8zQ8KnT
	 m1sBQ9Nm4SxzSLFieCzYad+ZC/bO8/hWf7fj5l6OWnPXxgKL2t06fiVGBc3Vu2v92X
	 f04IiPDiL4O/SO970Z6z91JvNfFKibnhMrTHosMUnAHgpvzwsBMj2GlE0Qo/ug6dox
	 ZSOWpvIT9Ls/Ynp2qwB8MCSL4HXg44VLAp46ed4ZYL1ZMCZe0oAGNfC832I563I+JA
	 zt8kPsFAmL6xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE1C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817883368.26678.9115652100735400750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3182a32302860393b4d7e45ed661d30a8f8e750e4ffbc6a2cd8982c0c0dd74
Date: Mon, 31 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788178833
