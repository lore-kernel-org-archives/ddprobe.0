Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FEA16B38E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724221554; cv=none; b=Nv7S87NyH2aZEBARjohrD4JtFQFcJzRSYNe1PhHguBVGA/oyp8bPH7UXBS5oWudq7XoJ0JsRRUEsexBaNqQEXuLJLtUnqIN6bwL29m96+48lqkZHZ6yCoHtF7I0BaHlnOQvVkrku1DRxhYwW5FIm9vMjXkDRwlf6U4dbPGueKco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724221554; c=relaxed/simple;
	bh=ut4kCKN5+NZkgS6geK5JNX/QfyNq8Aqoup3WtAhcqMM=;
	h=To:Subject:From:Message-Id:Date; b=JntKQkXz6yPnDRGQ7wqd6R3a2qapHrbhPxq64+qWGHf6RfVvvadGz3SSUG/gzBNVajDXxKGGBYM0wHcYG/IQCVFdWQK6VaMD8785KsXBNz/juZc/D+yWN9AO8xRcvR850kUcg2iPNBA+89oEaGoGOQUhD7sYsYQpYQn61LtcbNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9GaorkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9GaorkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE762C32786
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724221553;
	bh=ut4kCKN5+NZkgS6geK5JNX/QfyNq8Aqoup3WtAhcqMM=;
	h=To:Subject:From:Date:From;
	b=r9GaorkVa3VluaeDSihNgqL/qXJivnNJ6yLRlIJ1QVeK+xjZP+LkjFH7Dh2Wo+ZcY
	 7WSQeD5MrCBz3AZSxitdrAdvm9cUIO9RYbcAjJFnnp32XEHyKbSXDYILonVFZCpRKD
	 PtldENzFaP86VNfSzZb4xy1S0xA6HxdkGGmWH8asgrcR6V2NLVEMC82+Qzp6H8raQw
	 xxwKtiqEY65J7vx6rVbX7yvS8vNaxCawlCMpeRiLIBLnNANxDhOsAKTzRZVxFgMdth
	 l88SSwxcdyNfPp7SV0CoUXcn6Hz/QXcIsHmo7otSBvTItSgr8dyRUs77PS6hvtz57X
	 PTbpOqSrlvEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAB3C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422155360.21913.5664836664650807261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427b576363592f50753b58da5d95483eaff0800ba15379613060523447424445
Date: Wed, 21 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724221553
