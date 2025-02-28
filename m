Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1983E27700D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740769734; cv=none; b=myvw/4K8z/wnchxdEnI1VxFtpFDOccsKCWx2wT9B9ytr2z0Yut8ibUvswslLTusfwZet66x7EEXbDuNkM+0er/3iqLgTe+lpe1r6ju2wh/aoPaQ2a3hKskn6/AfTC/p7SVc4tvJKulA2WQy7mphf4UH39tsCC39700vrM99Lhfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740769734; c=relaxed/simple;
	bh=lbwea7Bv9QmfdYlksl6hk6xMNZlOvfl3gmvzuEALzWU=;
	h=To:Subject:From:Message-Id:Date; b=B4Xm+2M/lHa+5FdPSEo952E/wJMnezfSt7aZl9Q3hDENr98cMY4NP3uB6YqLGUfnevB6/c0atPizIrZzTbPRYMTa2GRUxg7ls+hkrzo4tFl5uq6qHNgGhpjVStBih3XS5evaYhKJwDZ7H4VUugdl4crdQqOoU1SeKUnln10jVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euWRhChp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euWRhChp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740769733;
	bh=lbwea7Bv9QmfdYlksl6hk6xMNZlOvfl3gmvzuEALzWU=;
	h=To:Subject:From:Date:From;
	b=euWRhChpIg+hnmWXbq8bf6zzP1La4S8GrZzLdQU13nsQ+/O4WDfZ23qMzJ4e/6/F7
	 xIvqNuJFHNdpFQ28a7Tp2Pazr8V/6bB6NJYi02u4CNrymsTp9i+jyCvUvyZK3LGB8M
	 qZicDxQY9X4WvSs3XvYqWIDBekNdO96YPgCi1QdcjMKHEZnpYj+8PhZjrh1R2BBB92
	 5SwgWEPJZSb2lQ7vfhD8ykLAY3vnA+7N2hetW4KXJ2mNOWty6aMhDOPazSVnCkI2Dk
	 NGEti2HWO0s43iuFrGuWWhQp/zx3AWk8wZq0ptIDl3jO+os1aCbMEnYUaRWGiswcto
	 gILQ3Dn4KFYaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D32C282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076973360.31819.16784928647592098250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d3eb94be8de908fbdc6383bf92103470efbeeea89a3d4e462800387893d79e
Date: Fri, 28 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740769733
