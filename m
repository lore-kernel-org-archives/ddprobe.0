Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2D42D4B53
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751587194; cv=none; b=fUWD6a2875jQOXfeHzM5ZAQ8OcST3FcaX/Rka2J6dLPqzxB6k4SW1uRL+kMp4Gwbcr+XHRob32vGhmzuJGekeLd4nKSyQWUfH9Q/xVwbLHL5HGGNxIyT1HGdYf/+P+qX8ASzLHtBL/8F+qN01qQP+oUsoNHqE/xyMWh0V01/bsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751587194; c=relaxed/simple;
	bh=cKlChKl8iH9ModQ2J2uWEq8jXnT2+RcDE3CiSHysMwc=;
	h=To:Subject:From:Message-Id:Date; b=KALD+MGmJovKRIQ4GxdeTw06dV5aUy1vuRiGAVOboB5VT7DuI0r2/OW+ekQGqVE6y2vju7fv4tGkNw4Y+eOSdxcKu+jyOXaSCFzuk2VZNOYzR9Iv8+/YIR0qoApHIv9xq4UM12BsHiuFbI1cNKpdQQTX7JGass39EOxPqOiYv3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxYgRXxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxYgRXxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751587193;
	bh=cKlChKl8iH9ModQ2J2uWEq8jXnT2+RcDE3CiSHysMwc=;
	h=To:Subject:From:Date:From;
	b=nxYgRXxhaPX3My3hQ9J+dxoZZ1t44C+xZ6CfX4DdqF1FCw3jPlSCLYgifYT/wDtuV
	 ewVIs89CkzbwhiyH/Cqw2x/npHTSH8wO9Roo2PqmYrH6INg5az9R8NyuZYWWy7zjnH
	 yWVeuM9cfxmvd6CdzGvQHDsXCGPp8mlsdd3uq2ng8L3Cu69Cg/wF5U7ZlJbxKscYzz
	 v8Ek4FbqK1h20Eryfn0nAI51kYGwxBh0dw5Cja2DoPS+9fgu8rM6IJoJaaVxiyu6MM
	 /IltQ5Er119Jgg/Gbt5+BTdgl/xv1+WegCUxzdu5Ia++eIqi85DREMf/QqkV3e8G57
	 EhDw9oOO/V3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DED5C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158719357.26340.14377396188473623460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f5a4bb839e815f42c3f3eb086ef0c8276074a475376389952ebdcaa60e0f99
Date: Thu, 03 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751587193
