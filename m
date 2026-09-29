Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BAB3AA4E4
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790669434; cv=none; b=aW48rsXjLkIey0UJ/ugf5ZNJNv/fJfdG+IBdVt4V4q4p4ksMvG1eziO/osWpYnrgl0c1gf8OV24XJbdhIFsMsLxDcGj/wx4Jy8Ovn11lbkJ4zZKNzU8cWn+pWJeuBVGJxRGoNMCb1B72CSqJeEnsBH1xRKdwct6teQNXLHC9chA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790669434; c=relaxed/simple;
	bh=f0REcE8+ZLdCWLmdz5OzRtjbKk1yHh3lGmmPjD0vMYg=;
	h=To:Subject:From:Message-Id:Date; b=pz2wHcIjfgK/xtuJaTdt6AtAD5pswxKoXEYOptLIGW6OhpvWNGBhgQu+V2TYfzAYvR+sCuJZcNQ6mZdmfwxEY8AtIsAuTEEhiXHtORC0COcBn73f5lqxWraSaOcWJxGz11lK7cSgNZpcOCWhKbPdKeP5EzhblBP0RIJQswNi9FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU+MyepT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU+MyepT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC1FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790669433;
	bh=f0REcE8+ZLdCWLmdz5OzRtjbKk1yHh3lGmmPjD0vMYg=;
	h=To:Subject:From:Date:From;
	b=pU+MyepT/ikN6ibxoQPeL8pUql7eb1sN8cCfn8UglIXBLRPyYwXBJx/5nonA2uZxu
	 8K4G7sH2WTNNbayEyNsLO2N1ClibcPloGkTrdGbcm/xDM8aA8LVuOfUI1yHeI1R5i5
	 iADbDvaUSLAExYZTpt8UCqS7rMCdx74EYJn+SO8kMrtXETnPc5mFGJN+FtQ4WP/PTq
	 IJ6LESreKAJCZBigcEHiTF8nlDhNTbf28ywDYo2DmDwV71jJpY5GhpIQpe6ICTcGID
	 FNtrHxLCvPSaCXqMlsZc5ngXPVvof50hbj/VW3Gz4MeYV5+zKHU6jMYm3bEUd2B4gU
	 udDn9LtQHICOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7DC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066943369.2285.11138438977788801047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9ff025d38cd29fbbb37c7e6ef5ef81dac82e8025a7d4c2c6950b7585cd801c
Date: Tue, 29 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790669433
