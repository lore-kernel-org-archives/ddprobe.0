Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01C51624DF
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779249635; cv=none; b=na00NvZNxtD5xEE3HsYAFVphFp5HqkB5aaW2HQX6NzOYXcuv+v9xgOi5qf0kTUsEiADv3oPoal0VgoEAc3hVpphfOYoRtNWeMJP/nhHv9Ml9sdff8CVNu+LX11VBBWhL4crlr5wCX4Pamo7L0pGr7EjVIZGyqxE3UoK/nIEvYA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779249635; c=relaxed/simple;
	bh=V98RcaboaZ2i/dKhViUESI/PGqiWyILRuy2CwT8uvu4=;
	h=To:Subject:From:Message-Id:Date; b=f07YqtkFSAFAopjyCooJDfOSMH8SIMXgu7f4o8OP5SHpv4SzDTg1zZ49YPwf4vHbIoERfMva8J5EWeF/4hs1dET+nN+g8xipKNuG5e1FY4JbjyCSLX3mssAAYCCGubYNeEoU9TEggUMX69gsc6atsb8sr3X0Yc0zi9XTO98KD+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXrdzd+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXrdzd+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E6FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779249633;
	bh=V98RcaboaZ2i/dKhViUESI/PGqiWyILRuy2CwT8uvu4=;
	h=To:Subject:From:Date:From;
	b=iXrdzd+/TaLHn4zGqVwFswj1dkWWpZHdFThVlC7GJpP3Cf1xEe2rXZcZAy2CjWgKL
	 dERaKxqN8Z4/5u/vGaNOwa6Pb1vkBWFKK4pMe20Z7DhDBP+LWRVJdXczrS+nVfUzp5
	 tBp9ERKF7+eTdfNy3y6+Z4RIekahYCE5Ov8NCGqqgDOErWqzQwe4PeBLZqxEEEPMD2
	 zcuydiUdXd4DZfajfPwZwrpPZAFpp6R4rvHYmIIjioDlTNbdyYPCMoe+oFg3ULZr/q
	 X8DQWOIRXii1o27USCpW4bhPP6sBYVtiDZay3Puqj1lFytbWKIVDj7yYr5qOA+YTiH
	 sj3yPsT0f6cHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA976CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924963368.10214.2910748115836915299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71634cba5ef3190df0cbcba253bff5b670fcb1ea354b9eacebc553ce5a3cdff
Date: Wed, 20 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779249633
