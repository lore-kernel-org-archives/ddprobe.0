Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE30747F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759630196; cv=none; b=Y1DSxAqCBKF9qxxTHGT1psEm2de7R4GkTOYhOmIUxCHyrBBp0wBV8eRjiPXhHnxLOB+8ZmzDpMTPp/e0c+5L4FTcjBP6EvAjk0Y53JTGc/YEp0MX3Oi2Jv+53AUUOeRByWgQxAWNQ7mhOWaCDFFssn5bHrOno650FoOk0rGV/yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759630196; c=relaxed/simple;
	bh=TaxDnpquUMn+hNfzXkmXa69pWeVq7rj4sKaas49TvPM=;
	h=To:Subject:From:Message-Id:Date; b=EQjK9myXH+PdAyWOKVEqiJDJPqkQbvC/pllCGZUokpz5Sj0FntpSHbO1P8BtJyUphPG1jnjQlwFvqIFMbN2HYdtOaG/oKZvyWHvlGiQLbqlcYsIV4QirdxoULLr7xOYhRQS+DpYRUhttwlnJFtpdqbOUNOlIaHlqYhWg2zlqM8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmMlL/BJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmMlL/BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BEAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759630193;
	bh=TaxDnpquUMn+hNfzXkmXa69pWeVq7rj4sKaas49TvPM=;
	h=To:Subject:From:Date:From;
	b=pmMlL/BJhh8k/u4U1YapAq8k8KdxQz+YatqEZv88F9aYrmbWanTh4lrPFZLCNAdU5
	 LFuwkBI/9Pnuu1uMyhAx25N2qTkT82zG/xFO6ByK1m6k3gwTA1Ff0GRrYJ4lQhBX+E
	 LDog5BjX7/VLOaywMvoNDnAZOXpmg6VsOpoPmb4XIzrsAYPzEwxD6bGn1qqKSYjxVA
	 6VKC5t3Onl64j+Z5wb34kvPQb6HKBLIYJRtjenWryGLjVBGyv+TcqZXCeBoToxCcev
	 jpLWQGzM8yYiJo69SxxmtTswDGi551Mdv5YL+cJUba6C4IciEOoiyW3+VYqxUrBtkK
	 J/M4LOzFpQ3wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584DCAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963019357.8780.10206684714161236310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe651d77152cd939b43964f5c61243ce4c13990fd501fdf459f21453889c1fe7
Date: Sun, 05 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759630193
