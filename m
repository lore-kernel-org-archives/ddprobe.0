Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D567622538F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784693314; cv=none; b=mGraQe2oqjJKrv0NKhp3n/jBRFhxL0XXGtZSyzps7hBdJv+h9+t49SHilX7mTd/rrk+9tmcvE0ezoHlf3LOYM4tIxj/YH1jYYtI2uJ+lAGUmmQPJucxTJVS3hM2tmrA9QsOxu29ebMdtIH3hdAeoiyGXO2HnAdrofHico3XT5W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784693314; c=relaxed/simple;
	bh=zlb+O9eHPY3djNgIlvR8wyRdWIKdomsV+TuumFInc98=;
	h=To:Subject:From:Message-Id:Date; b=jEAoFTS+rkXoh+toCXMtp80eEWdCp29cbxEcZ0OQ8X1aK3Ci9y1Q5T/Z6zNm0VO49jGjq3jglIyWoOYJCx/fTFz8Edsez2NGiYgxpwU6gW6PXdGItdc+n/nGdJo6/2kaRXrowVUvA9EfCfxFFqS908j1cD0aMdvci/X/XrT1KVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSTX9Wnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSTX9Wnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 646F5C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784693314;
	bh=zlb+O9eHPY3djNgIlvR8wyRdWIKdomsV+TuumFInc98=;
	h=To:Subject:From:Date:From;
	b=VSTX9WntxT6K8hLeQ//V+FShGOubOKcP9HfYvLo0ADNJsDqIK0dmAlIZGwA6yedBQ
	 jQbOqH6NrYJTlyUBCGkfMPncedy7dVNZhavoN8gL2y+b2OjQpus+lZewFaMsEreVIx
	 I8TVEhlSjzyIbtVmpGows+qmGM3NFpWQnqEO2+6IFB0UfW5PIGTqFTosnUpFgeQmgC
	 q8geXbSgz44p59JoTFqz6EchbRTR4VRAynjQ97QozzEBXBtyqEA/nsG+9BJ5+DYEHr
	 kNOWIcL1WmUNVVoMddplGu0XsniGY3FUXwmhtT0RsZevgpIaKfB9eSmuOpzvPMkZKK
	 OQZulJ9rUF9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A101C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469331387.21879.14968885424161900458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5bf7981d816a098786d414fcea4fa4600eb15466904a516b567ba686410485
Date: Wed, 22 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784693313
