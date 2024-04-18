Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B58A938
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713401963; cv=none; b=hdV1Oo4SQQvb9nMGLwPPecVIWdY1drDi35mAx/+fE27jVWb6BcNd5ihvVjxu7l7+FEa+DYRO2sdHOKjjGHYGG9KzKMFOx6RtwpwNPApE53tjVFN8GcI+W7PJknK0G90k2Ox9Awprdy5Aejd8W1Zw27jZ9onR+rPRItnzLyvpvDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713401963; c=relaxed/simple;
	bh=Qu6RKdo1+eIKiP+YaJE5uuR06QLUR8wnI9eWihW4kII=;
	h=To:Subject:From:Message-Id:Date; b=Fx4YFzSUB4Q0MII3qBdge9Shu+jDlrARRSlZderVaZzi3ibbJgHU/v0N0MSjUZIoDcRk/HQ/MFj2oJg43n6DUwD8On8S44nfkL91XuhRqDyDCynoohh9VlCs97y8gLCZBPYJqzIUjJrq2jDtQOCSSahlATWFszfmktS6oIJ4jKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzWWqFfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzWWqFfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE5CC072AA
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713401963;
	bh=Qu6RKdo1+eIKiP+YaJE5uuR06QLUR8wnI9eWihW4kII=;
	h=To:Subject:From:Date:From;
	b=QzWWqFfuD8bjIOaYuFWbYrUBBPBZyOuYtMOzmLKrIqWpmKMRRipsRCsHlGifUAPkT
	 Pmu9wxQEEdN4raI4yF4xX3gH63yD+2OMxfnOCk1shQA1XmphajV0eVH4LiJGDZHGOF
	 cu/QVN9ZPyvHMFL1HmVRR9sxFvt+i2HtKJY+7go2QUxKcoKS/USMiOyk9p1ZBOOwSj
	 pBSaCnqu3xXMQc6c///SMCc4Axe62pA7Z0FPPbJXlLCYHit+haqGs6gMOAWog0sQKK
	 8PV8xCeJuInYBW964U1UfPIyr+c9U7zwgplhkAYKLa0lKKXuPDiqGrhHggvP/Hrjza
	 J+9BYfS9x1lMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE973C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171340196279.26123.2715353625819141455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806ab72e342c014bb19c4a694d2c42b8766b67c003e0e16815f243bdb3acec86
Date: Thu, 18 Apr 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713401962
