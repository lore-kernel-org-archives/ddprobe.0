Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D401DD9AD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179774; cv=none; b=u2p96+QBLbgDKKO5+uAaD9LxyiQrWsfW0c0QDwJSV0Ndcv6FMkxgxEvQiOy55Va0vWe3VQGZq5J7pUw571+Wly2bQHceKscCCSMGj2/EcleCnHIs6NFC5NZ5pYPdqOTJ7b3JbgHvSMFfFRWCSVykuDBkN/AvwIPF7hLJ8xJeD8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179774; c=relaxed/simple;
	bh=hV9GJ2ojrJ2v51cSwIxnr+ik3QWT3op69eYEdMwesZk=;
	h=To:Subject:From:Message-Id:Date; b=I4wA+PimVT3jEbJPf+XC34/Zlh6QS0pDdcTnlYUGrSVR+vaqcnY+/mLEITxklxD3TfkOWeFmyX70HtqGL/lLFtK2FtkiVb+A2/A+ZPZolJGjis+ldtUkIoIJ9iNDw+vboDH1L6IPS6ypBWYjfWb9g4dU3ApDP+M4ryj5Qx0xTAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEmniiKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEmniiKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A436FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765179773;
	bh=hV9GJ2ojrJ2v51cSwIxnr+ik3QWT3op69eYEdMwesZk=;
	h=To:Subject:From:Date:From;
	b=gEmniiKSLUeMPBG7MPUcL1cnmFx7jt5WTGgfsXbISue2z2kPfrFE1Mu4kAQOLp/+x
	 yUxIUkQvSn2ksW3PKGE2sf9vLuZFp77lYlYUtavfwgyo8r4q2JGWXhHaot75OmzrVx
	 PdYwyyI99LhJDN8BBnUuRRMIWqXwMBKsrstBQe1ZTVRl5lwACrZ7PYQHS1w2X5Br/V
	 oXMlzapSHewrq6DzbU/9v1tyboOvChQ1/lFVkZCZErpwqxmR4TrH8PkZ2vuUYHFm4f
	 CbfbOwM+QhvUOROp2R3b1Ks1+z4vlgbWABCgCBDJ3A3B8mvIISiPu1RXkkU9NZJX78
	 Q+qNA6AIsdC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90100D3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517977358.29597.14719734736951039144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d7ab657b4d855d727c9779025f23c0b53b60b2055e07c6ae7328658bb824b9
Date: Mon, 08 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765179773
