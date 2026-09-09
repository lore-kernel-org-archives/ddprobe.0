Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E0A199FB0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788984634; cv=none; b=uxxZIcSS5+UGORH8lP/mdWdP4pnuMo0Zp8o+RD5kHP8VrKtDZpsGhYJDBsBNJE3D7/iGfmcKvymaA2EC+DfwJOtR568IDsTn5QIbQIKKfMhyMf2xAZ9xwqLyvcykJyCkqhbJfRXQAxl9kRS0KaibPdJ3cXHGaF9OQPH9H1mEOYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788984634; c=relaxed/simple;
	bh=lGeP7Nm7+d98rpCCSb2gEBkRKhXr8t7oJ+fOi9+Qet0=;
	h=To:Subject:From:Message-Id:Date; b=gBFUAuaOGteeSEgvdwGjIVDVVeKnq5IVzuu2OIfKsunt6f+3pFgg4Sd5fMcCJHhzEWVdP/doxIPCyMuRdg+UkrphZN7nzd80tQBXlmG+RHrTd0+wPMvUgwIB87k9++97AhrmVLpD4deZx5olfGvGvf9n86bEXFWBSaL39AcReS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H96k5twK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H96k5twK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788984633;
	bh=lGeP7Nm7+d98rpCCSb2gEBkRKhXr8t7oJ+fOi9+Qet0=;
	h=To:Subject:From:Date:From;
	b=H96k5twKlfhIleirbreP5YCi4Tdjw6/DzojOA+uOTBkuuQy1Jy+os1BuOoe2lHikj
	 qq+ylUaBk18mDanTEVJUx/ZvauEKrkAobV+Hvl5qAFYRoCNQT5xb8GczNYgrbzLfSr
	 Nt8dqOfNIsZ+paB4vA4ysK54guCBJbHBhwYLTkJgZeJRtKjzxdIIE+igNrOTTFvkhq
	 QtoMn8uQ2kZk4YnVdDrCzYMuTe2CmHZrHGfSR6Ih3QIxW8Fa3iAT8iEt0/biKx+RI6
	 vyIMQpWhDwWBm+zg1aBbrAnsf31M08WYcmOyjSrjMPVVaal5zW6mVbnd4EJXTKipRp
	 fkiMHAZCHJLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC8AC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898463369.32313.9301004263418748467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5a21087de33f74da30071dd1042120d9e1cc39a07fb180bb924f6537befe7f
Date: Wed, 09 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788984633
