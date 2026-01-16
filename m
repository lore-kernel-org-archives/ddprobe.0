Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32ACF30C36E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768557834; cv=none; b=slhQ2UH+56xG8ut6rWMDAEn84pGo6KCNj+9Xd8kSONWbYEMtCaz92msODVQTMaTUTeTOXCOfmYMIaGChQ47i2aI/cVMF5AzDSH46C8hRZo+gEc0pvsc1luUgQlzsnmHHDhIiv+0MHWVtlAPcuv33ArJIBaCtFRudw6uPjwdHncc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768557834; c=relaxed/simple;
	bh=AdIk+uEGFLm5TD3th/t2dLlDoibHT5XCEXRufusv5ME=;
	h=To:Subject:From:Message-Id:Date; b=hIlOBx/zJlqOZiqo+/VvPqV085t3SfPjPRr7VZpYbadksG0G35qA+Pk7IwLRu9aDH9sV5GtDZN8yNI4EV4hpMXjuk97RiQO3qGpFV94+AbfOMlA+66IUPyL6iNfQgPDnVf/zJjsdwd1y1GW8eFXwREGKqsdUOaHru69kEjZpk5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ2D5Axf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ2D5Axf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6099C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768557833;
	bh=AdIk+uEGFLm5TD3th/t2dLlDoibHT5XCEXRufusv5ME=;
	h=To:Subject:From:Date:From;
	b=HQ2D5AxfmnNQmHacDFrlepNXMjM3I/Ry6dUOo3sACW/NXxqpDFL6auenxzJfL4+J4
	 CiXsidXSSeLu98v7Cf1aWhNwdjbU9YuXRiAVy4EX5Z2wyYJHMu0yoz9KqFVxgNmOhO
	 ywvE9XMQmaw++QqD5GJHSk0IeD6fycHUispkfy3Fn/lk+q02AOvYV1UkOQ9/fi12hE
	 Py2QL5AjEEKVSs3ZQd5AH6UbLHOUtv8K94DlCH6dg7Tcne4Ex40GOrVWEfACijHipo
	 /F4Wpjof7cw43aph74i7+uMzOQUVTsOgkTH5eIeG2fjX1F8rwBJqlQBY1qvcVPmZQ6
	 bqMCj4jzipdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93597D47CB8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855783359.10208.851834451925423078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44970d96199f14cb0f7b0f003bc82069a5d77bced3a4e85c5b3144a3a6ec1a3
Date: Fri, 16 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768557833
