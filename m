Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1668D37646A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776703654; cv=none; b=RU4xHaICMEvHqqum/8ryjFlZ/yhnIAN7xWr1hAnHc0UNo8+Qn6SBvKoeY6C/UAIRl0I6gONSKeP05qG/ulxxNKKdzaDvSXLxKOWJTLBosZm+YLPtQnRyaW8jxTUuHFLcKZsFTTmwZ8e/jg+gcjOSUQIZDCxn2tAfRrE02ANs/rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776703654; c=relaxed/simple;
	bh=tWXqz3jDJJWB7njslf3tJVDBXUlZRJEt2ydVdmoIGxw=;
	h=To:Subject:From:Message-Id:Date; b=UBw4JI2RuEvZFtVEiBlfUU0/FSUfjnTdEwgmcY/fXDxmGVhe5hApuQBAhiSbI6+lQX/LamUlyPlAN9RERu5uJOhJ6kdyUMjp8KrtRY3YL0GnQ+yrTT/8SIDe5+tln3zltDTONv2sEB6fAsGmztOHxFG7Rg4O0wFZz+8tK8N0crU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq9dcf5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq9dcf5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1A5C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776703653;
	bh=tWXqz3jDJJWB7njslf3tJVDBXUlZRJEt2ydVdmoIGxw=;
	h=To:Subject:From:Date:From;
	b=Oq9dcf5kEbf/OxPDrWyOWMF92FyDe1FMHpYMg120g1YqQxFPZRGM8eQJBFmo3/QpG
	 QS/VjjTxYdmVpvtZuMCpm0m2pfmMjCem0RTGJtDr7/AaarRE0tiyQrjNvt3JohWnZr
	 o+/jV6dubUDMYxaRBO5w4/ZqiRrdmWRvMLs6IU0McpfzmKIw1tLJb6mk8qGzW0q9Ua
	 lEONY8Cr7MKMhYvVHtKIHx+jBC8JwKYQ1IjTxR7K7rJ7HbxIupNjeSP7p6gdU1BJEb
	 8C5QeXZx/uQL+7saPa5miP5uPiS/0s0z2Vc4hk4BOz4AtzfVD/IRUVSG82Jdyfhhv5
	 2iGQs/zVRmDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39EF36C5C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670365368.22300.11026713634117634733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fff11734262ece8eff0300dd1651c42e9d924a7217fc3ff9d3ba67abaeb40aa
Date: Mon, 20 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776703653
