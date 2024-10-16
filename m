Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F41B6CE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729066554; cv=none; b=SLEe5VeuLKzaYF8yssrNF5tjxs7UUooTJ7V1ro5aoYhyJSUp8ZBsnKvhI+yDthg9AGtINCue4sXipW4ZYOoeSy0g/+XUN/D7uCcwqSAQB1dZEhy4uKPf39TEqrgPLPE37q/1pyJ9XpXvVMhMzPh0KGhTSwXu25AtP7UZFuiqvcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729066554; c=relaxed/simple;
	bh=Z8xL16ok5wLDn1rCHVWK3BlJ1jpJcqGuJk+H05kvt7k=;
	h=To:Subject:From:Message-Id:Date; b=DP2BoIhewzDrZvtLW9R2i5X4T2fsXIQeLEAbwVK4RYngAeqUENeXJFHaYBOwTwfMb/hNJ8SzVbdi9Rp0/We5JF91MrNLUMrTHFnm3MI4dda6zgvj4AMAgnjYh8H7qFePeVilRMBdqNVYyja1gKWpi72IGILe13vndGv6Zj13PV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awvqgVXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awvqgVXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA11CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729066553;
	bh=Z8xL16ok5wLDn1rCHVWK3BlJ1jpJcqGuJk+H05kvt7k=;
	h=To:Subject:From:Date:From;
	b=awvqgVXV93q450I+p9ZvqB2j6OY+ib/7JSgIaW3AkOXtvGKKb+LvyJxyuGIft2pBK
	 6An9MY5Jv2qMiRlkbbMIC851Ox1hyaYLRqvWekwcAAhQAegLeT7AkNJldzoTB/O3Ge
	 sLCgkwcVMUvwnnBLEMUxUjQNegUW8Zmn3znqYu0Jdyap7kEKS5GDa5iW5v4nyQ1FDP
	 U54eP3y+u+UwSk+KIjr4XKIv1GNFenS6TS/50Y9aqMuwUNGZ7TdTzrHblBnrdHJl82
	 vx9cJDCioEh+UMAdOyAmlVIFta+y3K5kp8bNvZzzCe3gG975xAXVNc4/IAsQqfbVL1
	 41dUmhw7MjD4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD1D1AD24
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906655360.5754.7175605918934491212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151c7ef06c98002fab2d3acc0c41506a5a8e4e72b3d47d9c6febbe05509a3095
Date: Wed, 16 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729066553
