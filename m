Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3880A286D71
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747987194; cv=none; b=F800pI5oYrUVUW3J10m9LSumFe7ejoTbFrlZiV4NubbTxw0gliJpv26asANARBDcNHDG1sxCaNw/BFUUggITsBKeYa8U6fLfsBoUk26hlRvo9P4+ADhTs7yckCF/3BrEGd0KdNeYryvAHeV1xi0HZH4/ukXhUG6M1XtIKGZ/Kgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747987194; c=relaxed/simple;
	bh=+hUcX7RP8a9ycdnFkn5venjeF+N8jqNHITjhWBtGN4k=;
	h=To:Subject:From:Message-Id:Date; b=F4aIq6cu+lwkk2pvCeCTt5rq2yhMjn/ji0G59WCpdIOjzlbwzzL7yB8lAhTJ+3M4ynUZI/SJNZfpYQpKl3sPLYg9uEU5oyfQCdJ9zUDtK/y8KMJF7g5/lTtOZWPU7HE6dizPzRyDFLj7gMgsiG6ReGzAI+Ktfqr5Exn01JNHHik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkrHuFiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkrHuFiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6066C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747987193;
	bh=+hUcX7RP8a9ycdnFkn5venjeF+N8jqNHITjhWBtGN4k=;
	h=To:Subject:From:Date:From;
	b=VkrHuFiIH5V59ub61bRUQ/6oJFBkPh1dJa9e/3NpjbSbeMemXsDk37052wzEjnn0n
	 BnUQ/9Kh5ApcrbyoY4VN311+pathADzmse7zwIsFfKXDTF70QumFUcgCylRUawIABy
	 IfigHdzrH+Tp7wu8N0AYFR+6EWPMG7kbc5Aak51fJlKQPbUP3T4QVzBgFXcFyis/Kp
	 AYOIlE0x1ElT4FFSByJPDYsh5hImlsNZ9Yrtw8zyrLNa1b3c4c//M4nUctgqRTmq9i
	 ep0hyR7rl4YbVGKe/V6WXcDGvYelh3odgu5oUh3k9VZVoaJ4DOAiMgj2WOisREnpao
	 +x950SML8eUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92633C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798719358.1720.2709797212051642354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5f471a155086b38224579fea4ed278e03177e6c5b78e3d9987c446dea8f27b
Date: Fri, 23 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747987193
