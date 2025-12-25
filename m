Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27E19C54E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766631234; cv=none; b=EFLN64FDV38Ik7Ri2z8sPj4LHJSvrmJ1hHjUcnUirLAufFpJw17G2IFu8MBDTyodrC6tv0t0YUBSE5k5xPwdIBET1W4zqcl1kor/c9Pjq385WdXF3zOOZuBfpUksZEaImkPg0sTC9JLbhY7HPfuPxa6qAJTCqBmyj6tvQHZ5iBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766631234; c=relaxed/simple;
	bh=FHoPskg+e0ZOE0h5Z9SCnZIy6I1etLOiCSgNEvqIyZc=;
	h=To:Subject:From:Message-Id:Date; b=qdaxULxUNa6/uF2FIpsdqSBvQiAZRMQ43I+W1+GLBTxF1X55sxxItl2NREgSX4kdgsTQbknLpuG9G7qXKIALVH9V86bKL/vG81jw9RgE8DS+xibSOeuxDZUs2CSN/936GexZpfo+WbMSLpnjZK6KiQhv+UgAUTkyxMLW+lOxvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0P6iSCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0P6iSCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6747C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766631233;
	bh=FHoPskg+e0ZOE0h5Z9SCnZIy6I1etLOiCSgNEvqIyZc=;
	h=To:Subject:From:Date:From;
	b=F0P6iSCciiWk/WRJwZoIUtHpEpRLGlx9K11tmbpxKLRvcPsBVlGQOlsfifz5kVjw2
	 FQGrfg+lCGE1iUnz5ETx5hERcIeZqGcj82fJAsu8xYLTRvoU06v4AWPEHRuJDsfJ4X
	 ci54oT3SWNtcd2Ua1vuDdAOYcympzqdp6sgiLMLuJ4J7JL1N/VGECGRdlDqcR+ksjr
	 zHy1nl14buT0RAXii+nCb/UOdeFLgI2kF/kMB8gUe2V1twYjCmmW+PtbCJBG2F77Tc
	 MBsRC/zE6+rn+PuPuACiFWHWptUWu7N8NMlI+njawdAKSV+FsMmrOp2f1l3WUn+jhw
	 mtyMuNX4Q226g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B5E784BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663123357.8495.2101611024343752209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8c52ee4f621368763c78d606fdac1bfed2616c0c85b483922541952ab46391
Date: Thu, 25 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766631233
