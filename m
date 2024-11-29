Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43966184F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732865754; cv=none; b=CupfMbyCYjLGHWlzcIuEwiRC9n69Xnod5v86hDKPXVGGLuqg5SSBP2mdxZZD2AuIC9c7hSRnQ7N/CYgTRGz18LSi+8h5OzmJt4fjMA96HfOZae82qUQJC3s9CGw+U9c5MHNXwh7JUQSXOzgnQ1mJ3JgDATjC1GDFtKDBlaVgN4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732865754; c=relaxed/simple;
	bh=NE91BOfVQyhYvFaoXsPxix9RZ17nwlSV/9Wb3YJ3mB4=;
	h=To:Subject:From:Message-Id:Date; b=QvqBRzCbUxE11fPARDK8KRoAI/W/1vcfi+vQyLsHE6Rgo59Q0JyCTM5bsJY9dxlvKwePFzSkHWvf8LLzMLsnQWoflJfcWgoFIY6JzntB7R486pt0NWMyJfyaWyQdzc6lSLHUx3BPVvLpMvLLDtAk8NQFdYURmpkFeq8rOWYJmIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGSJNcB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGSJNcB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB944C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732865753;
	bh=NE91BOfVQyhYvFaoXsPxix9RZ17nwlSV/9Wb3YJ3mB4=;
	h=To:Subject:From:Date:From;
	b=FGSJNcB1YuMFRbyYIA9GfGO4QbRb5u/nOp8YHfmAUMlCARmGeUSnyMqBV5jLFi+lH
	 PgvHi/mLhOV5jW5audq5tHlYUmXe0JvzaWXfWlWtdNEfytrySHVhg3vPXyObs8xb9d
	 zJYZ4YaJ52mn12fPvo0VjozYYtHnzYp7dHZB6wFdeWq2MAwZjNQ0t+Pjqak1QRgeaB
	 7gXuodVLbgbZEaGbjZEYHqaXun442UfOwPoDEKvAmET6ESWSn6/yDAYZueYzODrljt
	 /FIqTur5PC9rE4hraV7/j9XMTqWYLSgcjZxJ/phtXO9WaokK6ASXZ36mytuJK5vWGs
	 Xn+87ocF/ORrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6957D6EBE2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286575363.9444.8582560824099544889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e3a4cf82dba54c204ae3cb1d6996274a1ef68f0a7c0112778e33ef3a149d26
Date: Fri, 29 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732865753
