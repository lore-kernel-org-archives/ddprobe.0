Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388E71A0715
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724767554; cv=none; b=qjZZnv8D0KFQoPgQSN2JEQJpbIASqzO87I7kPa42X8I3exv6Fsq4oeR6Kj5ax2pT9t+De0lFgXnqyWD514uKlPEQATz1wxvIW7G3tcIOgd1ktKz0Bv98kpn2eZoDX6kr5wZ7Saq9QW77E9z9Db9MtYZ2BjERZR/zmo8lDAawcmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724767554; c=relaxed/simple;
	bh=ahJBEDlwufp3hf88F3RBT0krlV9+vL70esahW5HQD2w=;
	h=To:Subject:From:Message-Id:Date; b=i5BGsvaGtGZLdq7+rtkmttv7TlXBP7gcpX7xr+CwgIR76maPlXnmD7hsZGYqbqsaJ+8C3YhczXcORYUAQnPhmQZQx8sCH+KaLXKr0OcOMleGMka30VxOIhKFbtOy99Xx9QURCnXm3jfkcMAXBdRliGQjkrKvQJt1AJchZri2lfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sce9zrKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sce9zrKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B089BC6106B
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724767553;
	bh=ahJBEDlwufp3hf88F3RBT0krlV9+vL70esahW5HQD2w=;
	h=To:Subject:From:Date:From;
	b=sce9zrKVFSc908a/MYKEJGhkhgAeObdO06/uS4+pKP3/9ab3hO5BxQCPdT44yQGD0
	 P7Mn5WIXBgaOGgQBGuPYU2IKjZNwTMVcbYa707T1OcaS2ZE8FzMGz+YiUSMl+w3pM6
	 BBZY1dbxkEot/ARFVeDxxXOwALUg2Pro0xEWTA7WjmwQ02XHuJ+8CSjYu7TmHFW0KX
	 ZmUPfm4XkpfTQeZtymHgT90W6ZG5VDAa2duNEW1r6sakR7LgD6frDLhZlAPz4UemTD
	 IWSWxVkURFfGbRwsccb7L/x2lLRqMN1Cc6YwxBiUPGi0/UBKYZWPz5/jMW2Sp+cewJ
	 QP8cb2sMSx8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C90C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476755361.19740.4448933080770102658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d538103c6b57e7f9b30f069678a3b73d168dd09ab9c10bc186c500cafaba6d1
Date: Tue, 27 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724767553
