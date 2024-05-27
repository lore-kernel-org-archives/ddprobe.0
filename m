Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EE017E902
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716830063; cv=none; b=IBDHgsQvjbAkbBVAAQmzt0sNOqOxUgYEYtydaeJULDkg0BkYs8H64wtQigNrri4Sb2vOY9X0gtU5j03Y307AbQBzRlls3kRbuV2+ZipJatWNwgeyRRUdWC1oSg9KxzvM3p5Bw8YVSzfqolVWC15/7zvBNynovYykm+5MvYTyR/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716830063; c=relaxed/simple;
	bh=ezlPkC93LAP/zOD0YfIDXF/X7k6/iLmrYK70k4RuhAM=;
	h=To:Subject:From:Message-Id:Date; b=StxcVIMSPoEs0gZOIwGYbnN7Zu729iZToAaYZYZsudsT9kEjpHi2U1viIacOfA5v/UMQNGhlzFuy655rZ6CU+q3n5rRmqZcZ516ba9wNrbp52FbXmD5Q1V24Ydf1va9xOAFL9crEJKbdoKSLmOti4FPg1APzvKa9cC4mS/qzx6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO5XSxOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO5XSxOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D326CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716830062;
	bh=ezlPkC93LAP/zOD0YfIDXF/X7k6/iLmrYK70k4RuhAM=;
	h=To:Subject:From:Date:From;
	b=OO5XSxOC1IVIbWpP571I35DmMHO0OvSeROjYCJcgG6kq6m9wFZd+TGvkhRljJI+kC
	 lEtQDvVfYjqcfs42qYnKsISWjyHszxONOSbQDvvOh956PfV7genZLTKLQCozyYfG2U
	 Mqe+i8me30z2yYw7iGX5jyONrAouPQF8wmxE6xGsiNU1ixe8lVaGJ+Gj3dX91hOgLo
	 QkPlyxVGnu7gFS2Wa9E883/GWvA4C1M+oybCRKdt7oPOJSXisXa87fdoUoIckyFErq
	 hvRZMFKKCdeS3Cmgk5ShFpeulAMgdF+QHemNKhPwKBwsHUCWuyZ7CmJ2m/48T17I6O
	 0LSp+5SWnxd+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4ECC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683006276.586.7506820420905200416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113456cb85f8638b74fe3f649b7d5ec9a42cc690f0ed611a72d97db66c0b6993
Date: Mon, 27 May 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716830062
