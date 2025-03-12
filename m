Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C3D242928
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741783134; cv=none; b=JpPwUX8PWQFmHkRHu+9DbeBRSi3kK4P/tarMqiRtoSzCF3WkYFFop7ZOJ3ZMh71yQVJdV5OoKyXtEqsgvlX1CfL50qMKnHSITwt6KVASeiPeKG45eFDGS8/up2Gd6N0w+4JLDNLmV18ze5dh1EMX+uj7bEQn6YRbcPLs6xGCIWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741783134; c=relaxed/simple;
	bh=1lIkkLu6g+NpQ3vcvf4k61Zqkq8Sj7JhdpaMq7nzaZk=;
	h=To:Subject:From:Message-Id:Date; b=YRx58rmTD5UqL2ygXAywIZx2B6FmJoCO9QUetb7NtVqn9nzQJhoH2YZRCigz5ypSLC2qupLwBufbyHgz2io63AO10cJtI0s4OxmmUI0Bn3IZN9SBb7u4c3I0cYGMaCavSZaFTXbXIyPXEDbHGyFyiTHVeNsDdO1fj4QxuY2Ox2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPeYX2zC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPeYX2zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4903C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741783133;
	bh=1lIkkLu6g+NpQ3vcvf4k61Zqkq8Sj7JhdpaMq7nzaZk=;
	h=To:Subject:From:Date:From;
	b=rPeYX2zCWLKjxJPHGQRzc9i6QywSyZbT8xIEV9+fdgRK+fSZEfJTmVEtrrG8DSlAD
	 Ny0tFJOcETe0cNkQ/TyEcXOvfaV9zQiouDiXlh5qGP79QWOt4cClzHbs14isEYBSSo
	 yD4lcq3yrF4ki09v3HH8292dTqBW+2bhDqTs2BYbW/xsMcsPDIoL3ulCyCdBHoASvi
	 OVM4GSFrT/oDzTy/un+J48vCHyl0fyNQzcYl+9y3/AbLGSiIYj8WmuLxELJB19b5og
	 Dp9Q8FzEfLGZYzCccqBQTSF8DBqejYQvGYiPCFljdmmWKfyqNPhvSW2yuouWmGSvxx
	 usQcnrIAZlDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CDC28B2F
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178313359.4504.12008212327622139524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100ae0572af4704bcb0846cbad219456c92c709da5239f32ca2c700e7f5d7af7
Date: Wed, 12 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741783133
