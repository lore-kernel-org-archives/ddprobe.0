Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B072D9796
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790891434; cv=none; b=arkXHdOoFO47WmqcqZd1Qg2JbC8tFS6NtBou6qI7/OHoht3hMP5scVmiQ1SAdprPdBvA3CDHqxT8a1gKkUr+XUr6dIclaT7FaDxnJ5S5NZ7UT/W0EKSGpq08z3IbDuf0KZnrFgs2oR910u44BV5fgbPS6VpyT7DnqXsB7S3JTzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790891434; c=relaxed/simple;
	bh=yTtxrUbw8sbCO8rJrr5AyanNL3FF10xRBpAb7zxe/5Y=;
	h=To:Subject:From:Message-Id:Date; b=IOkcIWkIFnNUMqxLPYYB9k/kU/Tvhmt3ztZ4AETdrI5PBGseIwmQ76D/W9yMyz+oHqG1zXsg8J6pTO6OmemTpBxiMfjv2110HtD9xfd3zxXF3NRjzhun9juThIdIfdf/l5Q3vT+11C4rr6EVYkU7R5WqfUmBrF/Z1Ew5a3Iiv2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVgWoNKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVgWoNKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E90C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790891433;
	bh=yTtxrUbw8sbCO8rJrr5AyanNL3FF10xRBpAb7zxe/5Y=;
	h=To:Subject:From:Date:From;
	b=HVgWoNKFHJ5z713r78gqC1Ebvo9BQ8ITbUFDi/pECZhdIjs6S8rW7w3z0ReI0647i
	 UB5kd0kF2zrwnatcA+SXkfjue3/FW6rhOz3W3yU4mFqrHKsZRaelWSwTVXpCK/0jZl
	 MGHVRwTAdJjjaxo/YaxbmTz5NQWIdjsHsyxmisbxi/buU57Dx2qSb6sqaQNLt8eMlV
	 y2NpE+HdfZ6UcqwEenLLL0lFvDfJroFIxDHZNmbIuPhSYaHnI5ri7f3ZbrEC8OVqqT
	 3OX2PI731KC+z+PwIshzVHx7paSYPQxptB80xo8kxXviaykxNI5n5QMly9P+T3r6rB
	 X1akKTGxi2iHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE498CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089143369.11652.2628132150943410903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea8311593732fce9bebc7f509f5d12986cc604a879116cde15ffb67818b9979
Date: Thu, 01 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790891433
