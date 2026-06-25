Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8547B38425A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782377254; cv=none; b=RQVUAkqJts3Yv8UPM2VWRIyJ0oX+Z8TzhK2rL0nauDVEn0bpQCNonCknglZPgG6KzVWFqxnj2kCsuMbIOEWiDzLAhITrGZ8JtNh3RTzVo+LUab85Ok6wdGRb7iyHZbxJevZ1fC+C6AY7QqwS+RbDDW3140uad/2t9Lqg8pm/S/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782377254; c=relaxed/simple;
	bh=RkUQ3kbh5kPsQP/tLcpjOlg9NIAln9PbFHK0Ug3Q+hk=;
	h=To:Subject:From:Message-Id:Date; b=KHLAvbkYTRbsoo5ZCQksJNx+/hIZl2hvtyQIIAnG7HseoT482ET213NI1B9vA4uYS0bFkM95cJqBOprLHP821Htr3YZtoD4Wmg1GiqR98LZHJ7KIwAQBIDqIRcNSYSQEwf07Lcn9oH4+xXhI7uYI0p4g8sZqG3ODaTjHxlTodPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjTgdlvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjTgdlvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34533C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782377254;
	bh=RkUQ3kbh5kPsQP/tLcpjOlg9NIAln9PbFHK0Ug3Q+hk=;
	h=To:Subject:From:Date:From;
	b=gjTgdlvtIyY5ahmV7mXfkzaDf6QRPoNH83ZgSQamKPfU7VyAhkL5Vrwbc0kYgaAUL
	 DwxdF6jzjx+Dr7ZauhmpMIK61qxLthhM5eBr18bX3OeCZQv+jnsZhc6+CtIwh0AgOr
	 s4VSmE5ufQQ/oHOYckG8F/keZu90BT8LPiNVVnd+Ma1g2wsXrf2H/+ncBYcO4lBFYG
	 JXMJzkmn/cPYcyFyU8zlDJ3Tbe/52e0c7yhXfWnnhQPvdzY8sCHDLAMbaHsx/z+4+B
	 os417Gm5UOqtzfIxOyzFDcXGzwZYglZRJ4c7VJkzVYeC4waIEzNeEp21mcb7raPCkA
	 d/HJ+i4JzyyBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F01CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237725390.22579.7219145087412650264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641fcae7646930cbe5ea56fb36be9217791df337c220b7a5e4826ec4d15c22e0
Date: Thu, 25 Jun 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782377253
