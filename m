Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F613225775
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745618395; cv=none; b=glVqB0mjUVLO/3j/dwlDI1EKnjWjeqA1RVW52GXAxOYDlDXB0mfWs7wJMiqF02G03zQBKKv26FKzEMaV96LK5zuom1QEOD5qmvSW5Ngt8ubM61MeKz0AW34UJo08LZtDeyWXiNssGe5xX7YJAUFN9dobyK/x09raybEkBiYULFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745618395; c=relaxed/simple;
	bh=arxH+X6yIy1/Be0nsZLlK0NQh/UA7Lf1QjYa+VPYu/A=;
	h=To:Subject:From:Message-Id:Date; b=RHu/g+2hrZ5D2dFavcNan/tZlHPpyABVXxnBGpNmrGUtHO3cSlGaOVFQE7z8yCyTegeuVIGuzJTy9bdbPEtI+FqmYd70c68E9kh7bSnXVsQM4M07T+hQffwbo6ptKeaIR3VzHzAUbSGgAHcY928HgiBkvbswwOqS9Q4SE86MMfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpOHEwrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpOHEwrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745618393;
	bh=arxH+X6yIy1/Be0nsZLlK0NQh/UA7Lf1QjYa+VPYu/A=;
	h=To:Subject:From:Date:From;
	b=JpOHEwrpp16TrHlEPIaTZLDybISeQBEBKUCCa0VFRiSdLxpfnUqlFs2VwEI9TEHQh
	 D2jjqOO0AtAaA9AhdbQ2BZ+4/HFcwzaabo75eTyaAB2AAzDE2/R7nOH+QSikZ0fTie
	 u+uOHddOr9kBcvAIudsu0YsfygYBH5FFjRCQ9rSl9cLE+5nes9ENtFRh5r/n0Z9gCd
	 rnjUrPw+uY0aOi7WMYugmwDRrnuB9h+NYCs6eqWzIw4QzRM7O5Gnb5nuoFD9cZqPr3
	 1mLhZAJopa/pfUuq+EwaqDLJ0/s59A+/oOZ8YeSNA7E2gNq3QwVTJPbO8f4ZKfIcye
	 nFHus3FWmUA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F545C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561839357.15277.10306709947908696678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c58cea629eb8445b200f3a29c27e9045d33a9a6508af4831cd7bb84ae07a93
Date: Fri, 25 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745618393
