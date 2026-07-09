Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1523D3C10AE
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783633714; cv=none; b=uBlbRUPhzcYujS5rROpXRRpIzHI9Rv+L8mbdQvNHhXkVQCPUKNOe/dqBedsATFO1n8PNLYIBpvnFUuLrPv5P3EpLH97BBmVRD51qxb4RVHAdt1uhhV0lmiBRD8ErX1rvqaevYRYBRNEZO04EB21R9gJeIyJcBs2JNuYmgBReH1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783633714; c=relaxed/simple;
	bh=9MMwEBehbjkRDBerhpEqLLBNprk01M4p/Sqbtn4hZuc=;
	h=To:Subject:From:Message-Id:Date; b=jqjWeQeqV4w8C4UW3q7CVJn6IBq/PIs5R1jqbhyiQ/AUuPgfh3LX/QNEt2+QDoOkBsrK4no2khIx7qIyfhOcYc0aCipp57c+ZVKc8Jt1P4FZZf5GWhVs7QtBRzjZzH41/2S+YUaZ1jc1nxZOftepJ6/ovcmcMSxtcTlxgUL1V/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhvLjKkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhvLjKkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC557C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783633713;
	bh=9MMwEBehbjkRDBerhpEqLLBNprk01M4p/Sqbtn4hZuc=;
	h=To:Subject:From:Date:From;
	b=VhvLjKkviCwn7IHwUSKU8oEpDZhVhKew/H/tejjUHjIvr0uWytsuOUyPHQ+0FhM2u
	 fotyIxETWsO3e9L+pkGEw5vT9sw12JCi7SE2IH7ei87iQvg3AiZntkS7xTGLsob2Ue
	 WHaeLzoWsr5pNhh/ga1XIh8N8J4GvLRAm7xQITFwuPEqta8h3dEQNKuVMpusEwNwkL
	 Po/+K7lO7R8Sitd6IAqTrcBXpr7uvVn25J3q6Gb5Zg94eRsPdd5K2ZuXW2RBnKNFW4
	 qeYx0+0XiB4lLbo2OsPZyRaYVLIPS5WOwvaL5AfqDbgV6YDbNf6rdEHoEdyw5U13QA
	 fantIeypxJJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD11C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363371368.2186.10860401353749219340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f96e7725ff3e9ad28554fbc252144bac86f8bcf0c4969c030d579dcfe58ba0
Date: Thu, 09 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783633713
