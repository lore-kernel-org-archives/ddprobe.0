Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E8E1F4CBB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765010574; cv=none; b=rLVGrezm/DxFYtJxcgLIsTa3WK0VvsCAX1+vyTgFbyRfWghJBpvcnHtmwNgOmyiQ/ogxc/VVYtAcsZd9l0QtRmpimnnBM54yURmyC7ndTKEfLKSiFrMwZ5DuMLPOTKY7267zHn3lyNZ4X5+Q5wIQa1kbIkAGpZklvNtdU91ftOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765010574; c=relaxed/simple;
	bh=wbjO7YBKhw2B5S0PdZ4BWEclWd2cS/14X/oHbdbwWp4=;
	h=To:Subject:From:Message-Id:Date; b=tU68rx9zmuv1/vdh6PzXT1pXu5T+/Vs9o3hKBdmpCGc4MgoC41os8rVIRU3KhyWk5SpAVrqjVtBZu/Keb+TXCXpsEPOKdfcVa5b3m3ZctRy1WPpf3rqBEMdcyfBAQvmg2My46KFv7FG7s61HVVvfJJr375gzKYNCkdYIOeWqzm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzbRp3ZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzbRp3ZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1244C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765010573;
	bh=wbjO7YBKhw2B5S0PdZ4BWEclWd2cS/14X/oHbdbwWp4=;
	h=To:Subject:From:Date:From;
	b=dzbRp3ZBYF1ti89n5l6qWkv/E4+BICriwiR+7DYU13MXccnvt/vxMNHj6dk8xSvWr
	 lf1EB0+nKjCJ0Di2JKMiU6ikVQCuGj+Vq7lEHuQ0jC790p40KZ5OboEh7UVZ2sQiSQ
	 eNPBoXFZ1W6UnpcRTlX7kUmLe6geB+5bDUz6WuR1BzIjezJb13Xa+ywuvKk3e22Hwz
	 ++sgWk58tqb2iF6G1yF9svOebwwFgFPicyH6BQLLDlgbNih+y/LLOB7s3TPDOGK+Xf
	 5CDozAl2qugB74VBk02J7QgvcaYtgI5XSPj9WMuSns8aWeffO6qZo1U7Y7TSmk+NJ4
	 h+38bNUa4xsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125AD3ABFC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501057358.32496.10209686316188842230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e84ed97e382ed4bd21242ffa26b7f9b39f0c0ddcb50440d99e091c62f546f09
Date: Sat, 06 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765010573
