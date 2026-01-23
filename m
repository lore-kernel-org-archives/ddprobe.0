Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C428A330657
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769157833; cv=none; b=DqHljQ7pkA2EbQp3C4wB5VfA8tt/NfVqps8lWb0VKYEmQk05ItcKVs5EDa84Cw2Xa2pFdBHgFPSHxUxY4hTO0b8Aue28274ZW9V8wQBzlpU7wPeJ6QNrC/HFeDQuNGsZ+9qz2gcLQ0OF5Jo9XDqBZ40SIv3CNNUM5M6e2etiEWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769157833; c=relaxed/simple;
	bh=zIo43l3ZRvjwOFVqTj/j0U+UHZv3CVHX6N+wPpZFbyc=;
	h=To:Subject:From:Message-Id:Date; b=vBZCd4QfR7wsx2ewwDxZN/UG8FPf23AAnMKqSGvZgiChePL85SGpfwSepIRMN0SqGL6F0vmZBdAnBInndbI69Emd2xIJzMbEKph/+Kp7T12ZDOC/+zBicxozweqgpipU0ghBv2D7mApeDc9oro8f6G9Tfb9QQCB13+m6J6Uk/xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Zond++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Zond++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1991C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769157833;
	bh=zIo43l3ZRvjwOFVqTj/j0U+UHZv3CVHX6N+wPpZFbyc=;
	h=To:Subject:From:Date:From;
	b=r6Zond++3WPCYAyCFJzBVgUUtAVuTefU6ZbxWdteME2RjGuAfqwf7wV97aSPJ1u4R
	 MyJDCVajNgsxm6wDbQu82yevye/JeP5+mWiYvnRhHN2U7hgArqM5rjV+IDkq2QucTQ
	 BOpLH3lfMbQCD411m6x996czPj7726YMtHzf6EMnek1XDDOr8ogrPsrtcQypxRCye7
	 s+OZwpEwn0kpa32SXw9+YdKNPmdWzfa0dxYKUG4Oacf+llKqf4DXC1j7u7K70FfQmT
	 Xe9iT5PH6GEjeCBh7LQZOA+MhiV4OM3rRB9NiJRSlEn10PUfAISdmCYkcVY1UM8lW4
	 oAW+ZRbL4l0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8CD72352
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915783358.3338.5090931659034358483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11570cc43898cd1d503c71aab8f58ec4dde028bc5b7455f0ca42bda8f5a07de
Date: Fri, 23 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769157833
