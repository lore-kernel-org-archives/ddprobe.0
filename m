Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9762E92BA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775701534; cv=none; b=gYneOM6oK+KcR6bI4RbP1fUtfuER7exWNQXXOlp7bAWvpBc5ROPFijHPTQNPatFjbSfxc4377+k/HVEtzrM4CvMKpTC57oFW1I//8kjX3TkO55N4nr1CYttqwlpuxXMQ0vhEIXkGOu7qT0lpsbyqBCiIizj6ublu6tgSW6cQyjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775701534; c=relaxed/simple;
	bh=qlU03fqrHIXxysgoKqUrcbEh0FVstmObHpT2Xq0Tc58=;
	h=To:Subject:From:Message-Id:Date; b=F7WbqsfQc1LrU1ChFu/nruyNU0f6nNm7WxYSw+qga+bNVE5k6ghRtQ34rKHq9SfQidbi3hMKLaoftO/eDZS1w4x7YE4qjxIOmz+cC0BYxoqbGbzeUHr5Ctgvz2o0z1b62Zz1HLeN17lKXFpL18oT75Xv9Ek+1ir3mHPE/jJ9sZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQSEpZC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQSEpZC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC0FC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775701533;
	bh=qlU03fqrHIXxysgoKqUrcbEh0FVstmObHpT2Xq0Tc58=;
	h=To:Subject:From:Date:From;
	b=eQSEpZC12DFyd3nnRgJJ3lxJXb4uEq7ttns/PCwVY8iNRego5ymiAfWALwy6riTIL
	 /oOjqdsr9Q/R+WxM40SfNx7vOKZgWLMORmtKqVgEoSh8DUXeJVIj8Od7B8tVyBn0pC
	 pTzBQ6nlU5DmT9kU648Pu2QWbTyJYzHDusjgu1ovOK+7A2MnK0rNqECakDv+m3QN1f
	 O6QbH3LGd/u/WW4Z+G8B6cBu3eVqo01oXtYcUCL0VauvdbgmNEnclZOc7T0wGJkzpn
	 5M3pZUxS+2JsObhf1kUDqo7QEbxQqxNcHFOUfUu88AYmEfjJneirR5vOXIic0KsrDb
	 MCPH8/l1jqzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C410FC465
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570153369.25000.13257303450080398140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14df0e0d8b1052203d10bb24d7fa0dd192943f0475ef2bebfe0276b435c30caf
Date: Thu, 09 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775701533
