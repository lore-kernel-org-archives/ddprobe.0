Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD5E125A9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769878434; cv=none; b=RCe3lbFo6pqAvLnjmb40qzrkj5nEIxAM/JNFiVi0r9dHmMShB4FFL0zysd9Iqio9mii7kmZ7Fu/zZOCZBvQ0Ati8mynqPb5UQeGGGH6Dz/fuTP0yCgkauV4TS7Fxr5Jpf9yBOWASKkWQQWeugLHESsDLBorH5heYRnAWOg7VCSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769878434; c=relaxed/simple;
	bh=puALHhxekPBwlUvS6faGWwfKxuVneo3c5wnYf4mvnBo=;
	h=To:Subject:From:Message-Id:Date; b=s79pOocuknyHMJSCcmFrxVLcfGu6K2bv1IA68G+91+0HEmqRoAaS2iUfWA0OiRKp4dtunmtcrHmF1NgtlKlhCnzfM14XbxIWGjVwGSENHfOV8riSov1S8W1kCUEJotIp2yqInpQLF1hX3Bd2zEYrKokA2JvNu1K7V9ApRdsOG+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWJyXpsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWJyXpsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB41C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769878433;
	bh=puALHhxekPBwlUvS6faGWwfKxuVneo3c5wnYf4mvnBo=;
	h=To:Subject:From:Date:From;
	b=HWJyXpsihSkdCvfhrWea/398IIOteLi3stKXfaTt/5BQPpGg3nm/Csf9kwn0e0hhz
	 BK0P+lLPNmcQbfXktnKQMatw8Xz5YCv61jzoH7B+aZP2lFhpTZATpis0ki8GLDPN5C
	 igMoVDB8m1TcMdXxKX+HIGXJMlinimy/s3eukkzb4Wkz1TbDgosb4iINH+XANqnJoK
	 JmNSUiCj8TIlAaKrjgHdQKPQgByqDVfNBEVz2cCa5DZm7+5rlRX2QOnxxivIV/93px
	 IF3FdGZ/1yV/f2d8hBOlgtObuHYZwGJX4x2GhjvCHz/I/Iw51r9CgoDK+MdYNF6odv
	 CYG3O7SXeXnqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575AD61037
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987843358.25118.10159557400419902027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed0210968ba8570349155958efc3e4e8288bb1cab196666d29371562071f3c3
Date: Sat, 31 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769878433
