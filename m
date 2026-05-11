Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD4D3F65EE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778507434; cv=none; b=paWNkXZeof4px5z6njSSJawOBSqk9B5KY7s8VhSLLbkNDQhQ3eVGrnvrktYImVL83TD/6ZsyjUzjLGX7VDRM29g4IJTGGNULh7NGTZRnwNe5FCvcEUPJ4b4fsEqXJnGjQIg06LQ+VZDUVqvJZkhZzYR1v+9Fhi98XdJ04kzJvNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778507434; c=relaxed/simple;
	bh=2HHgT5ySGRSYQCMnEc7Kv5VLzwFPQMTHNCIweo4zROs=;
	h=To:Subject:From:Message-Id:Date; b=HIGZi2hN1/z6d1HZzrsgeEKtLDYyWFgiRh5hoPtnDMF5ndEnwRVwFIeP0YTGizmXtRKhpUm0vAQi9deH2K5d7KYE2KQ9qhGra/jt36DNS5eXTNJtIxr5eg2SZZG/EZfa+D+SwOlxDLKZjlR5qOxGTYnCSDd87g5aw4ae09yxqjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR92iEGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR92iEGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86D6C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778507433;
	bh=2HHgT5ySGRSYQCMnEc7Kv5VLzwFPQMTHNCIweo4zROs=;
	h=To:Subject:From:Date:From;
	b=HR92iEGgP1fb169u9Kg6bsqgVfMTCyatcEZ0AE20pMLoiUBlK4YhpoA69o6jV5nmB
	 HVhTVmBHFs4f2dP+Jo6xF3B0rh/3kg3/u17sAYK4cXB3NggyyB+PGY1AyX6+ssFHzG
	 t4+BM/jEDq8QU0aIxqGrXXkYW3jlpuSZTJ9qEp06QARf4V1Gu+IVTMrV5/C7WctRRn
	 eIC5UDKVWtXUbHE/AyOcchAHNoC45uVZaYJEs4oSdPuIuNFjXGlPAkV4kWHhAjwQTD
	 74CHUNHip8uWHDcBkGM9CLccLJoGA5gBEFKDRJO7DYvP/kcnWagt48N6ZGkfwGjh/w
	 fCCvD2FaP22Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA560CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850743368.26561.15993198259727678550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e78886a4a29d57f3f050ae0d0a87cf7f1a54ced58fd5713f0f35f07ae75a6d
Date: Mon, 11 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778507433
