Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD5148830
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749014995; cv=none; b=JdJKi2sYkELN8Of8/UuzZ/oLVxYZf9h5rs/Q+40H6mM68hy8EBQKuT8oDQry7na6A+drYC9pnwLpNrfeDCHWUxX95WSWcs8zG1jjbbgmUNZRLSRMRlaBrFZB3Y9GCNyxSSeq00pvExzd4wq8zSSXA2tYGL0f3XmBL+CH0V/C39k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749014995; c=relaxed/simple;
	bh=5RsdDv8YldQJ1tjumugP/M+O384spd3WiXYkmqpeemw=;
	h=To:Subject:From:Message-Id:Date; b=dygFOsfs5CWmdnLhL3FTuimVTvw/Rb+DjsMJXtRwxl3JEcFdlU0ANSqaTA5or9rQS5spmVNCT+KHDb5kmOTKOwU+AvQirDhIWUW7I+YHfLPYfs3pKKve8X05llNyYvfl9pTWHhfE2wNJKY8M0YkWcL0yWBI3wXDGO9lqizL9hA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HP8FaAQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HP8FaAQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749014993;
	bh=5RsdDv8YldQJ1tjumugP/M+O384spd3WiXYkmqpeemw=;
	h=To:Subject:From:Date:From;
	b=HP8FaAQ2ppcYQuHNUFtbzUtG4hVYaEiGBuSrvJY8zILU/OoqgSLtkJQZN++Y8E7VK
	 kAizIgVqTbJnPPNYUr4IOD+zx+91/nFqQoaUWqdZjK3f5m9o9yGRa/dF5WhJLUqk04
	 BT0xE/3gVQJyMsLQFgfP342ryjE99YAa93CT6YOAiDNn2GQiYe+oVmfKuEcvZf1T8r
	 X9ybiyb23uiAZH+8pmocVLxrE6eOcoI4kavKdtpZcCYgrHXjFohvaOQIM+Lzmrft+o
	 BcGJmJOdN1NNcWdf6DM6i3dcWA5WXiWRMkMfmHq3a7BBy55E63D6gl6Ek2Lt96Bosu
	 l5C8y/Qd+lTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA43C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901499358.18708.13206419631114591903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac72c9fdbcc91887814b907a5c897a66aa8a557e484c775ee0851c2a2d08852
Date: Wed, 04 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749014993
