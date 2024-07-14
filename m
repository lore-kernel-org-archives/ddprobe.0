Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFF410A11
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720992023; cv=none; b=JRC885l/0ojbngApiVV5kg82sGByjB9a40i8HHEutgcsh9/Vh6dq49KQJ1jHPimykxciXTKEXPvOHzRJxOdTuYxJVIl/3O/QLjoYcH1/36EaEdD7A5tv3zw/e172iQgA4BfTDjXADX9pNLhwU+Rz1mfv0oQSYriksifk+HcgAkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720992023; c=relaxed/simple;
	bh=pXiqb99JHaERJUJKanUuuQxMPHrNpSE/EvE8znznjEc=;
	h=To:Subject:From:Message-Id:Date; b=mD1z3ngZ151QVh+NDuNIs9GsAGIoEaOiQX3J8GWmARenygaz3rRP1ypkSgdWl8h0jAb0ZlkqwaRQIplBRUvCiDlK8ZEdtT/65qsP2lPuK1ZDBTw4r/+dZrHXT2QK0/oyBNrW8AHG4jlpPKDsjYPO0PZ1enjebeORB5pvP/cr1r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv5Z7eGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv5Z7eGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7706C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720992022;
	bh=pXiqb99JHaERJUJKanUuuQxMPHrNpSE/EvE8znznjEc=;
	h=To:Subject:From:Date:From;
	b=tv5Z7eGXqerULIiaaRZDeyYxl4vYNie8Y+f/veh7I3I06NLIWl3GO9RPMe6h18VfH
	 GTbdbU/8bA/W2cfFMa4Jz+MBJ+4cEQeTARr0bY5UUMy0HWVIbeuCk1R47xamnXm2JE
	 YNUdL8C+bJi+HJ2WnmQsFkc6rMCWq3CVhok75b3W7MU1zSnt1PNlmz4UdA6FNJ5hqC
	 9pll+m9enkUyKXgfrS3zvWhueTP/EtvCT31R81XATD6ByzjU0JTaZJsFk8ygelp+TI
	 NAth3Y2TveseWJfMMea1KRbH9XQPO/Haz7ssBNvXb1Nrp7GF8YzlI/rE1JFPTcg+Cd
	 8DvF0z7zfhQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB09C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099202280.5812.14044634056951587924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a8fd9fe9d64f55359216b48af0eabbef23e5d032784ef4d464716dfbfe8edd
Date: Sun, 14 Jul 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720992022
