Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE2936494F
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786342834; cv=none; b=CxXu9VO6jv3NVnUMhVF0AhVbIb4boouGjyZi2Ud5lfZypGXbQmj6qCLxFvRntelVYO+u5DScAXJc3YZY3UxDwO8ChSJvapz23e9vfkSNQwLv4GYZ4iBMCDX1BkVEpMuUr9MvcNPGe7qNI45NV/sMAthEcEvCGeH551N21+2v6hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786342834; c=relaxed/simple;
	bh=SZ+i0H3V71szdZLrUZdAG6XfbQEld1nawtiHUfqSVVU=;
	h=To:Subject:From:Message-Id:Date; b=oA21yi1pRaM6+HTDEfS5otKntnVbrCdvuN+r+j2vxZTDpHx50uMjRp6rj9AJdz1FjuNTQP1Gb1ER4zyv5k9u0qYDUtW6dEOxZBgeww/JAe/DG9zurgifDzfIlukhCt+05ACymAClvCQ1hlPPyosugQ5HPy1IrHl+WWTubWhOWn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXJvV30z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXJvV30z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0D1C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786342833;
	bh=SZ+i0H3V71szdZLrUZdAG6XfbQEld1nawtiHUfqSVVU=;
	h=To:Subject:From:Date:From;
	b=pXJvV30zhHdlwgQFOsuNF3IsUejnHWCae2gHCR8dgMVo6p/CuSQq/csgyEIhq2QIz
	 1CU4I06RFet751Ero/+RytDv3ODtcVVeIALOi3NhCkUGlA1PZPqCC8r937Qyq0yo+Q
	 /H3sPTSICE3N8hIOW3V6GovjTgVHkh/o8PWiUtHMvhB2+zpTlnAarRA+WLFcwVqvG8
	 2RTdO7jrV38TFEoAu+Xd1U06GPUPCUdhtyuT+OQ+mYtM15JyMGUHDYPAns7Bs22S3o
	 pQIWsYwLkn3rRei5Oanfal3Ck8hmwh0lO5Q9iXCcAfjzEyLORXGj7tTUETx3xEwKH3
	 I3V++/weBdqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A71C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634283369.24583.408871961424557178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59651d4649b62aff5c1fabc9b6afbba4609214d0dc2ed7c6c3813da0a428b75
Date: Mon, 10 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786342833
