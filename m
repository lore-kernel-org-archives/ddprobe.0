Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480A1155C97
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743977994; cv=none; b=nJiyyVCQgwHgj2JZ+Civ2D9ucUymuorNhbtVpcMOLkEv5zfZqvaB7bOAykJ4LkJDWTdZAgv4Ps/2nFYB4BsX9YMv2F//oUjp+oftY+8Dd8gbLHmB0WnTLIulRoTnfJT1Uma+MaJqGa2Xi/ALzhp2tGdgrPg5yEmqZbqi5byRW6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743977994; c=relaxed/simple;
	bh=2ATmOaDZ6nXET0ZnKqlFSorXgAKQe1C7T6eKAWRI69Q=;
	h=To:Subject:From:Message-Id:Date; b=Zrch32tJezbu0nGXLK1QsIhUSQLgAuGLI2SEXZciTkhnhdNbAlThyl+GzwbasMZzDRN0aK7XP+o8G1prXB9msEq6KaK2vhCdayO39ESVL6DlZhh79sfDt+9EaKKgjt/3Mwjc43nNo/KoQ/K7B+M6CNfjJy/CJhKMAKGGpEO5IEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6hB3xwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6hB3xwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B971DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743977993;
	bh=2ATmOaDZ6nXET0ZnKqlFSorXgAKQe1C7T6eKAWRI69Q=;
	h=To:Subject:From:Date:From;
	b=A6hB3xwEMFQ3z45BqdW3EbcMxPd6mo5jhS/PibdOGeKd+vWgZcmOKJZFO7Vb+t7wo
	 Yoa3DzTY0RpAdiaGEGa7gxphbIxH/v8aGOMP6cDcu/8s7t13VyfxokERjTlbhF9SHX
	 BmBqStPiwus0TetuQP2ASSYpQpA9bSuPcZBexkW8t72tHaGZ4uHPMIvB6idOl/VRDD
	 myzjr19XEscTUhfSuubEjIXcxBJTUrgvNOTI4O0yY0LUavF3lvpNlCuA+xlmXnbB3w
	 gQipnPpncGPwVTw1r1cDch+ydBK9L4c6xj7WasOzNWeNWyUt2foGeWO7etqkVKUz2Z
	 juiiuiO9hKa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3302C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397799365.32344.7361872159818407885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32991d8c058555f667393ef5344a5ecf59b11a5eacb36dce26c6202cae23f5d
Date: Sun, 06 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743977993
