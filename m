Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D955D308F0A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778760633; cv=none; b=T3g7mRW1I/N6vEYG3xmRf2jhu1I8CbkT7+rHszhbfFMcTQIU0bwgyN2xoPDbFmwTH9oB9S1qubHLHd4KQ8/H/9B5jypJU5LlNbIodTuo2LkEJ/9WaXI5gcFTpGF3rbbDUJvWaoBpvgHazWNPXH2psasUigBsU2oqNZ4tcWPv9hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778760633; c=relaxed/simple;
	bh=PAM4HIxGut27/s9CLDmSL7iSBPXrlDtn8tj8pHBxxeU=;
	h=To:Subject:From:Message-Id:Date; b=uGiHlh2sYvht99CPax0IM/ECO+hnDEGadFTLut735p/21MNa4OokNCczWSyQnYqd7odFP62paQdIb95gngD78R7PS9rF65wiaPcMzClKZMAs5VS0Lv+RxR568iVhIhcKp+uWVy29XdgcjGDJSrVdaCE6kMz2vn6ByBXEVDmCe1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5dn5cXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5dn5cXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3B4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760633;
	bh=PAM4HIxGut27/s9CLDmSL7iSBPXrlDtn8tj8pHBxxeU=;
	h=To:Subject:From:Date:From;
	b=n5dn5cXFrWbAswuYp7SM1GkRzBUhdR49s1dbhnZzJC/+hkdmwwvAYgww30zD9SnEc
	 bSTvx5GPJvk4dzQER594uuJ/UtfnthgX1nYSPH9LLBMlfVrhdWRpt6JTVxPASmJOVa
	 Ev3l1NIDhSXvYl4Z/1XJtn0YGTTVYgJKNMYRXmmmmeunKJpmO5VOBru96Vl24ApJOW
	 zKWYdki0OU8U6NQV7gGI7luJd+H9cKPtfFOTS76D7JbOn8OOroDt1OMQUIFqmeUPer
	 ZUODjVs0vQDAboW0FSU/zm72BairS949Q9vWe27MG4E1FKicPU8hbG41V3Y7pNsJfw
	 XdB/12VTjpoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDC2CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876063369.6044.10243564260781671362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66a1760ee0de5b459d88f6b0a4a11549923980053d0f13b74c1b69c57cb013f
Date: Thu, 14 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778760633
