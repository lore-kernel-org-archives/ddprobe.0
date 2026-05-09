Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B572DDCD
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778334454; cv=none; b=bxkzwuothsnMGnO8Ff73Vt29IWCNYBKv7RtV+kY/qhqDSKmBnMQKjExxSyJGevMAnQ0uHdABwaSfkixKw/niVFnR/ip/MBzw/m2PdUwA7bb4APJrt9Gk9imlqvZALV40yI5HLh0tHbbF09mzXC0MquhPk072GrmZCnkBbF4eaXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778334454; c=relaxed/simple;
	bh=HXu8+cLt5IuyqZZ6xVnwNYm49d/m+VZWaH2OVLykzLg=;
	h=To:Subject:From:Message-Id:Date; b=iSXEeDEsvDnUu0aqtRms/wm3Xsyo+YiTDIUsfgeuw4ljEpO+Zb8c5StLO0AtpmkhTqRKph+1eXiDingP9GSUruBg7yG35lkluQS/YH/DgP3v5jdIRHFVh/mlNK18wbT6Rx5PyHMDaQ4oh2HGB1WTUhGAYqftgJzBPBx0qROJ3hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imLwSfdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imLwSfdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 344AEC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778334454;
	bh=HXu8+cLt5IuyqZZ6xVnwNYm49d/m+VZWaH2OVLykzLg=;
	h=To:Subject:From:Date:From;
	b=imLwSfdWt9FW88hv5zuzfTK62IiHX4fVTCOraQZf+hPM++jELLU0/vfQAb7IPjQXH
	 Wzi0y/pKp+SLtTd/CNTon6feTMd0K9xtfp4iXPyJc76qPsh0PFbvl3FInub/3saieI
	 I0xkd/yMkK5r6SvXxFhU5xSD8dLVdSmof3vDE8eHybcdsOBKlw9QBp7EmLLgocSgUh
	 z98XdN3VbunTvYt6o9IXKkTX24tLiJaxZk7QcHBhJ6uWBCcMtgDCp0NX1PYtVe8Ly3
	 0vmX3e7CtyJ8NLNWIEuBLr0pV5eaK1YhyIuV3THDez4cYQ5XxFwfc4JmUeL0aqL0QA
	 ZmfRF3ufvcaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01C58CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833445385.31824.15240735899013610375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c0ceb105fee15afd28a50e736f8396096b5431a2d3be542f8d764f3c91309c
Date: Sat, 09 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778334453
