Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F741CFBC
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713078563; cv=none; b=u3kMVeFoI6IxCY0Zz1ZD5NnD71mIDHoDWGTL9iaeZl1sj5ccpDuHCBRurl9YmMN77YBVQloyakqyA9VcME91WAmK71ObkazykBK9o2ZIg3oiaWLMFFTbWzOYjrdN33xIuG2LCkanJg3OM3QcToh3PpPz2gZbRObbHOZFqAxkKTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713078563; c=relaxed/simple;
	bh=MJeY8MvhdhLEqXG066M1I8uKBRC13Rs1UiDJ3+HrXsM=;
	h=To:Subject:From:Message-Id:Date; b=Sqf3D+tcxlWFwQ053+YjXZM85D/ZaTuYN7XHBZmIJVlOoUk5R2GJ6Q9KMUW3uEYlzljZ5HlZV4Y61HwTfIUdxZiMhCMjbB/xHhYOGB+J8SzmHn7o7WJOtXYe8WXHwZsMzdGptOWA0D+rjfZ0vh9AzYyht/ZxAKSh1kfbSgDisQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqUQng78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqUQng78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3381C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713078562;
	bh=MJeY8MvhdhLEqXG066M1I8uKBRC13Rs1UiDJ3+HrXsM=;
	h=To:Subject:From:Date:From;
	b=LqUQng786LPAWOAuw/OGOTHdcplIGL8KrtWUNQWdgPRSvN61vjj2TwZPjoozEMk1O
	 XRvTjMZFPvd66QFpF/G6e29YOEkaoOUQOi9GvB/yl4nmHh7FTaVAKK0AfWD+sRMHbr
	 Cc2T/jP5PM6zkMqUh2CQVPn2Nmgq0yLH3lz3+UeP1bHiXjcFNx5Cim94rxuSnDD9wU
	 6gzDajUXYivumpb2kxI62n/kBXEsbzoRjEUnJEshkJGS02vW4tptezPyAVaLtxems/
	 Y1yb36GWgXZs4st8xeQ/B1FVNPzUxFU/GnudNIivbeaS5lwZGehjxChxNM9fm9aS1P
	 Ate9P0T6e9rvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1646C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307856276.14258.8499705093963871220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babf36ef5745e6217190e74bf632bb9ff76fe169b192134e6747d5acea0a76a6
Date: Sun, 14 Apr 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713078562
