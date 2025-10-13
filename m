Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6B32DF13A
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760392194; cv=none; b=J9dvMw3wHM7+ECJY4QUB4VLVVzJFRXwA02CYq2hMblsgionn/pYYtLFE50dooawNtMmBm3/MdyLMrxsUz3RqmUCVKHyeZg5e2B64RZk6Deh1bLRj30BvBLjtrInGgGbZC+42ur9uncjhetjir4kiRciZdmBc90ov4tD/hrkoT8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760392194; c=relaxed/simple;
	bh=/NMPCC4WqfsfA6fQE7gu7qFMi52/9Jnj99V53v/jpF0=;
	h=To:Subject:From:Message-Id:Date; b=Dxk9Lvz1OOXqBnWhCyu7O5MCQcDicfi9wm2hbGwLebrdDiwLltdXupyxx3BOhLpCxcB911GqkTQ6fFKgvcs7+2aUZ9lm4HBeurQbBu7wajyMmc1I2e0mzTCwNZpFZJGtV/PScGaKIs1dBxe9FG2oQjMEOVRhaxA+nTm9GSAVfro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBkCuI+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBkCuI+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A228AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760392193;
	bh=/NMPCC4WqfsfA6fQE7gu7qFMi52/9Jnj99V53v/jpF0=;
	h=To:Subject:From:Date:From;
	b=lBkCuI+oo/NUh4PsRAnrkb6z1BPt9TyeiqdQ68O0TERm7QVvpU1SOrZM9Q9tcaBKj
	 rycbf80Y6Oax5SKomQcfrGijfF2ROM1GNoyzP6C5c1XyFHc+MoiMB5BbjScLMUuHR9
	 ZZ7ui+QARN7iWfE+gJaAJJafD36fMW3ZA+BUHIuHNi6O50DSee6EnipdlGlF4KEkJQ
	 /aqMIALNCkaWuPuv78Y/qVupocAPE3rUcfeWM7CfUgls3b+eJZxzI4FTrQEY+29n73
	 P2m+9zM6LLgv+RQ+BwGTs6mTCevTli0aqzOqnAnVapa8TjOVh79p7KYMlAxYXIQP9b
	 DuJtTy6rbxGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088FCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039219358.21001.1014156891774595878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae0ae26d964e2a322983e4df891c10204371deac2fadcbcb565c8c87cbc960c
Date: Mon, 13 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760392193
