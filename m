Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCAE176FD8
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712765897; cv=none; b=Ica3WcMBA+o5fZlhI9Qyonw6qE1PYmQw+Xhj2WElJ9pFGRpZ3wSOcTHtj08N3vibuAOQnqBQeisMVwxxVFqiWJozmPOWE19jzpPpwxD2CfKWA0qzxGgd7fhlMstDFqVEUAH7Dh3tK0mabzBcT4BTVWoqQD6G0R8O4th/feRag/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712765897; c=relaxed/simple;
	bh=O29PJ4S+cUN1zlXgefy3bDUn7SwtOpU90smqJluAmMo=;
	h=To:Subject:From:Message-Id:Date; b=KZolvvhPR/0pXOAGfRzoCzWeX+Qt6BdZXyJ2Y8c5xbx6TtZ0a8oCNZ1MErydwVDicdLc6AUhT0BM78K7eB7Q1CYt/8S51UIKQQ6R14uUYoCw1QIgA2iYCGXNAL20tfupEFySpZa8Iqd4K+vDEOgGIfBp5fVmZqmXwPloHOKRZ0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpoo2fwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpoo2fwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0B0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712765896;
	bh=O29PJ4S+cUN1zlXgefy3bDUn7SwtOpU90smqJluAmMo=;
	h=To:Subject:From:Date:From;
	b=bpoo2fwX+6GubUeUAS2S5wbFAM59SUXiz8RZEjmQqvQDJohV2TwURCot8rsT353Se
	 L6C5BfIcTqBN1XZB9FJpsQwVQE1EJ+oyCqeN7p8qzFWGiNvGkmQ8NfPs1IDWQW7jsQ
	 jD2tmyVXP6E/HRviXcX8WMBASMP4lvd9ZMv6eDWxuVWe2qgs6blFtW4GwdCg1EEKvs
	 7colVLMAqXDcktLTRm0s3Y8N5RX7CURZvTwKo6M5rhBJrba3zY8AyRbZDFJPkwH+1R
	 2GiPlBEjAla5FZtiaLPsuOPMH6WTv8yS+p43bRuw15z5IfVF0yXSucm0FnnVTi3BRz
	 KlyYAWppXBAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666C9CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276589640.17558.5575446565238415178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd288d8f1b3fae54c456e729556182011143457d1111f884aa2535d35620f78b
Date: Wed, 10 Apr 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712765896
