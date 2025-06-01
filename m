Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4380214C5B0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748788794; cv=none; b=EuJfMWYbVmddx7rhMK6cn9zqkQdp88jhyexqBcmCKqs2gsoH2TBd0Fa8bl5Rp8cXbRcV/M74QfhaUM3CZpj6qzxTFx0HfHPeBSTwVpeE/smqVxySVAUGXkekP6oABonK5fJjF/VafyMvdlI6rFYoqqS3LPvqEn9qRh3+YO+g9pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748788794; c=relaxed/simple;
	bh=YyuzfcFCIBn5d5WRUOwtqb/8fywxlvuq59kDdVsQQxA=;
	h=To:Subject:From:Message-Id:Date; b=vAaHI4bWUCrYWIBjA6T/4ryb4/yDsTN0+74oNcSnp2eJDQThgfKdL3zlL56bmJXK2zhymFqaQjY2yo7XyvIgA5Kv4wkWzM/JEEx2W8qfghOhTnPRmlxsK321wVNTBJuh4X1dxj6kLLh6/XJ6RwNUpF2cw99mK0ST4ndrF+ZyFoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAM1Jw57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAM1Jw57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748788793;
	bh=YyuzfcFCIBn5d5WRUOwtqb/8fywxlvuq59kDdVsQQxA=;
	h=To:Subject:From:Date:From;
	b=MAM1Jw57A5Nh7uknCu+3b+eJhQbRtOYs4XAa3I/Z4i3YJ7jqPGYEEP+s/cS0b+k4b
	 RYnlI0zeFhB0AzcZHC1munJgpw/nnLQkQZD+jod4++xyUd0gGEk7oNKanXjl0SgHci
	 8xFwBfq5d4WzKICQAcIuseho7QfBiLvMuoePWFm3kcSEAiAaNcpdGo8DzCx0Z9Bju7
	 iB5QeN/iipA3ZFy4dJ/vaxsjCfmhb9L2IRP6dbwrWAW74J4WukNLhEMAkHQtDbchPy
	 RvE6VLcOmUEkmCYlq1hOZ9j56BXe+m/HtQdaNw7VQ4PFAZsxgdqEoGsON+YCvutc8Y
	 ymDojV6pQZObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316AC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878879358.15754.5395626655507273278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bd7d9094a72a83ba31499193da641c3c6ee5559633c8eb7230b16d96aa6f07
Date: Sun, 01 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748788793
