Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B1136195A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785915034; cv=none; b=q2Sxm+hWJhPSq3EcuPtwx2feF/oPK7aiRc3d87UgxvqnpFlZwTZA0asOIc8aJrT52rRb6+DrYsAvKFnbO4og1Towd7IYjPDRpud8KLyu/OAxRylsrdr397VR6heqj59yEcDyHbyz5UIXO30xkb2uZX5Iv3DB8wOke1G5ALIyzHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785915034; c=relaxed/simple;
	bh=QZv6wU/Tz5w6PbSQvn2o3xejMGkuV/cefD5gqF09Z3k=;
	h=To:Subject:From:Message-Id:Date; b=Fa05gR4WAmIHyMuUwed8XOn8V5c78YYOS54w31Hxp6DkpRhWbwxQnIJMfXSyjb0lWZZugyFD3Fu6ob3fiRIHkPa24TBmKbfJq2UngH0UoHjDzpSuB/amYrH/tK3fwDlCfTSZX0YbH/+TXeVaXaptx0H1TYDkIchSBlzh48L9lTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUBb++oG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUBb++oG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE53C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785915033;
	bh=QZv6wU/Tz5w6PbSQvn2o3xejMGkuV/cefD5gqF09Z3k=;
	h=To:Subject:From:Date:From;
	b=YUBb++oG1jPR6b/rsShQLB+fvb+dgU29p4FJiHrud6Mpw2BLNE5fbf8SSYbe+Glfu
	 m4WViCTkIr12+/mj9d5ctgFeh6KyeCvaEgeOT/Y2BUIF93gWaajUjvBJdMFftI6int
	 Cx62NUQl+oNpkeP2KuLWNaglVRK5IJAd027E/CNQLTR1vnujShIkhjKkXNo4991B+s
	 rwIOlW+gRjIbzgP/OWzWr6jvhzejhoV8smM3/6cOJl1ExvMZRmOcIkUVZhKCW8c/Cs
	 uTMiOleEBX2gYuQZrky5zLbcFppCZFmXpLDTMVj+L0rOs0R30RvrE5duBeBiSEwRm4
	 LYlnxWNvNK4EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4EDC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591503374.17786.397725525712882738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda7c67c627a211210d1d59ae3a2d36fb88ee90136cb869b5a8a9544326ac720
Date: Wed, 05 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785915033
