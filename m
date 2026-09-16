Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F50B371CE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789570234; cv=none; b=DeH/GL4Rd5QMdE65QysIH+gm/GCJnaxk0spRzsM89AH7eTr5RXP38+MhjvERu83BWLYNhtgBKW8dy9HXCaedPcTWWHXvgg2WA4rTRBRN089Czd9xMvB30e8SWmgay+OdwFqMNU5RJcqSgc34FSHQcFTdlFTm9G7QNi22v2ogTVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789570234; c=relaxed/simple;
	bh=bUwYA3pxRwe2d998IFDFU+u89eqTLmEHQZrVCULx8A8=;
	h=To:Subject:From:Message-Id:Date; b=JdQd0t1Q9JqZ3kCC+hEoT3vyDjl7ZJPBPFTt4AkyzWzLX0piIHUNuhpJ0raB2z72vQ6pBDQYAL51v3dvZLqDwpJgRMTKKs9ar5XxN8hSH23TBZNccaS/P5wkj2fZ18OdUxZZqz2Zueypb1rVYCWrjGuEnLWm4IMSXCoRrF8iDcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndzdAjy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndzdAjy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DA9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789570233;
	bh=bUwYA3pxRwe2d998IFDFU+u89eqTLmEHQZrVCULx8A8=;
	h=To:Subject:From:Date:From;
	b=ndzdAjy1ObLB2+7FaJtD+MhDtWA5mDn3HsnNcVcA4T3RE+5S6Zj/ZNSam/HhmUfll
	 FysKm18bZKK+lU9r/Ku8dkEZ8Sighi8AIzmHe5z57utAfGnc5BdO/15a8o9pFVshmA
	 nnw5ZYibtr8N3pEvyBprHlcDIs4aRBMsP5+UA8ouU/d8fmOpyQOTcS5QhFo7OcYZSb
	 tvNtS1zQf7ElPTjMSBTQvmDMJjmbsKoyJglOY0DJVTXBJqdCTgi7wXg+9crry5Fcwp
	 4BUlrvHV8gsvRU02CzRmZ0BTS6Gfb2Vrv2Ms7iOhBll3nHqWy4mPDj5e0vWQBS0Hew
	 VVQrXgq/KNqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A0C982C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957023372.26599.5032808295861276684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed23a335e47922190548aa4c934c5ae59d2e4840c9179bdb883a8943f3825b07
Date: Wed, 16 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789570233
