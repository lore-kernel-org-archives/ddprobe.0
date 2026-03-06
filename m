Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179E345CA2
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789694; cv=none; b=T0vIh4SPQodzaTeTAO37+ilMrTm6wKGunddhS07hGi9jaoCBT/Xdesr817yZYtnUTFDiWKl0iafVvFd+FNYfObd7bmgQLnl+yiZllQ0PRIqRGUCOFMH9l9hgAdt2FBNPWpT2avWk12na7zuUCbfXfO0+JXxyrZmAWVNTJPPGJns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789694; c=relaxed/simple;
	bh=bXdoBQH1dwLgdtY5RFljizDHsOYQ16fU7/N84a8d7bg=;
	h=To:Subject:From:Message-Id:Date; b=FqwV9sTF4PavBWgfFq6qBTjZwykP91qK7U6ceqTzhMih/9GMz369N5Ne6qxD4YvBTe1FvvhWWYUmdt2PFN3LhaCs/QojjKiB2ihkGbd7C2CCvCtZTN8JZClZy4wRIc20gnC28HbEnehXi5+bF29317qtaz3OToFUpdDaymCDMbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCmzDkgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCmzDkgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41C1C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772789693;
	bh=bXdoBQH1dwLgdtY5RFljizDHsOYQ16fU7/N84a8d7bg=;
	h=To:Subject:From:Date:From;
	b=eCmzDkgHh+n850pMcAK0ueUK6j5wlUhAomucrUkuuRRdC1oSuPHaW86KAznGj92ng
	 dXP54iW5Ah8EL4kNFVW0EnPxok4I8BWnVeXvaHriDz5OKnWf1RK+E4dByValIJ/bGQ
	 ZLSMlTgCrC08XLjulExPYJH83UC1MsR+41TZC7oybkwuN2vbCf7ozBs3p4Cd+36Qvh
	 lIFz5WUfyYmxnsMr9rSqdOqQJvt43jZ7p3kkngmVGYFWnZ8ahUTIzRvyPY/Q0v9DP3
	 e3wjR3u1eYUGRXWArlU+EcTuoN91vl4tPdabGavN/PRa6kynyn7G/NPZo8Br7BRfmH
	 7uU7ASafNIMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC8F01819
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278969363.8028.15960059113704442844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f767f0690bf3cc98bc494749fac6375417009378b6de0b774dfb68c77fab09
Date: Fri, 06 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772789693
