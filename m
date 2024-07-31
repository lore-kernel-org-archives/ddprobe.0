Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B609C2FD
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722392154; cv=none; b=B5Jwaxy6sd4ppLBWXuqYt45nHkKhetOsLR3FMNkj2HvzXJeAwE+MjieVC+othdBz44Ou+xVadyu8rFJnWr5PWmO842/0sdPx1G9k8DFqaE5Ow2sE9+NZsQJluYUt0LvWzQWu2BZkUVk5HG3o3xmSr1YSalHDSqcYp5mm9yDvEDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722392154; c=relaxed/simple;
	bh=eEiKuhiRollRG8BhBUcDq4a4rPGMLDIDb2FEnEnnTlE=;
	h=To:Subject:From:Message-Id:Date; b=lRbIEKf81AH1Vc4ds5tjdD9qFAKhZx78Qr9RIGJG3WeUydHkbUIdFVGr8Mamd56rslp6AwHJSWsAOKO/1Hvk4cO7C2DOcZo5V/0sVl59srL7KMf8a7z0fdPJePmnWwlGE8aQzXs70dKsfI10ngGbGrAFoxD/XpFUx0cm+GgroLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa3sGBUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa3sGBUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0F8C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722392153;
	bh=eEiKuhiRollRG8BhBUcDq4a4rPGMLDIDb2FEnEnnTlE=;
	h=To:Subject:From:Date:From;
	b=Sa3sGBUGEl7Jx0DHyAQUDBAdfjCunF2iyZHJOHG0K0hq1tLXum8wiSH07p+5Nlg4V
	 Eq/zzMP0rtE6uwr+J2Ai2AJgU3qONa39RaGadvUEGgPVBnviYyl1Yj486C/a1fWx0j
	 +Dr53LQ+YG++tKUXYM3Jwbvcclx814Xht8zYukgCUWlq72Lt6vPhK21STjz4p4nfYi
	 y5TFTY6UeoXvMY3IbMhi6A51khtnTAeukxmJzx95pZGb/GS3Mui44WeOtkqCYoBgzd
	 /jonTyiMHetR2cWaqew12t08XRzg8+wAuJu8zVSaeMbMxwj8HDMcy5ne5BXfi1D/eI
	 WhPzjslKfHF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A935C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239215362.5565.6611484236966430067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee80b4f3b65ff68dfdf6d2a2227d90bb8cd06943214baaeb08fdf69ebd794a8
Date: Wed, 31 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722392153
