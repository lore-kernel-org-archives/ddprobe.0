Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD8ECA7D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717354523; cv=none; b=ryqCwpeDcYtZUTGtAcPsBV84ZwPOHWiwCZycKPzZrAZClWjSiEmxx3xapgRo+pADDYSB913aJzdyrBZJJeUY1ytEkIRSk5TVvTyjYqMgd6yv84UB7GASsjpfjmNzrGnfftaRRBFcu7vgX7In7nAscYlpYNvg3uSi9MqD6+fhvFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717354523; c=relaxed/simple;
	bh=5S7lDM5y8A4eD5q/LT3mf33zx7HE43CBfC85N5i1ekQ=;
	h=To:Subject:From:Message-Id:Date; b=qeM/T8uJJEdRLSUZiyND/0PP8YVCJyr9bApvUqS488FTp0EYBDdWVNj6khsRAA6ejq7e07c/d6zvzfJ8f3qfdtfLpP21ki/FuYZC2q8ym8y8Pq+Q7HKZlR4Xdu428YRawz6j/mT2oKrZnKNjgbAEjqmlq/uT5bmjPgjxKD8UYlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AawxZ6EP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AawxZ6EP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F14C32786
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717354522;
	bh=5S7lDM5y8A4eD5q/LT3mf33zx7HE43CBfC85N5i1ekQ=;
	h=To:Subject:From:Date:From;
	b=AawxZ6EPNnT+Z5/bBnlF0evC/+VD4nLP1+C90SGIcZ935hvnS3NRbUtLYxAn9kBcU
	 vyksz1DheDXyK/Bv9x8hnEq5yi3sq6aF/4FosngU5Cmien+XmfYS7CvORmPs3hyH7D
	 rcwUDpoT2PpolfBCQPwsp3SILxnHtaol8KQ45+iAwm7E2k9/+cDH08HORQ39kFXq6e
	 9MUmbglMhgjPnD6Y0ZieJQiK37m+0+XiJtI9zqsJvU1u3/Z+Z4hJVnsY8jylfO5ltI
	 BEQoQj2QpzcuWBy9BpJZpRgI2uyCZZ3On+BFzUOk64oWpDG7hM4UxHIwiEkxWQ7ZAB
	 O/FK7VFyR/pwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C403AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735452277.28226.3441515561567566522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4852d6ef4984625c73bd73a97377244a01663fc3f631f0dd8d8cfac2b42ce034
Date: Sun, 02 Jun 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717354522
