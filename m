Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7FA6BB57
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709290097; cv=none; b=HEuSbifm4Jk9diFW/Ak0qNlPZbtPuVLa5FkhqYTh7e7KQ6k/a+8P2GZHhM6PbvSHVo3e7TcM1i48+waUxkE0+5mS350Ku+s+mg5kZTwJ4z3qnZMJ2kWhi4YbkkQzQeG1cOzoStvL+icfvX9FVUcAEn82ZCRkDZ93ap45q1p4Jkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709290097; c=relaxed/simple;
	bh=DgpgeG0lcXoXR9lxiLpmFrHvX8pIqd0ODKa/+/6a6C8=;
	h=To:Subject:From:Message-Id:Date; b=MkergiAWF1sNNuziWVYKxpgSGUhH0z8xxxAkVCGJTeQ3vIJYLi8QOuZBBqBaUhXOF48uidfGLHh3CDsjlSsaY4IOMtFuZZTUOfB15c6qMEBZLKLBADJFAmjp0dCwno8Vf1is7jWOeYuWgsafJBPe67tPlHoS203bf69Zt3WMpMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COZ5SqTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COZ5SqTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7977CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709290096;
	bh=DgpgeG0lcXoXR9lxiLpmFrHvX8pIqd0ODKa/+/6a6C8=;
	h=To:Subject:From:Date:From;
	b=COZ5SqTgQIm8n5s07np6XLG/zJOxWc9KMsO7l4OVLYlF+4gw2+FBncy0kOrGGue3A
	 kAA5naxE4wX+GOeCILBtj0+RTSumEO4gfjQc6OYZ1Bph9sJAI8cW0yQpOK998ptbvC
	 5ItcwG+5UY3YG//xQ66KlqXDJVr1z3f+zCVj97R4wa3KEO/T7orRjmoe9WnVUzjmsw
	 VtURZ04zOgBHR8V5e1AsHIjHbqiylXMNf+c/xCjoWOdrj6TFdQ3DShoVDENHnFgUeD
	 IItifHZNTWlmA1fWF+pE4n945Wm9z7sAlq7c3S3GvZWNKEebHZ/ld2sOnbbX9UrxDo
	 GwkfLqe50bD8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FFC5475B
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170929009637.5483.17595282259064586918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed5cd97d5bdeb5e1e3d20003e15211528dbbd707c703aea7f4d275ce3493e49
Date: Fri, 01 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709290096
