Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EE31FA26C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735913754; cv=none; b=B3Hs/rOjiKQchnZhe19dOpt0DEFyjXDYHR9IOIQqyNVjG9nbLznbpmN2BrG3VcN3X2YOyrdqUUbZ43Q/I3nOUz99Mp9FJUW6bc0QLSUwqb4HKYm0Z9QpRMt9xxmCSsqpBDaB/8ZiQwQnDUrUd0FILxvZZ12wynWHPxUvq+ywCkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735913754; c=relaxed/simple;
	bh=8NP3vKEzztVrQUmbOXj1BfMn7ymOXcmOm840WqNttVE=;
	h=To:Subject:From:Message-Id:Date; b=eFs2TsJAK/Ehhb2P8fJqUfNIR7vl6h4RzZ4r3Ix4vm9LTLv10WmPLoiZXre3qe6H6ZpbWGEl5KAifhTM5KVYR8XtMHzH01jLqpvqiTPaKls1WqbIZ7hvNdvVbS1tDC/nHRTOipOhFK6tMWdC21P9o0oOnUr8fEMdp9O3hJlJDgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6RphUow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6RphUow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A5C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735913753;
	bh=8NP3vKEzztVrQUmbOXj1BfMn7ymOXcmOm840WqNttVE=;
	h=To:Subject:From:Date:From;
	b=O6RphUowwYsUAIWShjU13hgrweqzQvr4d04m4ts2QiHPv3pJa3SdVWplwu5vDGqY0
	 qO/LUzO5pnjgjwBQTAxNes9mkEaDaT7Uvhp8kDSY9SxKkLaAStQSPrV1tvk4M2ts2R
	 05nTr2G0fXGsREO/782swEY2FJbFrIagsHLJoZKTr8KtkNF8inYLLB+TGHaQhR4XTS
	 sX+/0HVagcovcYSJK+f4C5G0PGo4V+L02Dpqj/J6ZbZxJIm4zl7U51smaFJ7l3+1oJ
	 QMlm6A3pHafvQLg2JcsV6GmbVwuyYwmWOb8OXZN7UNAvG9aPb0PGCByctWJsdM4Zkm
	 8C3wVHwFbZ0Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BEE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591375359.11849.16348761289475170783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124b6577666945e4d2bd52ba52bcf30ac0da74161af714855cf5c3c087c44b61
Date: Fri, 03 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735913753
