Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE72BD03
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755982194; cv=none; b=NsV9MbTG36gJ4Imj27gQbAhRZf7Kn0bUIBM536gTDhrnRSiCEDuoFj8+VjG26E6PqRVh+OAiJDtG0bPk7jDQ/F9W7uT//dkwL7F1y2uqZtG5U2hEhKadd2FVdP77LagNYPnnmOFvDWoTPQ6UhK8PuQr3fYUXL9pzNZ7AcJzy+2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755982194; c=relaxed/simple;
	bh=n6veIsCs6oq0DJM/4jkkZuGXmB2GChKJGdnqkgdTSig=;
	h=To:Subject:From:Message-Id:Date; b=mWpKFeMromjkW9N4ATiUM7uTl/iz/BL1vovvnAJ7fNriwZSo63ZnPS0+ZBV3WU4T9tAjWvS/mxpi90rdvQth4UrbdNOAHVy5xAFt9dRFVO/ynSEaBwGUEItxR99W8d/TGWGfJfscAx8sS9mk/8o8TXDrXYd986ytQeyqHhUINF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A36aw7sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A36aw7sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755982193;
	bh=n6veIsCs6oq0DJM/4jkkZuGXmB2GChKJGdnqkgdTSig=;
	h=To:Subject:From:Date:From;
	b=A36aw7sLg/cdr47UtRpIj55/dWIh3E0PLkIj3Fos/KFus5HwgwNBBfzLtlEF1j567
	 hVtlV7FN5YKvL3KJUpXZ2lPbgL8/kyUMw3wWHUu1b57yjyL7EZdMb7gDMlbEa1Uzii
	 Eyh0Fpy4BoJMutDZx0o3P/MBYdNjBkDlMP1bvNZ0263tIPKPjRymTf+cV0XuDzBIKg
	 YkCJ1Ao/J2AunZhHhTGqN0A00KvadntOw5YkCGrlBefoaNrBwca1n0TN8G9yRW/Eq4
	 c/TBAJtnpIRdZ/tVB/kahAgpVe/U7C03ox5G8KND6GFZhvTjGlMj2I4Gn9uoPck8f5
	 5x4CkrfVdDX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598219358.30820.11088110956625388541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9918ee4c1f5b25692212bbab9deec75534da73a4ebfff720b5976297c7ae7f
Date: Sat, 23 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755982193
