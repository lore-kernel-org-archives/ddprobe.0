Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47424259C92
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747733994; cv=none; b=hIrwJ965nUzqamLexvNo/48325oe8DMRcMt33j7gPQcpRWlVVZH9L57kwJo+ZxJYTsNkJc9M18IsXeP6ILhE6XIcBdP2BhYdPUHXlSVSlo7xtZRIUw9TnttNTM9tkOBuTzvhrWj62KPoHkxd1fCWvI/4dDUR0UF7/M3ppWI3SA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747733994; c=relaxed/simple;
	bh=gB0bx3YaHowxM7KKLCac4hJsoSVJQ43ejGwcoQYRonE=;
	h=To:Subject:From:Message-Id:Date; b=I6LzJiSnR3oK7CZdWbGUsS5zSBL0GIoEGjUHrQSLF+44Xb1C4mji77hr3q2QmYOSclrCAdThAWCN86VBdsHKP9CPSepWSXk+Z0hfXW+SKAE1zur4SMIiAl7ZQ83T6O5EuVi89on8uRPDCl7m/QEg48ZBlqFIVI1AFu7UVBx5ATc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jt1qEGyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt1qEGyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747733993;
	bh=gB0bx3YaHowxM7KKLCac4hJsoSVJQ43ejGwcoQYRonE=;
	h=To:Subject:From:Date:From;
	b=Jt1qEGyChiZmbgoodPiL0t26owTOjbt7khWSA1mHBcS4G7vRHCfzHY0V5I8V3Np1Q
	 FWmj//d/7FC2zR6jf153rqNndGC0gLsNmDOyQiXTJkBjMcxJkfuzNkNDteb13pylob
	 VmsaNUzvzCx9yAhFVE8aanzzPuYR+TM8k/UKtjpKyOiFTOdtdEUu/J/bMgPmRqpX5l
	 FbWVjQSp9dujQ/6ek6r03k4Joi/INc9vz8esNr18mSArBrLuqB9DnSZW/Ljk4AziVD
	 IFHDtDytVQyllGNh55H2wGrTvOGCB18JIZdJiWucswWVV6oaYhktUJGboupw0jdq67
	 45p/nkeNH5WNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F749C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773399357.31741.15577469537442550268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c35454723eae46ee6b4919abb8f92489d2cefad9ece8ae3726f9ad3c1f8a623
Date: Tue, 20 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747733993
