Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BD03859C2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769799834; cv=none; b=ovNeBIqhPFt7z9YcLhpX+KuS9E86piyj69b8MejayMMh0MblXPfk/MIlmLkO2BCik0tmCmW7NaclB7LsgPz6sXMa2RtVpl/F2tAe9RLYDwCLOePMW5GeAu/Aej9ZAfJIacFero8rgTMJpVpq875L4IS1eTxW4zNlB0X/SucS7qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769799834; c=relaxed/simple;
	bh=FUUxt3Mdi8Za6Y0kThIsPSllLpdb24c3Kq3IBcWPdS8=;
	h=To:Subject:From:Message-Id:Date; b=K1CxkzJR43yCICZL2KJdATfJn1C7f2x+EwF3/bFexOCrz5Q9Xx0wHOrLes8yeRwzh1hu5Q5Xk7DMT8F/aYkwOcLtLWHB+zx3IJvrmVDfYjii7KVeoXcQ5U6XD/i1tXaAsNbEV0x39a+bme2IJa3gAaA0qmIcMdps0YBm59GbfrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEj8NCKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEj8NCKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7A4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769799833;
	bh=FUUxt3Mdi8Za6Y0kThIsPSllLpdb24c3Kq3IBcWPdS8=;
	h=To:Subject:From:Date:From;
	b=nEj8NCKAbkYfiu9FRYNu//yKeFP/ksmGVI0uYfPnn6GtcngvagfLRqN6nhWHyCv1w
	 DId0sSlqvQ8zt80XmFE0+HopBu2e1PGEj8Wv6/QJi/1pt1NeoDIeP0ftpqjiVoUxZv
	 ayXykhCATzmaiPNVln5cpEAm955UY2DfvVyIHcnVpEuJMvnbt9/cAP6YytB0SPKH7A
	 ryueKPt5RbQACGWHnRrg0GP8KC8t0Xywj7gwWzz+ogqflg0DQAvO/h2Rn9nvrAADVE
	 ZKAbfawdU8T/sXcSUVkOBEeMr9jrXCnfWwx8t4GQS1cGoz+TNdsA/NkA3mUNADvksR
	 H5iEJyNY8oMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD31E6BF0A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979983358.29068.8831894273259878526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b478df197728495fef97627ccf4d9d04e82394c2fc1ed48d13c897d2baa8f580
Date: Fri, 30 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769799833
