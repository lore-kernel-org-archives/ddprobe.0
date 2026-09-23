Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C0549158A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790160634; cv=none; b=rVOnw+7XuG000mrZfN/qApj7orJ2hOyzv6fdjO/2VTIydTISot3dPmdjrE5D4EIPaGwZrjAqJLhg2n8A6851VcQ8frXE78gmKFk6hD4+1k0WZjNVC97P+cLsHGrI5VnqoWgVT3e5E0erkn+oQ46bK244W2/ygogP5J2v07WM3VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790160634; c=relaxed/simple;
	bh=UsKr7hLs9FJytc0Cjr0G6x0+HXi64ZTnKzt2EwG5vCs=;
	h=To:Subject:From:Message-Id:Date; b=Jb9RXlCeL3csfPtoWM1dBS9IRqNqUrKy7h8zcErXrx8D61vWJmXI3Qej/sBtDpcfzoD8ZwnR1K7ilqkj+1H8bcmzhbMv1Qfp7qWke+Nj3yKwbRI3XPdnCeGYIQ5QixDGqPai5qx5UQ6HkKDxXlJSwwXxfaZZHrUo0en+j/kUKmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saIY9JLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saIY9JLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D166EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790160633;
	bh=UsKr7hLs9FJytc0Cjr0G6x0+HXi64ZTnKzt2EwG5vCs=;
	h=To:Subject:From:Date:From;
	b=saIY9JLYizJhFpgpGm0Y9YrKiSLbPln2Gims4qyhihihrnKnSfKi6Qe2dbZZoZdKO
	 HQ1AW5euUPjwffINzHf1Aj6snziMLzkbzkj7EEk464Zw+VUXUpDAiYgY6NPkj3CsO4
	 2vPdqYz/gdWyqYqmf+dWnlq6olBPyN9k+I7ZWvYnv8WO7+HPwjNOQpJmnZ9V9k+5Vh
	 c4e1jV40XlJbfMp8Qso7TEKKbuBr6XMNNzDSehM/31hh9Yt04G++00cSr+3OH2+7oL
	 7MmaLM6Ab79Iya89F7JqX4KxSF/Oxab1KRdn0kftZ3yf9cenXgBYDjUddHSBsI9UpZ
	 nw8IM3k0H0PCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD633C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016063369.15417.17581668988815353209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1262a587f1f60ad9fd63b56f638eaaa0f787a085f82c9cf145d6b07668b8952f
Date: Wed, 23 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790160633
