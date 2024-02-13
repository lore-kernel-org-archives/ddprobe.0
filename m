Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E883A249EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707819497; cv=none; b=u8CKAtxAWc+q+OHyiRYz6BOuuq4hRlW5YkFrKhytnjbziPqL2hXPaixnEjyIY2UI7wIOPuiyjU9PdfesVeRfHjTxaYINBEm9SKuZxw7VIN+1hxQ54UYtNHXCcCKvHNbMcfBv/Hnx3x/xihDDBpyBkKVj0YEEWUDmw6KXoOeSGOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707819497; c=relaxed/simple;
	bh=B6UQTqo/EDYecroxx8Wye04DlWbAMZ8uYzYZl9CrVkA=;
	h=To:Subject:From:Message-Id:Date; b=f+TmEHnh0aSjUwclTBXiQkuMoK9fRzCCbZdEl+ap01KFWmt50HvK1rtQF/nr37r9Eq+Xi41GvS4klQaV2iD9R9YMjSnOfOY+BTyzZVRRvkwZAySioKsNaS+70MYTzICGw45q1ejptZHvrelLokGUPMGFmapbKuZAteq3PW6zgpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHLDb8NJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHLDb8NJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75966C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707819496;
	bh=B6UQTqo/EDYecroxx8Wye04DlWbAMZ8uYzYZl9CrVkA=;
	h=To:Subject:From:Date:From;
	b=PHLDb8NJCuQiLxqojlQzpyBwP2+Ln9Q0jyFFfcx6jA1UHjDzKvPPtG5tQ+G/S5+tj
	 D8yWqxUNwO2v5bSWFUtoSTpKLlzdNcuMhlSiYT0U5pIGsvwQdreoEMJa14FdKZVMSx
	 INlECFUT9eXc9grpVcQ7Iu7VJZWllNUeVJOaKinMwM7VNq7OQ2O2tL1VMrJWHpMy78
	 NAOQ4m5r6eNlzc1TANrWztssmRck3HdV58/I12A9SI/OZ+/DLAZweVvjdcHRFomlcY
	 BV6qzYH+dKANzWyC3X8xk0Wc+N7qPlAfAW1mqo5p6n5H/UXkQJbTyErzWCr7/9MEg/
	 +wxwTO7n+2hIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EED1C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781949636.10005.5646750067634075122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdd76a2d11e85d78c637d12529668bb2f1afc836315e6b04989533209b6c893
Date: Tue, 13 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707819496
