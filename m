Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602981E98EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792225834; cv=none; b=OGFEiqh9e2sraIRnnV//C6eTbeaTPPk4Dxn5HwXV5jXdm14VVuHp/KryOd4C1LieCq5RirglDTG9dBycAoxGzZZqlemp+JimsS4fQJIwHp9VQH1HF9BeTbu3uXir08QER/n07+IZz0bGVP5Af2dpc00tslxQJ5IrrWSDaOTNTuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792225834; c=relaxed/simple;
	bh=vQlSeisXuW/DDX3UP5j42FLrP3odl+oq1DYahY+zRLA=;
	h=To:Subject:From:Message-Id:Date; b=Ty97FYz/ejccwcQqTFMvPewmpd+VlDk2Vo7ZoV88evOQsb18T0fS1QyH4PHP4eqgNmznKscYAguLwmybkdxzOXz7NJngcY9pshBFbXadY/K3HwIAGBO5/pqs01OR4zNKzMMKHeAKBv8debxDllUpPGJoImKdYqq/DGnLOEFAG6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e54JGt9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e54JGt9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FDFC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792225833;
	bh=vQlSeisXuW/DDX3UP5j42FLrP3odl+oq1DYahY+zRLA=;
	h=To:Subject:From:Date:From;
	b=e54JGt9P+0/mSt/XiP1Iz0zeSiX7O2Nrzq2ZXZd3HzE7JLv8u/FwqdLLo0hCTn8Pb
	 7e2v7UpiL/QfauiFUigcuXh9RzUwHII6YnH4Bp6q6JdvYROV89UgzoP5q/u1JWMGDM
	 lhEKXyu3AOp6tCV08VM6RU14TB6illuiOB5jZ6buayFvDgYZ0Ww81dsZsP2qjPB+Rp
	 0sbFCgjGdGMrwc1OSPzCcivt06BHZWw5R0SxBKXQnL1R+58Wo1unEqcaXCLigyEVz3
	 yVBtHOb8OaIt7HutDZODwjALmfabSRxsyc8YPjaokFeZ87y325XJkAD7unocjIa2B0
	 ksphDfNQLs4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09E7CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222583369.13192.3189624776289910910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514bbdeabada06b591b2834325907721d39adf22be67defbcdb5b9a800abcad9
Date: Sat, 17 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792225833
