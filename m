Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3601513D51C
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773539694; cv=none; b=RTbIbh4Cyxy25lcF35mdoKPWmnf+gXfLp2hUjPImTQXyL8BoZCjPE9zjwCoK32aB37wBY0ILCSTKR8H+j4r4U4x7YEXPRounC72RFNSA2rsRejbgIjpfbi7wgh5NTd+be3GTDTjQdZaqR+wYpImI5LYWN4iLYhiQ3DZTG/PM/rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773539694; c=relaxed/simple;
	bh=QnKbiQOvC3Ok1B5I4N2JfN4u5HCGZ4JVpEXdMrEdZVU=;
	h=To:Subject:From:Message-Id:Date; b=D/RZfueoYH1CqR5zjVop9NS1PtPsSCsCzVndDgpYZwjs+UB52fkWjRECVHe1WmTAh4zJCGKTUuqT2o+D1YqgctC/SV0Ih+iqcvP4jNznPi3JBc+uAWtXcjnFadVP7BYLgce77ph9dFwMlftv/ag9wCG4d9wcXBefXIjDQfpLVgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX2iYTxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX2iYTxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97BDC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773539693;
	bh=QnKbiQOvC3Ok1B5I4N2JfN4u5HCGZ4JVpEXdMrEdZVU=;
	h=To:Subject:From:Date:From;
	b=FX2iYTxvazeBdAAPaYMcjP9eJLW0MDV521lva4TsBtXVp9PPZ6tUyY9QoBB6fkV6Z
	 0U5TiCKlibv6VD+oKrLn4pVA+Mf9mCwupWqjWL8LD+GWE3rC4VaoIKZ1OF4SNhZC+7
	 sX9HkAfUyYqs3rpq9HQsv3PmaK2pBjlqbdSavLc0OwkSWYaYP1cHvfVwqolYM9Wqhm
	 l9vxrb+kmxvTTjQ0RkW0hbhlsXyOTBruJAS7J4DPu9zbizM40zQm2xymVMS4TN4Gfw
	 IZM3d+4FDExw44CB5dOn8CPhIp38fCXzpEcec7dSBc6xZ2vCif0eIXPdOUxYkz26+Z
	 SSAkVw179RlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850E10854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353969358.24184.11694900660051490581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a728177fdf8435e5dda7beb9ce6b397fd2975f2ac687808d7906646502e194
Date: Sun, 15 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773539693
