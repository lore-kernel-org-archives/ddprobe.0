Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AABB1B4153
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744119594; cv=none; b=R5E4nmezhlk9bXDUvMSpWR+eKYGbMSbSVtP7ILL4AZ60glTY9lBuj7NVKIhwRg0xVhvDBK6U3hfvB3RQJg2X/MsjgY6/ygW2hQiXqOFthv9DWDI2vyevKLERiZOGT321IRfqb4BO6t7MHPVjAjnx/Rf19s6+OGiH9Btw5qbf0EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744119594; c=relaxed/simple;
	bh=qrt5Azb5jIo3tJUwaDZf0cOn5P6ffz1ew62scfkB33g=;
	h=To:Subject:From:Message-Id:Date; b=JPs+8rc0ob0fQBxQQuZJ0ABM7j+0euHwQffHdnvpgid2w8BCKCBhSLSmMeydC1kP+KFKFYwhSBf/EjcNaMMGimfWpYFN0HJuhWm624FGpCplfEm1MNjtF0N4D1Rw0R6nwT365HlA6OUANZUGK7BBrTMDvbEOhiFJPNAOqmCIpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmlofJtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmlofJtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD767C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744119593;
	bh=qrt5Azb5jIo3tJUwaDZf0cOn5P6ffz1ew62scfkB33g=;
	h=To:Subject:From:Date:From;
	b=MmlofJtvUjITPnEbfMZdXEuDOWkh+9XgEhVZB1Ma4xCRTkWqRtOY+ffZrbAyFcqId
	 RSwn/PK6FXuNvfrF0soAewZqarP7FgHo+nM/dz7HozJAZz20GCmvGMTQs+I/fFMiFQ
	 YwpJf/dmjg/zIZoTyynhvisj+GYmwLzNbqKhUHcIRvirZCgMxu4lYuOdmQO5jq15iu
	 DIW62KN4ioSYdK8e2aD6BnFLn2/IDASnap2/GuVIYiGzjUZD7Ks4JtWgjT9kkV5n/C
	 DDljOQs4SYC+G5HUhzUrNHrgLRTbtzrh9t4h/ERcnOSlrRPApFpKBvEKtLETJwV2Si
	 FWSHaIspOXUhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5B0C369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411959364.372.2754305543160872290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90db18367c80b850e710c50d71c4a208d03e135565f8ed8be33654a0236ab001
Date: Tue, 08 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744119593
