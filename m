Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7FA38757C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776706053; cv=none; b=mWGzOINeopc+DrEJG2JL1JgFWaPc0Ru2WctcXT80rz2RjWr4s0CMWliduI3jIRcVUGQpoTQIjBJ8cN0bt7y06Jn1yVAhIMT9MsYVcyiotlWmUFC+aUzMhpYUcrIb9I3rAZ9jQa3imogKbH8QgCfGwzCDcQWgK4VHQz5jU8dXtz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776706053; c=relaxed/simple;
	bh=Teu3YHkFVggBjZxn5Imhj8Da6ArnaaUiS50iHyZcceE=;
	h=To:Subject:From:Message-Id:Date; b=rFCDe3uMw1OIlYRrM/kVesup7mm7Xh63K3OUBVkScW6smaKnnNEPhFPC2z1+jDek+6ka0a+T62RLLyPCE9+5qnQzhEK8VrvarfeMCEEZUPV+yXFz46GE8eZ4FQU54KFdBmgwKn8XE+nUNtAACJ3NHQGQn7IrgDA8/kEdv5oUlXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKIGQVzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKIGQVzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB0C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776706053;
	bh=Teu3YHkFVggBjZxn5Imhj8Da6ArnaaUiS50iHyZcceE=;
	h=To:Subject:From:Date:From;
	b=jKIGQVzLXx5EXBdolGPE/DsBY7zBgi/Sij6xUCEEkBJ96FzYvQDW1WEsVGXYeRMKX
	 I5Drky4BigRDyKeE7Xs9vG0apr3eHbWvqUh94a4jGWdmKbNxa5v1jRfdEiw9egy3N3
	 1P6VgJgmGt6cPg7aWf914r1pTv9Zi5zIPXECMchlpmTudsrR7zJ0AJuMNJEGm0LZzX
	 eaDuK62jOkwXTul5q0znYzFsyWiCugrhTmhEY/tAr7aUwu6TQ5k6y11SOCqg1PGEvn
	 vp7uaZP9zLORgmmBZjb59EKM5UpesTCcUWx38GDfGyFA0JbEj+lcdZwLvfXxUvhCNl
	 FLLOyjLVoAM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966FF5A8A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670605368.11741.17280527914495185023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c2f88567541baf987265128a35d871e88eaf52430d4161b7bff8c9c6bb6e5c
Date: Mon, 20 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776706053
