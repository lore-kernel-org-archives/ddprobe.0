Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F90C3B2BA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776053254; cv=none; b=aKk29DKZoSoE3xxhnEdTm6F33dADmUbT7DsU3JYSNu4H9DpzaRyz2m8Qcq1otsjD8Tj2zvYZW1NgzjAVEnuXpynGl7N3efpuiJpKIGRfgrkRxhIoU6VSNEV69bPgas/ytBPjSU3glO4Dx72lOtm6qRYm8xxHuXYrZnoPlFrRDaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776053254; c=relaxed/simple;
	bh=VCmB135zXCWQR8KUYF2fprgi846j85RAzC2uiLicxCM=;
	h=To:Subject:From:Message-Id:Date; b=FKrq5A0Cqo7RhP55wcZb4XBjynhpFpWNmqTleZoLIrAMkQfqNrZnux64P6P/aEGnlm+xd/762BDtO6yMp1qTUh4Rtf+VVvh72YDttblyjhw0ATYEhGMWjId8cKcy4S0Wu8g3KTCvXDRD5c9TT5/2HEFCM0uG/JfE0UfaXU8qpWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH1/UOeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH1/UOeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0337C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776053253;
	bh=VCmB135zXCWQR8KUYF2fprgi846j85RAzC2uiLicxCM=;
	h=To:Subject:From:Date:From;
	b=eH1/UOeB4mxBMmd7/cHUXnH5v2ywO1RbIET6orzvr3rkPZwhmDBdRa6VRsq9/IUoP
	 e3ZiDwLfVpu0yhl5WqI+Wpc+cPERUtJFpw3MmoRAixGpBkL3feuWq9WmiVDyYc/6Jq
	 iiOyNaQDkVVbzO2IFpc1F5geaAMGVCUy1Sa0rQQ2rbiAAZvUFATfpND7HPCvdfsQtg
	 7yh6+pBeebTZIi0gEhDyzhGSIUscVz9Wtjhu+Ts00KMwXlZQE8Fym9LK9KRu9BUn6e
	 fHH4h8T4zAgiZna5gkgxHKKOz0vrtDKfJys1iqRFxTCBvZpMqX1JBAymcBk2hoYza2
	 bAIF+Dt0JGKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFEBE93812
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605325370.5493.10901790549421871204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2a0accf6bb3998f7b28500188084925813cb94cb1754edd17df705f03b0551
Date: Mon, 13 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776053253
