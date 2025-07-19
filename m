Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A95F17578
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752890995; cv=none; b=UC+enZ+LEoowS2Uz1udpP3hQywjoMLk69HucdwaZ7iaLkCtpPwm5DQdsS2+d6FQ0stdYcNurjEu67RP1TXgvSbBr7vg0Ex5OLNRFZ36qbjbk0kwhoIubcrVlIFGsmZfRXt+GRwVtgBAS5aw/CxCyI6J7wrP/N7XNahHZxJnOE0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752890995; c=relaxed/simple;
	bh=fqifuW89ASp3616FVM3nfEs5UO48MMNybFWqlAkgq2c=;
	h=To:Subject:From:Message-Id:Date; b=lsVbY8zxAbrcqXiwdf/TTztmgy8lv7qEYnLAc4yNYlHXC0NFPS2mScEyFHRBeOIjTi5ZjqVVWizIgEDRLS04DAD60KfrTP7MN4HgkYtYexV+fMN6c5g9L7YN8ijRTYvbZtW9Pr6Wx64N+mPaGPJiVfgc/EIGys9tE/+05wf1GeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQsXQFZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQsXQFZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752890993;
	bh=fqifuW89ASp3616FVM3nfEs5UO48MMNybFWqlAkgq2c=;
	h=To:Subject:From:Date:From;
	b=kQsXQFZ7wwLfVga8SjiXhk4QV0lz7E0EUkljtDAIMpbUc1BGd3+I2Vfqtly7wb3Bn
	 UPbB8jwo/vFyIICcWzhz0QL/VuWqxLiiWZ89JmOxz3TZzCB2DYMarPg62TZapT4bVx
	 snio8vbeIwnliCNC7dyO2FV3K0BKKXu4GGlOG1ljvUQ3zIpUcfoLhbfYrb6Fy1JUIk
	 NAUUGaihNwF3dM+l4tks5aKjaqNG7CG8r/jGrFTZLg7Ja5/duPafDs1EfmiR3qhgG5
	 osyv3MrVZWEdIpH1Bf6RgX2rxRaBbg1CkY49zY4yNL8x3u441D5A6sz074F1yzKiLk
	 MTGXtUKtvlqQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68AC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289099358.12238.5749910696051135924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ef4d4708b82aba716f8d075fab84cc30d262d6601751a1cf7f38a302843f9c
Date: Sat, 19 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752890993
