Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372851E25F8
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746823194; cv=none; b=DhRLV/yXSO9lcO3tBbrqaLpLZhV8bBQJSIHQ3jEhf/Z9bTqv3EtK5XPT8O8TcBNc7W4WZ3EXxC9xPyoii6CNRUr78O6U+DnXg+tAYIzUjNiRKW+9OqDWXMZe+6YzcivEVppyy2GfVn6iSCdXqn4EyKlOWiZKdm25hAhF6oqW4tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746823194; c=relaxed/simple;
	bh=CPExRHLi/mEFFaj5xYPRDYUsgWmZMyVwA5tFsR/4NCM=;
	h=To:Subject:From:Message-Id:Date; b=LfLvw+tmqeYVTszzhdhYJG5LssFxmId3+aN/069c+Fp74K4VgiV75HoghmYC9pGIvPbfNuicwOMPQEDUZApztDD5CDSHZdDxgfZdToDm2eH2o+HBA7VqavvbJ1YDgCpk7A6kJW7gdzHq0VjBS4stjw6CcFBll6YCQYCzvZKujMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSbZw/Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSbZw/Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5116C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746823193;
	bh=CPExRHLi/mEFFaj5xYPRDYUsgWmZMyVwA5tFsR/4NCM=;
	h=To:Subject:From:Date:From;
	b=VSbZw/OzvSd0DyF/e4wkpZvJjF5syHPFd5CEiiIwtw753p6hANHmEFt51mrRC8/Wq
	 OH0kk8gndp+JdV0NIaV893PHUa+ATs3HaBPIsFXHuZ/a8zLranTi/sLpmg3NYE+ebI
	 QyjbV5/gEIixcrJe3ZvvKe88Z3BP6jkKPHHJF5YeeQxUozm8rFx64j5lx+F/1eyEsT
	 VdtnXsZGCWbKTTOGRQNHrG5XiiLViewBPPPKEIRTOjP5uImkJwWJqaRBqEhdPap9or
	 g4GnqcobJJ1mWYZfZ1up9AR+q5e0ZOVwSNAmZJiCABiE43NMbPfO7hUfhdlrbOF6vf
	 tlzdfdalUozBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C3C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682319357.32348.12776639478794042533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d591310c9d277ec86e4d822fa42f7d16359e8ca751e14716b9301b3a1b7bc9c5
Date: Fri, 09 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746823193
