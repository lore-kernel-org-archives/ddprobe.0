Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEB9DF49
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760402394; cv=none; b=nzsi9gdP/dk35FVjn/V109TwHvlIPAUCRxTIroBBFqvfpUQrDl+5OtqVUzXsazhr/c4uM/AJZSaW6SrpjVblJ7jDK1Y023KtV4HmeMiKF974iQ8epFtNVf8tjduELo/RatweCKbYit3XyulLZ1vOTmJGYjRDPGsQfQVu4kWSVDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760402394; c=relaxed/simple;
	bh=6cUzZVRz/grJFLBXzU86xJOlpl40FSbvcj198zivm68=;
	h=To:Subject:From:Message-Id:Date; b=UgM8Uw96VQf1NrJ1lzM7nMnyUVGkTFhU4ofz1fgv3ueFOuQcFc4eJsT12TJ2sIXycL2936wOKAoXsLceeDqOdExBrOA58z+Fiq7Z1XKzUuad30qAKfA8O8S4XJZLMEsjCpuRB3wB9HzFCSiREeqWu4l4JYa628nfp0n3vvYHHO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPFt2jAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPFt2jAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D12C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760402393;
	bh=6cUzZVRz/grJFLBXzU86xJOlpl40FSbvcj198zivm68=;
	h=To:Subject:From:Date:From;
	b=rPFt2jAoAINihFVAmjcV/8s9WDTG2GttmySa/3TTI9tIc+WjVUrKXirgE8FKCYZhz
	 hKpFBQ6mMI0lZcpiWeAzXJClXveybDlsyZnmKxHtBqo0KYlyItIuXjXkt4xT8uTB2X
	 tBsGxpQN3zljSkvxj1y4DKHEcAZ0qUmGlq1KY8o1lMl1Iibp1VPBvu9tAgG4GR1PSv
	 IXx1R9/Bn/+Vet9negYaMDjh3KuENl7uB7PdmlM7Hodgs3/zHwbLvNezj5dK1tKRrV
	 4kDfmXRrQZtMKzha6jKvCtdDwJ0hTGD/jlWv7Jx1rOh2W4q79iue2p6PitVlkraGqk
	 TeMFGccgLI4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955F3CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040239357.12099.14132254459793363069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ac983de110d81500e2c03a3a4eb477948713c2c74f73e2ead3ccbd21e9ac17
Date: Tue, 14 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760402393
