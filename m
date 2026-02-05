Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910B22CBD9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770257034; cv=none; b=r0LujPXLCl+rXF4PtaBzBowxoOv9XIme8bwGVgE3XI16LRcybyT0/F2UfYjBsWQUhDAJ0rZpDAAqFiWDqlejhp1JEvJXNqV8PR/hUJrn+BISIoctuh3sOEQ7gIVoN+GGjhoMk+LVXE18ZnI4SzI39DppKI3QgEoGI8FV0u/IAk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770257034; c=relaxed/simple;
	bh=ffr/HWVdHXy9UzMiP9x6cU9RfWhUtawDIi8ksWCwpwQ=;
	h=To:Subject:From:Message-Id:Date; b=AVcOCWQenc4v9ernBL4hy3gKhkypnEqVN4Yxb0eQPtGvuCOrIyNWuecsqe6d8c9CVXSH3zy1iU0dzlOdpzkYKmUBvp3py4CtpUm3F8lrYJ6GgRJ9fqycqkNpzkANa4Nu3mGP8GkkgpCE9UiedG+1dY+jfTZsuTg/hZ67Yzsb+/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VORXIQEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VORXIQEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9676C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770257033;
	bh=ffr/HWVdHXy9UzMiP9x6cU9RfWhUtawDIi8ksWCwpwQ=;
	h=To:Subject:From:Date:From;
	b=VORXIQEVlkcjoXGQip29PMYgE6MpdtDddnMKMIB+Sxpj+T/9EgCVdRc3V1CHWyVaB
	 mNErPAVPMfCu1UrnzpNV0HdTjDzpjuUvRRfvcRTJq1VSPlOqiE/7akIWgvDIeN72mP
	 RImgtT6rsTo/sU3fdXtDWHNjafmxDuQlvi8TFGNPa1zAbBf91EvTU2l+Zn+dxCjdo6
	 0Gkn4g2AAULuBk9HbV2XFXDcTrlS68+Zz7CpSxsfZB0aMlgVRnr8ThWNqLl54seqGA
	 idGS25zeexG/o9Nw+qXIWMoajXM+bGGG7M/TmSTYqmZKxkmKAxIaQvFV3f1PzU5FZq
	 9D63PahRjJD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DF8EA7951
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025703366.858.4115731835770839840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3be5c11a080ed6ec293237058d6d0a86727cf72d457d505926e1258ba6e8fb
Date: Thu, 05 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770257033
