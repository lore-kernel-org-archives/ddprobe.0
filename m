Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A36D313539
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778910034; cv=none; b=BADjAi5CVJIQufqdt4umg09ULsDJgE3dAk+LucDUQPpTS908nbtoX31clWphH1cpJplUUG554kdYme2I5/vzIobjNPCXzFYNnEPmXS3mD0awrUwPKmfTtDLhIIq1YqMxlwVkLuFK8zTMxZ2vLR/Iqf6HM0/N/g2kALbRx2u3ZvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778910034; c=relaxed/simple;
	bh=f9wyBq3zSs7AkJRVdY7A2PlHTD8oWXhYkKUFr+4Rf5Y=;
	h=To:Subject:From:Message-Id:Date; b=VUKio4yMK8crGNsBpI/hmPAB4o3BvXiUHWwqsf0BMsbwN87RO18SO9q+p/ixepAIRJsa703Qub3Xd5/1ubvQX1hp39ks0u4Fpgtc2nAt01AAPqguJBF8GPk4xBMDCXp0vG0RlSYiyHwvnEqP8R+jzARFgzCauxW3QaEmsOc6EQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxsAb6wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxsAb6wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7204C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778910033;
	bh=f9wyBq3zSs7AkJRVdY7A2PlHTD8oWXhYkKUFr+4Rf5Y=;
	h=To:Subject:From:Date:From;
	b=TxsAb6wqu1vRI2p/EbvRIHBsrYglPsefcWi1B5Kd7ZOSyh2yAUNdL3CA1dNfEjnoU
	 OvPyib9ihV3pMj1O+RpcS30Rvk8TTQtEKf6vfcE6aicMyHmrqgUsWUuN5IRuutTGOH
	 V6CAiwORFuTpd2byfo8iX4X0IlPRIGwAeDtYns5Pmeg9gfhLGmlNedM1Xrr9j8odi/
	 7O4ftXlDW55ryOTtZ7VwKfY3bE/5dwKRLnvY3tK1yq2o6d7m3hKLw50SngYlq1EC26
	 q4U7UcqmNOQAYgpJYQCZabJm9PkOP5T9MmCQiWss52gc3Xr2j+7hl186CWGn1fR1Oa
	 QZ/G82CZL396g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2370CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891003368.18289.6291609594391112882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eab52f275ef8f12d5b4bdf318e097d696ab71abe9dd428c303fa77215083642
Date: Sat, 16 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778910033
