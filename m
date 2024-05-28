Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFDB1401B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716867263; cv=none; b=D38++1VNrklvIkwFmGMe6r7G1gGcn8JLKqNUI9rrMcvFsb/kGmLcI4SRoRyD34zMOk+cFCQwe29PJjQGyOm+/DsMhxrAG3Yu9CU5DQu6pPlRn48njsYHlGO7F8AL/rdRwa7d9XiMvmNQ3ueKRe5jF5QH3kFEeZ9CTPw0lRMq3Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716867263; c=relaxed/simple;
	bh=EI/RUbPaqHR8AN6oTu/3WfMl7Hktp1Ub0tn03EFncCg=;
	h=To:Subject:From:Message-Id:Date; b=DXdQW+dd//FQV3ux5fhK/C/1xU8+raBX2xLmUSjHzzKnSIW6jtA5rwt+Un7plLx+eF5QwyjIM4bGj7Lu/do8Db6zPOEFLywfYSfDIFFFNI34Mfeh5C/HTN+9mt6th6tbB8qzD+eJMBv2cm1UWqoITzuKeiliOCferhnltnPd+Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN0reUHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN0reUHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78DEC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716867262;
	bh=EI/RUbPaqHR8AN6oTu/3WfMl7Hktp1Ub0tn03EFncCg=;
	h=To:Subject:From:Date:From;
	b=HN0reUHq/iwiOYcQnTYZ+dPhyYDSi1L5pCMfKaayq2z2BL4MCMztNAjWzlqUJqUgJ
	 qEX119ZA+fJRX+BSGBdU+RubjO08qvSQGTGw+UldpS2fqOprRame7Y4CuRg9I1oofY
	 m0IHW0HXfo2KEoNl6Zq5QkU6Sf4ptjluemYCCYPjgkSwUptcrLX7vjClxIBUy+YwTL
	 ODiuSqyZXXP/+a3ZJOEp262h5QAARQR0Xtazx10rDyHcVuGU0JoKRxBMzOF9Bf6HmG
	 5hLZ+pqDIkC/oCu69ixvwwjLBuzozJKNsf1bPYxyVBgge/SX4VOwL4dDUrKpESPHza
	 evf/zjvHtcyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA19AC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686726281.6244.8293634258234530923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360cdb1d88616a4a79b9301aaad05d06493f68582869de996ad094db3790a436
Date: Tue, 28 May 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716867262
