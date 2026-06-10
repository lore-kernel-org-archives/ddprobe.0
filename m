Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7253E450A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781090134; cv=none; b=XWhuzehXzj4LAyJir/0KW9CtP9XzIJcilUmu+B0Q4ICEeltUlcEYNi/OLfAWi9uRGYXKujFOnXnKkchv+kqmuw0jV6CL5ULPyVNyZ0XSnFUCOtBiN2lFU/ih0bT4QWed5pVC/5yR/iMdXdqJ5blTYstpY/0RPeEOKKbNSrIz2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781090134; c=relaxed/simple;
	bh=2lc2cNKT0ttT0gnihwkaMbL8AUMI/j0ceOhs7Ufbj1g=;
	h=To:Subject:From:Message-Id:Date; b=M+41AiRfXQkpcgpZIiL6JLadi0/pj8SDwadWebwLMHGtGUOObJPD2Ci43baFLdN9C8Ni4Ndt0z2zYbVRz4+DnvysunUJCLiwnEWApexNq8VNr2ORLPdiO6ARTjOmco40ijKiUVTMAwDjTXY4At9K8dAQ6Bkhc3AMtCeVHbIl4Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hejxeLKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hejxeLKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15A6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781090133;
	bh=2lc2cNKT0ttT0gnihwkaMbL8AUMI/j0ceOhs7Ufbj1g=;
	h=To:Subject:From:Date:From;
	b=hejxeLKJWRM0IH5vTSioG2n60KfpM46ffkX0grlcxWac7tXoDmGuye5OgQ4aTK8PH
	 fvFWSR6oyCtwX1cayyVkc8J5QPczx45XHJ1/mzolj8lv2I18O6jlmyIBEjN45xoCtG
	 4sQa0zI13MM8hsGvn1i8DANP5uRpeN8zHdVOP882Xps3BlNHwNyR63Y2T21yKYBf7E
	 xEz+AkDgYAaO+4m94+uGkjEmIlvMHTvR03kv4/9reJkB7L2cP+Rt0gty3pO+y4kkVj
	 YrJr0v8v4hIubPBiPiogtFoA7fAcZd1DK36WKPk8IIGftMZUXawZAIQjzgA3sUlq5g
	 JTwufAJ/JBqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7644CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109013367.4367.7318067401992012170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1092e655127d2948e82ca7aed0b882cb3f1660e57502ba9a210f131d2fb47d9c
Date: Wed, 10 Jun 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781090133
