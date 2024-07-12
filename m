Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89DC15ECE2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720795703; cv=none; b=iluVSJZ8quzAMqqxzHrTN/oHmI5fsDZxCVwDkql6RV1Zjrke4JTk4gZPneSWlqjmaaX8DFjYYtzd8zbhMqtX82CkuzYmEJXxv+Tbve8E2iLIrtZKXbsCY2kDeMCcVu3lg0muWunXc2eLCglginSw7PcIQpe9eIPHnLiQ6QxThBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720795703; c=relaxed/simple;
	bh=S9IkhuLkwfRW1tFkmeocWkjGm9RjU84SQ4aQrFfPo5o=;
	h=To:Subject:From:Message-Id:Date; b=pZQZy8QBcDLR70GVFOZLEXx1BlZYV43OLjcDLE6CrXu5lT/mP4FjmwOBZAaGMJwpKWv7Cs1EOYesaU3rscnl19pmBx3004iEDTTgWGv2np5KLWfkfrU9FeKz00RoOt68Jzdu8IU61aXk+ZYqKGl2Xkt33gCGjhiQCA1GNT8neew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6CiL73F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6CiL73F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F88AC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720795703;
	bh=S9IkhuLkwfRW1tFkmeocWkjGm9RjU84SQ4aQrFfPo5o=;
	h=To:Subject:From:Date:From;
	b=j6CiL73FdP6sLHP+Ec4/o9kgTmBsBjal14gSdb7nacfmgfi77fH3HouBblZr/s43E
	 AS0xeynJUH+pJRqS0tV7La5lLSWs4wdIak4FXsOWIJgfnMleYT3n/xmbIfywsVjLUc
	 ql1M9a1f+5VBQiHBLmZDduH1hdmhzUGxsUvyrECbW5sJW6FWts6jGmg/CEpIAjEJsq
	 0xgISyhXnfZrAPxTBROCtCUqDor9qmNnBfsOtWwfFIoon+oSF/QqguG98XA6pleiL9
	 1xD2YZLaTGzuuzFEtGf+IF2eAb+LQoQ+3ZKSV1Wydy+UqMerbIjrlPeq2jQaAwiBc2
	 owJNW8Kkwj+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F685C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 14:48:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079570304.10362.14000427438621918824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4898a96025ca34eccdfea313a4572f96a27a5855a7c208477c44c65c498999a0
Date: Fri, 12 Jul 2024 14:48:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720795703
