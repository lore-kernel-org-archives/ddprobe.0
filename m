Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EED280A51
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751975994; cv=none; b=ZCPmlzl/JWO/RAyL0zdD0LyrJR9pFT5vM/Kpn8Rncc0TcQZYZn2FlawxUaT1P5Zt3g9Oml8oAFJlQK97q6cMTEMzoniVg1vQeWamvrWdt08DaUFuGoZhCkA2bTHOBQ2MyJsiZW95Nb3VsJYYjo5WmXQqR2yORqNVsG1lnHnXI2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751975994; c=relaxed/simple;
	bh=xVFv0tfbdw7cbLtQDUbyOzamfEMuVF1Y+r77RRyRRd8=;
	h=To:Subject:From:Message-Id:Date; b=G6vFp7vDcy/GuqOTt3PrSHU9FS/JyklgouqTAPWhGHvRWNkNtws9NBnCMzdKgZE5u/XVsTMlTDciF8tcwB91F+rtyNjxJI/0xxMohdN/Zf8F5VfcWEkGc1oBc/bpXm/7o95baJOUHg/yBvZHsujYwwwh67KaZL5Qd868lQeX8K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mds3ndSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mds3ndSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A736DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751975993;
	bh=xVFv0tfbdw7cbLtQDUbyOzamfEMuVF1Y+r77RRyRRd8=;
	h=To:Subject:From:Date:From;
	b=Mds3ndSVafBCwFZ22GnK6KCTMZxKTbHA7pTpNHnycVrvV14l574dp4C8N7ATc1mx4
	 YerdD6iD6LdS87GZJ0irNvx9yeXCB4NKhY9f9y3QcQCmffjw+JCMz54UC5YNYYux+V
	 dwn4nEDtfFm/NJzgriBtJoU5hoTfT/spV2qpi0k/DTzdI6ymrWosuoCqIfrIfl4KGd
	 GhjBW6AaUbB+SInQe5Piv6jxPQh0ey3F3sDWTjbOyYJj6dM00ELlunZQqY+OTtR9NO
	 z94pnupV1zj8nYytEBClatm/CqSa8qmwEhS7gfopd2k9hieTumuM7a2keyo59jhApo
	 hIsB5+RHVJpVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92504C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197599357.13292.6069894501637512270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a286c39bd18d4ca5ee7f5f2752c586dc63ebcd2b4e63a51b68f6c4182acd1a59
Date: Tue, 08 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751975993
