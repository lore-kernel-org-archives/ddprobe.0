Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AB6DF5B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714810343; cv=none; b=DiJdvXE6lZYzODCU0Ul8gq846zDRT5ugc74bs6bxY1Cu0UA/c4CJAc3QGFnW2983+ZiaWE4aCcoj0iIYHJ9zU/US5hLm6m/ptJ2v761qPtbCDtiXjKaGLgmCNrj3QUd4P2ljvnH8pBZnDRUA8UQ38MZbE1qyUqUl2Y0xc4MFE6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714810343; c=relaxed/simple;
	bh=KUlcjH6sVO6SYXUfSvq97dCe2CehEIrGcfZca+fGJG8=;
	h=To:Subject:From:Message-Id:Date; b=MmyVV8QGrwn+DafsycWX8hRw1MNFbdBYF0riW2FVMb3e9HQETnJWFaEn/C6PGxwR9Y0ynZQb4Wm67CuGxQnUjDRpjgF9YP2HIB91kWyTc0+CD1bY2eRght09CORdbHdyfT7uyoXl1ZI1K7NV+PPXZXHSXvJ8iElaKJdCUtGGb4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFaqASVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFaqASVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1F3C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714810342;
	bh=KUlcjH6sVO6SYXUfSvq97dCe2CehEIrGcfZca+fGJG8=;
	h=To:Subject:From:Date:From;
	b=FFaqASVUTCrR7N6blgrTlhA7+0I8VLl1TrpYp9Ap84RqkV3cPCTmWYn2Et8tLrrBn
	 CGVq1Xz7+KFUUcPMewoQFDl2alo7P0GmIy7tYW50pJ5ReNLE/iPj4f9pnNDgVmASA+
	 FqpAeU1JYtaN0Y6UQJzo14uJ8XLBFXP7vK5XGdlPxEHgq+z8zI9POtVa0ahwznqU1u
	 RA5LPfvkpgUO5VNojm6x2jrUeG0bBXw3vrq0CY7a9fy08Z0mHJ9Nk5o3msox9WTDeR
	 nSAkZoUzEhqDkPSbw5qth5OubNRBBILs7JzfGD2yWu1J/pq5H767gp0URt2WD0TWTu
	 eteLSGqbM0gHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6725C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481034278.28463.422181869016441837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c07edff3efdb8d5c06b349ae0d364a6b19f187e163187ba9c5a8213810568e1
Date: Sat, 04 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714810342
