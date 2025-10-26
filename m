Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC235B13C
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761495594; cv=none; b=ej4Ae3KcqG/pLYFiAEsC3Imf/une7eFJ8sHGl+vfX1YkEqgAMJKnn8RUs+NhpdZhY9fJvMzSm6nKR422vpGM86rYbjQMGLKReiYoxn4GhCWLfBAS5lmz+wkzi9fjRPIE6/IghBEwG8lCKmfRVUGtUohyG2CQ+4XsLktwvJCMVcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761495594; c=relaxed/simple;
	bh=fFDh5pFllbuekh/zJEQUzffsPjjQmZ3i2vkLj44LDKg=;
	h=To:Subject:From:Message-Id:Date; b=fpf9H0VXx7qSBztwcfPnXkvGR9Fs6KMzXIVAb+8xoo+m3G91Atb/cnucWUQ8Ze5JJaBqWlAOJJ5E8kgk6QU0KeCxqsLfeVp3S7GvekrjEqbXqvsLe3JQWVwbHC/Ubd5RYNdNtmNWqWT2MLsm+itNdREvTLIZs+kadAVhrm8pnWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWaQAluW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWaQAluW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8082C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761495593;
	bh=fFDh5pFllbuekh/zJEQUzffsPjjQmZ3i2vkLj44LDKg=;
	h=To:Subject:From:Date:From;
	b=tWaQAluWwRVIL6cQ8Avun/mwKT+5VD060WSI61V3E/XCn5JUq0rlbfp8oU5DcTdz5
	 M/vJbPb//jnQFxDpJM3rgM3PUC8kbcPZiIA/k2kvZdin5wlNdPNxwXZV5uHrTIeCxc
	 nwhfvj9zAvvfCPByLPvlDxU6NC4gmb8PmYEpeIAm6pjDUPSPtOd7RDS1ODi3SP2qJ5
	 S1Y4CgYvrBu51wk0qH3bEjQdFgst+2oOt6pEIvzu3nua7KQCyoh/R8O+QtBLevwzux
	 /yBZtqQ9MCCSRnGugVFRshvveBKdD1/t61Rh9BwcwUorcEgspy/9s0xoZq81s3CmYH
	 0kNSHlX8j3Zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EDCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149559357.25404.3621253007170167019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e66b53c7c336c774b7d4bd8ad2cfd89b608911607aafcf1f29674ad3a9aa85
Date: Sun, 26 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761495593
