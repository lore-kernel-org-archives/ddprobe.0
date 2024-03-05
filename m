Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDD75676A
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709647097; cv=none; b=O6+FnyMymveE5gEauXUEh38pFQKVzTbwcj5RLfzm1bmBud4+4ssE/ZxNOKNZ1fjS3xd85CbC9mmaqPL2/f5pi8JxICO0z8iR8Y4uT23FFj6eza/cNoeLcSYDRGH82Du5DWXw8lgKa8TzCwhBZ2AL+FbYDaVtvYQiq9LRpvf6YR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709647097; c=relaxed/simple;
	bh=nQZeG2dMdVNsOpKKlL68tVF2/hi1RHgH9bLUKnTx5WA=;
	h=To:Subject:From:Message-Id:Date; b=Jj+gxnhujrUfNV09wDpg9bpCMnrwFvpRTO/tgdiWSYeKFk442mlFC1C1vGunBlmpkDym5Q9ntjplFu7G8tTV/KI2oVFQoMGVw0PRmNXUslDfWhzp4Wvn/Yt5yXlgdF6EaAUktF0GyTK3eFHFSIcw5NQ9Yr9nEI13xkPpNZ1DcH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUZHOlNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUZHOlNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78057C433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709647096;
	bh=nQZeG2dMdVNsOpKKlL68tVF2/hi1RHgH9bLUKnTx5WA=;
	h=To:Subject:From:Date:From;
	b=IUZHOlNUZm51o+a6GNA3slpvCwijTMKrfDtHRAzpXMetWadQ4ipfWDVPDFxsuJQXL
	 bsi7q/P+JsCoy+4YedNP5E8w0OqrWb9JERTYJMJLqIXDYUKjZHhCIRFFfCdyh7W7Fh
	 7k/3VYUgke94Wa05Q2vo99OiKZyoTdycNOD8lbAgERS0z17E8zvB/VaT1f1XqKRiaf
	 fuAPwXGIWF8vXNFYRo5UDfpY3atI2O5qio27qu8/bCw4L8TI3vr0DSyOz40GU/iTNi
	 ISPjlGfLbsHBzUy8ncVEgwZCmJh9j+tKAbpHJINAcdSkQ5udprT+cVTUS4mc0jx/ep
	 +AGqy0r2iBOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FAEC54E41
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170964709638.26126.4065937482960944861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a568d63b5b34cf630c12e41ba6b9103ca626aec697c5fa36be3936e79d65dfd3
Date: Tue, 05 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709647096
