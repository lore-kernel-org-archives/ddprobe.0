Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423EF33D4E1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785005434; cv=none; b=Br0GIZjjMhsIlhoW4IBO3XVCmTcVpNnCR8snXNZi8TM8JNgETVeYNdyVZfi/NvsRFcvOEWr6+9V7/GvGttTdAQbuouN4pjvZ3q58sJ48HC4AkX5k78n37qURHsGyCUU3vHAvKiRLVda8ch/7E0AzMirCbYek7G4pmEc9PsRGNLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785005434; c=relaxed/simple;
	bh=FHejInUCydHlqG44dTiq3ZCM3yKsCABAG3683igrsRQ=;
	h=To:Subject:From:Message-Id:Date; b=JkFpB0pRIFIEIPQoFok0Qa/CZpjsJzMifUY8O+bNPIll21hBBNSGpXUuD8bcoPyDJEhFaP5bB/81SYSUljZvscj7FzYEaYTOHqlr52s1X7G+sTY8k6Ry0CxI9tA8S2cOGqQmI6b0adqEs/+R0Z5Nc52j7e9pobIBBs8kLA++hBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZi4FJFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZi4FJFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E47C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785005433;
	bh=FHejInUCydHlqG44dTiq3ZCM3yKsCABAG3683igrsRQ=;
	h=To:Subject:From:Date:From;
	b=LZi4FJFdUqUk4oPPkXyy5rWjfXAY878ccrSTEA0n6Ih5SzAPIi+aK8vV53jg+f4XJ
	 fhoJXf0ZGwrmEwHAsIOIkK/grA4SbwTGwaeefeFu+yhhWPncGTx3unDvFlAjG+PpLD
	 zzj5Lj2V0YJpsAibsZu85hcBA4CT73rn6JQMGwOXCn3GRuU3Hl0CjWskpi7Ga+dH3e
	 BuJ/OoXE9FHd52GpIvrfrZcd640HPgx1q9CTmSayKdKvX+cBQdQf+tQ8Fek4L/Y4Jb
	 FfbdfOTSZHH4nSJEFgpn52rtzg+zi3LTjgLNupWI0yfuBMA0va3tpNf3hi8LegHjwn
	 6JEW1dpltBdiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B35C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500543368.27863.6989319864079592983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6659387de18fc2235e6f020e7578a06d6e9b4b13bb44f7274859d12988e2f5
Date: Sat, 25 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785005433
