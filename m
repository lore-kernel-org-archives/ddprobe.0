Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED61E1E16
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754363394; cv=none; b=rfzAXPVOvToBJlFf/Wwojqb0uvx05YHi+Mee20gscWpks419aItmjuPTdh0k5UOJuCz+SjQcPFglle+59Hbhg2e4q7t0Bn4F27b08vzD/CrX+VeBZkQ9novqeisUYSfUjY2s4LfalyDHt29yquHwQ02UNTc5IJgzZpSKaoqX5zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754363394; c=relaxed/simple;
	bh=JPWnR7k3WyDuYN5hRnNno/xZW82vWJe010xF3bMJDag=;
	h=To:Subject:From:Message-Id:Date; b=kcwBwh5v1gf78VCikSXTwFWLEBGE+IbD9UcRIkVWF7JL/ctJRTg2WWbsVWBE6b7j7D/S9LTB5TkAokbj0ceDgtixszd+DWoTzOBEM7N8Lf+3wonYZzbirJeblAOjI9NA0XxIX5Z9duf5WGLTmeL2BoysHD3URHS125bZ41NXeno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZRlWjyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZRlWjyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A598BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754363393;
	bh=JPWnR7k3WyDuYN5hRnNno/xZW82vWJe010xF3bMJDag=;
	h=To:Subject:From:Date:From;
	b=FZRlWjyJch07se2TsGlFps0tFQOKzDMrYp1JUHImqwms+Qa2kHXlt/dUtqbHbRdY+
	 mh4uqKVmS3IiBNNsh6FQOh0Cj82qE0v9xGeLs0tiZVBM+L385ZSy0ep8mWK0iHSSuk
	 H+kFc+IYV+lzGQ27TbVYqTeRSj6i5OWcaMNmLfJS4a71Seq8dFFPTTNZl2H4iHe/e7
	 MYglbB3IKXkHx2oeg/fz6j2q8JI8bB+IDs61Pe6E7/tJmAn20nLM1u9Ukh7MnvmMgU
	 p5iayobU5rJDtQMiXUcjldIxEipxgeQr4kj79z0vAvLj5aO1Pg45muiKwKfO97geeX
	 eyoX8nlbP8dSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283DC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436339358.24605.8264240671090287082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386fdf0c477ab290a6c8525caf8ee5a0df6a4cc5138f605ac4b290bffa1ce50c
Date: Tue, 05 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754363393
