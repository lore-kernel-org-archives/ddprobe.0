Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369331A9B3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749245994; cv=none; b=h8IVlbNxosUkBeTNmSpQmAZzV6VQABsf2UAA6XzfVgHJJUoFphR6JLQsC+YnKPV2GdyG0t/ehiheDvKPDwWbcQ8XuHyGQZSWFqfWFcO1WGFdI7jfYeFDTn4tQbNxhJHJuOqvT20Dme7mQCppKGGgloe7AYBfgG2gUiTz5h+u9Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749245994; c=relaxed/simple;
	bh=wu9Xe9G0OhZBon0xBqIwDr0PwBjKfAErmlo9av2kbMQ=;
	h=To:Subject:From:Message-Id:Date; b=qMYNe/FA9BxgRJ9UdIeoIM1E62CTiWcimqthWIePXt01Osf29cCrHaRelWCWiIx7vQ4wTbKVo9XPX6QxpOoHdcq633r6cZdyWRqetegmE9CbZQL2IoHjS50G4wREow2ekM/x1xTWPFP4X7KG7PH8gQlbU4P4oyBzUM2pcG6GkDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzRz9YyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzRz9YyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749245993;
	bh=wu9Xe9G0OhZBon0xBqIwDr0PwBjKfAErmlo9av2kbMQ=;
	h=To:Subject:From:Date:From;
	b=tzRz9YySWYP8z3QtSFs87HuEDU9bO2LSjqwjSE2cqGJt6yObx46FKVAKjhoy1MH3J
	 8goNq7Tsxg1g0siJOvq7RIWNjNNfEDvTFbLZckXiRGGbVhfcJ/0WggsuKp86siYgFN
	 JmqLG+4MRMw0eLvnJyI1qnZmjp+OKyqIlZ+PB0I+MSN3pmG9gqYvPOVLWh9d4UbjKV
	 ZoVffXAYsThpx3t7gUqXM+3Gzf/NIpdCbUp2lZsxtgsm8hhYspXxAZ3F/IQyF1su4W
	 TOklSLKaPTej39jKkjkNswG1jg+MCDq1cHMHMntcorGQHqRGISr/nRzJ0rOL/cOm6I
	 S3gK0waEXe8qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502DC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924599358.20224.18254106756465189431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2347908acb5d7a9d18a9058dc1a44566436b0b94307b2fb0d65b3b89821e104d
Date: Fri, 06 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749245993
