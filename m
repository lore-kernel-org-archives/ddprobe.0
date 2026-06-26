Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EB1377EB0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782486454; cv=none; b=WqLfJG2JsOSvWVSklsKZpF4UyfgS46hxoAJouQ3oIylV1mUr1suHaC+O5jIKPinSysRbMFbHw8XPrCacHI9FvRG7A9zhFIyUcxSfnlDBg2lMwBKPoQYtAfgi4LDg6qi3cjgKqZnukeqaA6GZexfHo0N+AeqQCc8SuEET6boyY6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782486454; c=relaxed/simple;
	bh=13WNFp37VYAyPPNtIIuAadFBcUVdoeKyXroHm9cW08E=;
	h=To:Subject:From:Message-Id:Date; b=jsY/ezLjvn3vXmO+CoC4cPiZm0icCkQA76kokeILRHNvQAb/m1MZ7OdpJKNoEHGCbz1ttvT20iLh/sL9kv8J1krn2m41ri7ekLTLd8EdhAMhy7rpoCA4lpOScBgkItqeYP7IoJ7HdpNLin5XzZxnGBgSW+4AmOdCEh8gyfjXP6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJn8Kr8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJn8Kr8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D273FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782486453;
	bh=13WNFp37VYAyPPNtIIuAadFBcUVdoeKyXroHm9cW08E=;
	h=To:Subject:From:Date:From;
	b=hJn8Kr8Hi1+I36f+2CdcjjBQOmKrj0WZvHS+M7fdnEXiKNbCk2tGfNLZ24slNr502
	 oz3lHHJ8bZVltohmWhkfpai22wiN/steUUWKHuZ5kM5ItdTVcUVZJb5PIzuspbxWNa
	 b+9xIld2QTuY8IgWUq36fkNZefsuW7K4gjcdmgXvNkiakjcDcNbU4ycwONTQ273QRJ
	 9qupVQ59CCwmfos0fb84OmG4LNcH0RvX7oLSpcWvEUxVmPRtWxkcTipWykECen8O4o
	 2lH/9DFi1Zavvo/rInV+rev3SPfEYd1D0wi10jFpY1tKlU7LwEL+NE4r3FvG0pi8Yk
	 W9lPnwAJOF+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76ABC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248645373.19065.5143950347065953883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07c361d48b53c732521a8e0b79eea63a0f5f6afc4c9da52673afcf580ccfabe
Date: Fri, 26 Jun 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782486453
