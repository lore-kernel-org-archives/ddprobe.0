Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFCF2F4313
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749737994; cv=none; b=Xzf7L3dwW0FmQYxtUEYSsrdd9QyF8bwy9xcQ3aU6fYaxEVsx2hQQwXCS1EWdMc0AnVW5ZniclFn5ZOggaDR0ZuCaejhYhkeOYA5ygip8fdS6QvX36YJZWMFMEFu5JaGdjagdlC1BpBMrYVGR0WPZtd4QnAX3rmCCtL7WH+mIpeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749737994; c=relaxed/simple;
	bh=QMleBCeDDH2Z9azitF2l1ZJzjVPrNUdrrdtpAaxMZt8=;
	h=To:Subject:From:Message-Id:Date; b=uXIrvKvMHjZ0XrcajLeHG5EJ6YGoSo1SoYIxOMzduOwKhxJCmrg66ZpduvZ0w7lEtOkiYMqhr4dPhRycLXD8c1Ao2VcEOpkVvInAvGvJnCdNex40K9y+0u9Vo1L4fscpMWn6ik+LLWg2Qs4104piLHdxpcv3xezkALlNJHPI8dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4c+BcPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4c+BcPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E52C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749737993;
	bh=QMleBCeDDH2Z9azitF2l1ZJzjVPrNUdrrdtpAaxMZt8=;
	h=To:Subject:From:Date:From;
	b=C4c+BcPQrpQujhzpwWCdrGRYblTHvrLwGD/iQjtXCQPQvRgpqFBFwY30srEOW8N3j
	 ntf9pzEJlAWeverTh+W9IiYNP9mkFyZ/iuwdJ4A+5zQNMBpDA1wwUzcEnhKQf0UU0n
	 Y7ymKUkqaP5d0NA66jKWPxqlXxXD7g723feTOsN51s6c+hQs85ywdR5R/IXotzXD2c
	 qnwZDkGA8KmIUMynriv5Wq4njo8BMYlIsk4lBWvmqI6xicao3XRVf6cDzuSjv5Kx3x
	 LbLAW6wop+soppJykc6t6zwdTgQuc6nbRTYrd+ytjizec6rLZ9YNSTF0wm6VmS3oDs
	 X8CTM5c6T3qgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A3C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973799358.8903.10275255148851982494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0e074dd2874edbe8d0e25a03b029be1c0715a5d28a51f24f9b5750718396b4
Date: Thu, 12 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749737993
