Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B06A19AD86
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744453195; cv=none; b=qnsa8dedw46wJ/xsnijvpr9QuOAHH9etIcpDDXFNs72wOhPmfzgmbL6EWQcAMuSHGL/L68vMXkx/0lrq3/p9Cx12VVaA1eNDe+ctWhJeKrZ1scOIwl/BqNCFaJubab12SGV1lwDL8QvA6oN5utBt0mHbgr8PAH3HRzZsyhq+Pp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744453195; c=relaxed/simple;
	bh=9GldR8YAQdgPVOL3TCen1Jc/dsELNE1BIFAXv8Q73is=;
	h=To:Subject:From:Message-Id:Date; b=GpaFPITBOHbQSLrpRwz551+hQ+uMVbrQt2JMrxDSAeCZtJCQ3ye3XMgJusiZbE5vwZUpm6FKJchG5Qisx4gDJ+GzHgZnCXvtbTPqkeQxYNrGldo630kdyg9bRTPu+cdkJ/YNxYkyYGXy10KueuJN/FMoEgbuF8T2/WxYJOftC80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXCuekJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXCuekJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0764C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744453193;
	bh=9GldR8YAQdgPVOL3TCen1Jc/dsELNE1BIFAXv8Q73is=;
	h=To:Subject:From:Date:From;
	b=tXCuekJIoW2cxuHIBJVfHSattTX/4jk+LYjmL+2eFPMdj5ZKP7c6Gqlkr6UB7E/MR
	 RfIkd5TF+H0MpvPierqIS8XibTq1aL0XikuyZs5suKPha5oGllkqS0OFTdioR46lDq
	 9UXbJP4s7UQSq0En1RB1DEHD1bxAuACHs5d7E5kTXkvHf5EPsTCDL+ZiWib6E0XXbA
	 KCdcOCSgRsmpXgt8YeSOYEJ41pxmMIt/mq5hQYDwQ3KXQ6J111cpGEkRQmdEQzyrkW
	 8bu9xweSPu4KGTWy2Yrt/x4oSXZ8QYUuSze8Iu3y3acu6cha0BP4cbvQBUc7VQ8+nM
	 Pjz5ygwgSFNuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B65C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445319358.29328.6472379931919078715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab9e66ad8538780f2f3427769ccd0d872393753a3bb412d9663ccc430d8c42a
Date: Sat, 12 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744453193
