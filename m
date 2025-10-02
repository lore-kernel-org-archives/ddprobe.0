Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2482E46B5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759369794; cv=none; b=sZYo/zDa2Ny9q0914guqVlZz2rrjUPEiJWwH95MnkLxkfjZ/Ug1B1ecUblJhyAaz7KzqsU9DzE78KjfIYjE46LHb+rbrC65s/0FkDhm0tGEb+ngIDGv3FqWcNKjIs9FJy9Wf0dPzogmI7Ge08aWbG9BArGm8Ow1PPX9yYb23gZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759369794; c=relaxed/simple;
	bh=a/I8ONpRevMe+emql12sWDbFLdbCz853fc5aa8TMVsE=;
	h=To:Subject:From:Message-Id:Date; b=EY5e9RqkAd0AuHHl6TdkvYiGsUNL91+8kfmWIfdZbuhrKPYmDYNsqfVw2QyRyOvrV+ilxVAgfQOJap2n+nCnha3YeR/pOXgnnRXnx+IZsyyyjcAJykjp874CjKSJiQmeCzXEseLB3SOB+sOKHy32x2JcR0AVt0/V8UtOfhNBo/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J35DLZK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J35DLZK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759369793;
	bh=a/I8ONpRevMe+emql12sWDbFLdbCz853fc5aa8TMVsE=;
	h=To:Subject:From:Date:From;
	b=J35DLZK4f4KpLM5swy5+gBO8c2dhSMJX15vaHyn4am/+iX/X6RUH2rla3kxxAhcy0
	 44f+EvbGyOOS1PJZ+Xkdub9C5J0rnw5N53CovzCNl/244rC5HiBJKLG/PHhp7LHraQ
	 lht8BoSm03/jXxC+7/ejU/rx+ivOx4T8R6CCa48iLpvJGmYgCj2C6bEBys4BTLk8i0
	 Yqky0J/s28FQFzxlb6EAUqCJekQc5FBzBhuIlLq4TaiZAunuxpthq9fleArkJ+Sjp5
	 8nAg6CLMwEiBoHCpbRAlnmau830CR6Fe/FbXi/QybmfYtNqDf9mrSB3FIcqQZDzK0P
	 4FZWex7h/iU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEDCAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936979357.8912.10575576676955578523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6c39bd6da47070ffcf8a5797eee61d9f9c0aabb1a0fdc41cc9671ee3dd9931
Date: Thu, 02 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759369793
