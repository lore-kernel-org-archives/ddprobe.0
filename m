Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B03B1D5CE5
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754092194; cv=none; b=qYEz71fWcQi5zpHbIdOqcGrF65P2O67GGk6/YtLa6jt1LGkwbfo4RVC42KyyjgAlvb5pou27cBAgQtFOvPRd8tFv3aCMa46l3ObxgZ6eEIPCKSQY9TXSZ+aeXq8p1xDmO4ldFJfoLGDg/dNzBoJt46JvxztPk4F2gZKvrFDCT9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754092194; c=relaxed/simple;
	bh=E5dZUvAcRf0KU+aQIvGFFUs21OreqAbtL39Oge+NsMU=;
	h=To:Subject:From:Message-Id:Date; b=gxBMA754mhXIt/8dXNuFduLxqtCZhvNayAOpySg44CWFcXVP/WEE7uV5JW5QpslgjgBBK5SVYFI8N2f54faQ63Edk5OqUFLB20dCdZheh4IxTjrV68S4YXWMlJnMY9Cg2uVkw1lQlxIy1B/6rdyVn2XdKF9TfLTqzb84BCab7Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbC9APXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbC9APXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754092193;
	bh=E5dZUvAcRf0KU+aQIvGFFUs21OreqAbtL39Oge+NsMU=;
	h=To:Subject:From:Date:From;
	b=SbC9APXr2+Q7/O7ZbxL2fhvKqVP7o1blQA5jDemib+VpqrhOy+VrSilAxI1n4Yvfq
	 /gYbprXRmHvHre88EIkQ5kW+K1RT1QI4+0eROelZ2A/IX1GY6gz9+UawcUFZ/sPada
	 WF3yD017SbFpKUA359qFlMLioKbuEFnoccM+SFigf0iMNbqd+gJ1CBkR6BEC4htiIN
	 8eHFL8/xzV1TT1xjeOS5w3ftAuMj1saKa62P5yqA0UkUERSMVkFFTPLozIrf/LgEks
	 B0J2S33N+xeT/lH8TBTBN7881et74Odtu7qGGiUvhpFE2C2OiuiMGo2LTOB0Z1a8zu
	 ed48iQfh8X9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95663C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409219359.30755.17981143260337978338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d817c0d7eda73668df6a96cec305c25004d0630051f671b17f4b9abe62ba3148
Date: Fri, 01 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754092193
