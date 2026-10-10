Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2B233EAF3
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791655234; cv=none; b=NsRkaBfDHaR8r6bXFKBLU1C09+wfhbkJ8rVN3UHW64UCXLrWljJqqySPNdAcra7ozjYYh0KoGblK1h73NU5PI6xObkavpYqvWrHWtQssrHmZVJSUYPlnUzuTellj3ylzcPTIJ717R562LlxF4KjA2NZQZKai0ueEO4tuLBwoNuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791655234; c=relaxed/simple;
	bh=C0Lt5yU3jdHbTpJw1kWd/iXgHFn+gaBAu9/URJmJmcA=;
	h=To:Subject:From:Message-Id:Date; b=SfqYoH835BmWH0ckjIghVFOPhpaGBdkDFKZz3BSe+PxpM1tQsvaADqe3LD/o0lYm3C23ocga6iw1kd5Xr6mEg8C10PE7mp/DS0z3CMqwCJNvPVJvZVLRgS0EbbzIYZdr039c1PtQCnNxBH3hs5O7qS1ej+wp1NAxfJmilwNV6ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyWcfk8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyWcfk8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2700C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791655233;
	bh=C0Lt5yU3jdHbTpJw1kWd/iXgHFn+gaBAu9/URJmJmcA=;
	h=To:Subject:From:Date:From;
	b=SyWcfk8/LmTgmjiXHvdF90j7bk/0yyVqqhuQDQ4G+m4oJuGKC2kFbIK1KPBkbJKhU
	 GJvcAwB4aOoV5nonOiw1yYwuICvwcFJ3yp38YULlgNuhQaB8LG9t7jDlYICpkHDqjb
	 jTqd8KD7+9vLitwaLAiI5HwLDoLyNXyBMakz7QAxsywGpF6duyktANiGQFGm+ANyts
	 lY/DfjrJvZDvoSPWhe9WdYVtFk5HHRtKagT/XQ7DXIW1AyKG/mBow0HJUwK9eRVEb5
	 N5uDYmwy5Cp7JO8BrsKQ4fJAJaESZeSv5H18jTiccaBxhmwdEDIz1C8wolnBWkMJF5
	 bVOFKPmXkrz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFDCCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165523368.16981.4175467748220678867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219d20834923c161ca197d3188a98f633ff35c1bdf46c0375f8827fe4b160483
Date: Sat, 10 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791655233
