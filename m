Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFBC314D06
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769870033; cv=none; b=oaW/mVJZwzViAthVDfFuuIqXYbmIWZAHsPeq2Wkr9rzaGT+OU3LcMXtG9pN5nAgcO0ip2ITc2Uel6n2N6bfT3SuPgXFklFHP4P6VnC+RUks4xyqYM5qAX6gMhzgapX1zVvTGt2limPYCRiBC7FYlAtOOdzq+hoS/LTyggQRvsaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769870033; c=relaxed/simple;
	bh=zJ+mbxvSmQQVSPgXpGamLiJl5/TWmXRi9YCBSWoU1LU=;
	h=To:Subject:From:Message-Id:Date; b=m766i9XqEpuW1tAkwohfrnQhIqRp5aXGl+RTkHzl4cuK+SN/bKAVMeLWjWX1yEHEyhBU8kj2Mm3UgycB/hgGvktyFROyUQrjhzsfZdwfpPZpBbTorGSpEp37tFp9g1Ngxa2k1AVHbkfHfXOM5RFyIcmT+z/4GIiBlPagyLlSL5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxZWUuP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxZWUuP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A463DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769870033;
	bh=zJ+mbxvSmQQVSPgXpGamLiJl5/TWmXRi9YCBSWoU1LU=;
	h=To:Subject:From:Date:From;
	b=jxZWUuP+8iKdkjzEY2RCbeDTqg+ylK9jAKiTS6TMUGle3UljwHg371PL1rwF7pAAc
	 0qjxiUKCVvQFXNNoO/30NksYGnaR1syljAaD7/klQZhrBIX/RrfUHXtPVXH0orIc0e
	 +ch6nUCugRfS0zj/VWYAgLkzNd+RidwNH+DIEk+KTsN/FRrQuKM2DNrOfVrH0nMU8v
	 OVlFL5MZD9EoRm2cQpA9wXlfSFEHRnDlwxFGSHn4uLh1H/yBmEe0NgdBoOlRh41syz
	 43yjcQ4CYy8nKwVrIkLWxuxOzhZB86Sp7inUZXyS0DIppcotAUQvDqZskKIuLdcxiU
	 AkgGqP7B+LuqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F75D79770
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987003357.9871.3515204172579206940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e85eab9a21d4f23e07d3f4f3d464aba3f122fb804ce4d55d0c4e66f332d18e4
Date: Sat, 31 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769870033
