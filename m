Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7BF346797
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761239994; cv=none; b=Z1Nder7wDhwYcceBW5a30V50g64CNFN5zQp9489b2pUS0KFbOKoTqTQmqXOzi3rUOZc3hqV79/gM3Y6IiFbdOBs5zWHmRp2fFAGF28nCwK0Bil3R1DNAKFbr7l9V28Ig249Kq/6r9AzoblSHgFfL9Cmd6oQlH7orLa+zdqwQ7dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761239994; c=relaxed/simple;
	bh=ZCQtGVHuh5UxICmfEFfuk8le4ExEZfb4tiRe7YnPsfs=;
	h=To:Subject:From:Message-Id:Date; b=doIHQKSP1licJ3KUNxkirzKGSh5F/D6RoiZQrNOAYXh8pSZtJUR1CCw9hzFp9Hb67hzJqOHTy4lMpQW+SK+ajqSntRtVaFDrwhryI/fK4FJvDO6RWAM7TbuIHzrra39fhfbY55gQQMVtEicpnAQwuZ86GxPiQqYdy/3byZOs/n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSBYAzqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSBYAzqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA28CC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761239993;
	bh=ZCQtGVHuh5UxICmfEFfuk8le4ExEZfb4tiRe7YnPsfs=;
	h=To:Subject:From:Date:From;
	b=DSBYAzqBKvoqd8iNXNw1RflSYWRNB6knzbrMOZJM1MrLboCrTcjJYCi1XxBHe2AlH
	 gVSs6+TxqhjN5eQjoJOfaD0iUJaBufxZUrwMvEPi6TFBF4QGsaHqB63BONx4ip3kjd
	 5XAElxXFtZPVm0QXWZMgOFp7yW7iT68r4sUiZM2lwPOmM226FtU6ZG9FJnwTiLOqQ6
	 Xeha8eyRbnig6APyAHd1y611p9I7Ch0dzZT0EA/9QxsCnnZ2kyPlxkdop8W5BdGdJq
	 nc4JHrmT8S7hbH9kOYbeJ051KxdrhLGHdedTw2DL1CyjvmYl/fwJ1QvfcNX0IEdGOq
	 Jpt7VUvSjt1Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123999359.14843.4584728461182055518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd703ce9a05e6475826a27c1e576c6ce8a832a188b73300005d3a1877441e98
Date: Thu, 23 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761239993
