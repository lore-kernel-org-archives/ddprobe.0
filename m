Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D8E19AD5C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718812163; cv=none; b=sias61lfEKY71XFwPnj3WY6k2PKEo5ttVv51Fid8tXEQIiTw5Nq+NSV5vnvKun8srwyJyCyQZAR9xjnUjK7KeePsfYMpbLGuRYCANrlq3YOdSquq7+qpOEy0wrbP5HtgvMz0TQDsL2huExdZhTB+ap2VJBxBYV2Xl+YeIzvO884=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718812163; c=relaxed/simple;
	bh=+JvrTmtayBAB/69zV/qtNW42uRYWoiLIuqzQJCtZT/8=;
	h=To:Subject:From:Message-Id:Date; b=S4D23asUJ41iycWsDrpXrq5tRT5M12+EcIPtvUlZhnCRDSgsnWpXdF9P2T/mZi4BXd3BTOXDajIJRSHrnq6iqC/EDijzVSGPx9m7YS+xMv9obJq9Tkjmtybs7QQwGTQFq/4U6t/f35+esW9s7FMZL0/N+OqBfZJwQD2iQAZ9Keg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cyp99fap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cyp99fap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06D1C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718812162;
	bh=+JvrTmtayBAB/69zV/qtNW42uRYWoiLIuqzQJCtZT/8=;
	h=To:Subject:From:Date:From;
	b=Cyp99fapdE1xVg3M3XfA4hSakg+zq5w5jQ+3j+pPbTmN5a34jJMv9+12KOhf+Ywzh
	 SXeSoiMTX/qyNqTBwNPnHNlfCxiXla3SIbHHvoCz9rxWDOCQNyOPuT8HUxEywxoNST
	 6e0x/BngvFZP0zGgvQBok0FLBbP7N1JV+b+/YYPX+zc2kUR3Rltt0+qv/tWNKl3Qm6
	 GTcPlmnp8rVgjMpUSOlw5LOS7+KQs20YIUl2664p6NwVrSM37wTTcy5DFsVl2M/D59
	 Wu4ibN63DOovDB8kHVgIh8MBhd2zRic/D+vz4mL/Qd2P/Rn2uK6nH/roFFha5SL/Lf
	 ldQTlIfVZWAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEBDC27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881216283.10540.18116037505285240220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b4c558112f675005dc6d4ba2fc58741b89ee84959bc392c11e0d3915512f5b
Date: Wed, 19 Jun 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718812162
