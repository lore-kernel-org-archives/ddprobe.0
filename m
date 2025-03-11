Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEEF2248BD
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741681735; cv=none; b=ErlNXjI/aK0LPrtQJaB+DVG95oPUs6uqKv16FOmXO5DetObUX2BsthUCt0MzslJI5nJIe40LlWd94tT/ECk2waBCFWenpL8Kg5GiVc641Opbzx4fJ2SS6PxXcT/4Lr8bdqOuwOxzkUctJ5GidTFEMiIYe2aT01nGPkAvfP/ysUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741681735; c=relaxed/simple;
	bh=L9QuwZOfi/YFeAB2K1tX2lm1ZzrdfKcZESdOFjoKyrw=;
	h=To:Subject:From:Message-Id:Date; b=MJiMlUoDE9EGdJoCuBEJ8AGaYFUA++9seLcnT+Ib8VEe/mns83E9o9nIFckD+wTzaIRVC6bIlqUALLyDaeTBAIVT7MXeH7V/+Ip2ARTRYk49t+EApiomvSuJKdeUHv8oJrACeZNv2ccT8J249QHevjS4zYCp00h8Gm6rvrthyz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv/Z6JG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv/Z6JG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741681733;
	bh=L9QuwZOfi/YFeAB2K1tX2lm1ZzrdfKcZESdOFjoKyrw=;
	h=To:Subject:From:Date:From;
	b=Bv/Z6JG8c1QkIU7m5LHY2DPHNyhc1LvKL+AIImisg3FSunitYfL6mDQdvi9mA/qA/
	 0W90KiAJ9fht/FlTOiHYM1sIzCW1oMxv6uQ8MV6yJhYxwmiYg+j68UTft5FJzm+99z
	 6sKMscCV6ZRQcjpWAAIfvSgIeE6NHx24u7ATe6dQ/CX/IvVxaBC+AMf8SBXysNMhON
	 7j4xChqnWUCLgf/ur3Ba27PClGiStaFARyO1wrB2DYltXhFO2tb6GJBoxZ4jDnRB00
	 W+kg0EqZyp0MY70cdmocXrDKr+TtGht+spaTHLfcDbycV77kIWWDizrTBwPaHlZ3Yx
	 V50JY6KRCSDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D5C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168173358.27236.9519781714872151107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f1b150544d03dba1cb346c2c8c6cb539496334cee07cb6eb7e75226887bf9d
Date: Tue, 11 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741681733
