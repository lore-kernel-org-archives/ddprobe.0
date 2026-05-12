Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200E8357D19
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778620834; cv=none; b=Ed6gJdACUL+OmZ/Ovyyf2mFlTFMsQ5UD0SyitHFj38TNnt5pEScTLAbRyzuLHL1VsJmScjWYFseqTEKpCOqfZin51Aei/oTPaCo+wxe9HN+5605raQFN4pm9bmBEkr2AiLVH+J40V0PY6rLaP9nOB8cvJicuKN1/OwFMKdVzlTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778620834; c=relaxed/simple;
	bh=nJO6TDTr1d7bXYNa6DEx+FflJRgHSjYmOl+u2A7szzs=;
	h=To:Subject:From:Message-Id:Date; b=VZV+qYiadQb0jfJamWxoc38wFPiVvpX/z+I3xfCpIyj9vQAwTZ8IF2RuSr9zSYi5GlicMH7ewU9l4LoOw4syezhu6awh42j4tYSeoQ9vEVZY1tio60VqzKSU2bnCAGXGZROpWZywlyl1OBnTtH+h5bbgoEUuHbuA964j7uXgLqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY+/rdqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY+/rdqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEBEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778620833;
	bh=nJO6TDTr1d7bXYNa6DEx+FflJRgHSjYmOl+u2A7szzs=;
	h=To:Subject:From:Date:From;
	b=cY+/rdqrkl3Mo7HTcabJ9BOBdLv87rNGfdBPI8WfgXZ2QPYpWne1siNN5FRxdS+2Q
	 obyoKOkgIRYT7nCgjLOu5kw8jnpPoGuE1jM70vTe4l2zgTandG6tAqZmjfvDpBJkBz
	 MDQkv6ittLrkosLpW5Zz5VPGbmNFADCywCHs09CL8nTmtPaSBGR9QX+GfysOLFFFHK
	 ADirawB6OxyzrKw4RNtQ5/JDaaNShZ8TWhZ0e1qgN82/uq1YVbcxH9uTUm67Zxt/8p
	 WJqJ3IVShW+wXuzRZ8j46YuZ9HmWOCrPEFRog0bGEcImN4EA+1cRhAtOFxF1vT731f
	 7k6nehD6+Zyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA2ACD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862083369.1613.6528156531530263383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedf3f5de59852c8a7323dfb4ea52030ed1814865aa079bc0a2a5401a6db8fbd
Date: Tue, 12 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778620833
