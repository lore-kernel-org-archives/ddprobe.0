Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCA924111A
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739039754; cv=none; b=HxPu0O734b3oSCIIxXLmM7WoAZ4V+qPhR+NwuZuPCwUWCtpxEZkfQDs5AliMNf1Veqb2jcF8bUXxwOj9SZdazcx2oh7/mk84iR27kddOAAV5MUt/3aMZAhK/1o7xXmC8yFs54Hoq5IA5ZC4l0bw2UjXKRcoP5pKoAqD/sS2rAMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739039754; c=relaxed/simple;
	bh=EDjD9oYj68JAvl4YHRnIV+LztmzO0ya4hnXLpsnysQg=;
	h=To:Subject:From:Message-Id:Date; b=RS9fcarXU1aNxnQu/nNQFLfxsaFAxB+XUwvbj3aaqUJ24LPBrM+9HYm7rZG5RysNXfhZCk0iRQDhXe07lZQqcOUqe1GqnLLgTZ8HETL0HUgqYq3xQK2nLk8Ks+s4Vc88jvCAKVrsO5pqphq4o5KTGZ9zg8WfnzeiJWLUzTjwaZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIDRDwdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIDRDwdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9719C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739039753;
	bh=EDjD9oYj68JAvl4YHRnIV+LztmzO0ya4hnXLpsnysQg=;
	h=To:Subject:From:Date:From;
	b=PIDRDwdflmkVJrxO37ZILY2KD7IiCniRICKCHWkSJtGJorQMTOezNSP26L17DsPOH
	 OqzktmrJhPXKRLIjYPUfJninx7yu1EL1y7FuF8BdOV4o81L1eUc51ATvQV0J+RxcNG
	 viUPiwEoFVGpotC4IkFMIBrRGPyZTR3UXbI2KEcz2smqzJmlaa3zd1blFOiV9vD3w1
	 KhAI8O8RdzOEFnK4PtJLkarRMuIjtxwwo9Ra9bfdOlHaVIq6nBjThN/2SXrrdhWu/f
	 Uihu9WAzbbDV/Aa3HZbap2ahqWHVJG81H9R/yOPUxIo4xoT47bP2faJeH5NYCh7uTX
	 a90wE4ZfVZKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471FC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903975359.3021.1754620662726198305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5c00cf2b0d96e65a973e6562353576f16e269cd7de426d9213c2f6c0f4cb9c
Date: Sat, 08 Feb 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739039753
