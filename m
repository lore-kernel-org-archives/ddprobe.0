Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E9831F995
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781769994; cv=none; b=d8ggiR5DboleCGWWjiD4OcT2mGCgRb8T4w46fBk/g+H67hZ1aZhf/Vtz5UeEEPHIDUDjDLfEPpdQxPSortg4vBT7OCQxORVAvODoAAFjZShjv0TwjRPxTGD7eEP82coLf93U9pBciV3KLwmXChg4X5n2S0udrblfnzro5YFb5iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781769994; c=relaxed/simple;
	bh=CV/a7rUwbrEhfyqx7cegS8+b9UOMVMo2nc0IetLytSU=;
	h=To:Subject:From:Message-Id:Date; b=E9viZlw8LBxy8dq135hlHXNGGR6hH3PJeqdliWVHaSFWFhrC3zgefmzEMq8Ngd+/01AXJaWxkMjr4BE1b+G+WOsvtILy4rkSSXeUMDJd9cp+1dzspqVk6v35IJLzvQ34w2dy1k9tnuU/fCL/U3QhrL44eXGwKXzSY9w3mLiV7xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4KHvwF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4KHvwF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AE0C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781769993;
	bh=CV/a7rUwbrEhfyqx7cegS8+b9UOMVMo2nc0IetLytSU=;
	h=To:Subject:From:Date:From;
	b=I4KHvwF/Cr27wuSBfk6Y1hyPjEUG8PzlQacEN75PByjqghsE/MIb3Q9A9MtOuRLki
	 4vFL6srm6cUfmZ8q5HUcR3BhZHUB96WAZlJethUOYyoflkeMNCrdcth7815rNo66vS
	 2V19Xyz5tC+GjIrYGtDZaR0PKT1JaGAtKhV6aepx8Oj5REe7KJxbJ11ZDgEhLFS+WB
	 53YXwLWz9oHGIZH9qdWfZSDWbSVnrLGSF966BVNKdgvbTSDigr7m7z31i2UuU5lts1
	 qImPkUzwwU85aqhNwKphHwTnfJgwdYeagSuLPuR7UXa3uuKM0wQRRc58xWq9XKL/O2
	 G/vY0gDuxc79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F1CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176999368.16378.14533286426345556457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0b010977b5ccb45657bf65539b783cd4f45c013c1444ffffdce7ed9d4a61c9
Date: Thu, 18 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781769993
