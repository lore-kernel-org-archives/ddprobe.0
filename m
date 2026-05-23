Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EE1B87C9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779568354; cv=none; b=CoAbrr+YFPeg3MRcmOTBx0Ayx7up/KVsZq/6e7LW4SEZizGZrwEMVF+eB5/9XLgXM0uF/RFd2aAlTjGlX4lht7+FMNfnq6sgwNygm5ZEPFN+eL6/YuwlhgX0/vsTBfUClvtityngjQhgKilMof/ESXSKanm7tlqJSnXnnxSAgPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779568354; c=relaxed/simple;
	bh=idFPalgL8LrhZYU6jvgEbbdgRkXQ6nSVyJ6K8C/6Wb8=;
	h=To:Subject:From:Message-Id:Date; b=KK2B57cDKNcvz4tl/2ZSPiJUPHfbQ9Ehc2VIwD3JeMHTl1gzYZqZUeb2hq5tTiDmtj7pg9xZ0ExSFpYVd4TTeodB0LA3SWbiWyywIoKPAJiQTHHU/fSJuUpaLvw3OwZ6mPH7puHuoypQFFI+DwoSWwvcpMuW3nPOt/1PYiN157o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s91TjqOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s91TjqOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DA7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779568353;
	bh=idFPalgL8LrhZYU6jvgEbbdgRkXQ6nSVyJ6K8C/6Wb8=;
	h=To:Subject:From:Date:From;
	b=s91TjqOKg6bYUStaEIROc2Ew242cSIu9LDiP4JesmryG+YNhZ7kCWss6kTiuP4o+M
	 Ho2UjBRIjQ655OkTQA8Y+nqJDJoh8Gn5thhtQlKBqT8AKl87cbOz+Kr4dR7mJBme3/
	 0N7OShMiIuL/sdxz8DKYtD67Nn3L5lNoZ5MFERyJPUpDHocIkegnBFpCwqHbdvzIls
	 AdFfwKW1LtYw5pB1aCOcm95/inoQMJFktmOLYTfkANpr+eyAOnWFHO1kLAzOGTGtzr
	 eq9sQS2uCdDbnacUDVwY62w/yvKh5FeK005c9mx5+y4R3yQKZHBMpBT6AlzmlgOGhl
	 NudtbqhkFvPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7B0CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956835368.24755.7683201079822767059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b689b104353cc76af31a61c4796a603dab0566ffe073831c7888aeb3da8378a
Date: Sat, 23 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779568353
