Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B4E22157B
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779508354; cv=none; b=bx7L1lZJHk2qRGgUt+X+mH0rRuDOE+cu24wCCU1mhpaH6rrZTLTYXw8EiaimdoKfgrmZfa5oy7sw74IdKOBAnjEZULV1BAhoH82bwVl2ngInBo9NcboDbTcCeckmkETIwzkvyrV/WNpckGhj8ndT/ZLEb2j4bMAxVYZNm9Agbxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779508354; c=relaxed/simple;
	bh=LbymdIAiA0XcbjRjcrK6YBTaexguc+KTTS4VfOsXUKc=;
	h=To:Subject:From:Message-Id:Date; b=VrnnbsRcYgW39InGf9ATCvtuwK8m31FQ1T7jqJL5tc8pP1wCwUq39podAnsAS/WVq+rmsZr7KtnilvP1Z2EQSsLDRaWYhiSVd4f+qkAGzqy2HkfPNjWSyD2mMUrjc0ZGPtCNzy/unlQ/OXlQnjatEDfzwp/fSQVz45bEGMEoKu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPmVBD2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPmVBD2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5489C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779508353;
	bh=LbymdIAiA0XcbjRjcrK6YBTaexguc+KTTS4VfOsXUKc=;
	h=To:Subject:From:Date:From;
	b=fPmVBD2pO0jWHq274Vxc1vAB8h128zOuCoqSn33tto9qzlVtqMMcMHAMqf/sHxI4+
	 fVUbRGJh2eGmap/X21MkoSnk5o+nen9NKDR6wkYFoe1SO/X9nofHiPXNSUUNyjB+4a
	 pzySvCMRGR0iFf+tHFGgTfgkqNGRxm2bsYCRg9SOL5Se4RwDtEwkcUA0e6DIShhkII
	 GJvEuYpsqplqvD+FcoHvAQbibcydSZ1NCwNeL2utcXYoJ+qQLhTKRRrhF4AzsncIqA
	 aaFb/Yo3xsHKAzMDCgAb+bbz2vUjkqQ5POEhHvHU9igV4TWNUIJEg1AX0XcXTSL2Ic
	 kzhAlm++4nsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC301CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950835368.1930.15630849840498549490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80696683ce9aa965500c741785bf74dee41a0877ddfb093d0ee927bbe5869ea0
Date: Sat, 23 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779508353
