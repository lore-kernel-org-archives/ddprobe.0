Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8D61B533E
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724955954; cv=none; b=CvZGrwWKZapBm91+HkKnieSt0LXOioe2kXXJLC2Se7HP0frAF5erqIA4FxIyp7aGfqOWerUaum8WPHTBHntJaLtusF97Rmtv9TNrXuyvuu6+ywXLRMZwNlrxtm3JEButQQxuJlvjf5KOOS5YZ3steQTpSqRSu7ghBJjREKMDYY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724955954; c=relaxed/simple;
	bh=fZdpBP+XfhQFIXDZrIxEZYrJM7bR1nxgchJje0efVF0=;
	h=To:Subject:From:Message-Id:Date; b=nWYmIw/1NCuZKkIPXWZojyUa4fE7PUDVNpetM0ddBAxeranDiZn6nyKdSLORuaOLWEE3jLVKTadhgzXvyZ0nTNA7eQtSoaTUe3+GyDoeySx1yYsaKx1y3IgFZLUttMlySyeBgSiDfKnkTubuptj9QjukndqijeozycaBtCTpyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfrwReha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfrwReha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED6C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724955953;
	bh=fZdpBP+XfhQFIXDZrIxEZYrJM7bR1nxgchJje0efVF0=;
	h=To:Subject:From:Date:From;
	b=sfrwRehaV7EKaTTqXIK00x4BzoPkbGKn+geMoefGD6kN3vY4mTBUkxriNQnNBAX+i
	 bb7gt3Oup/0i3/Q1UATh0/K8kiEaoiigurzSo1iR7yYYt614U2VwVohwpZK11cevFI
	 IzFdeqByXqDbdbB885jM2IXPqDUXmKT6VTyq4xmTyULW9DZgbQJ1NLlKRox80c5iKF
	 Xfd76AHBFga1qO9Rb8vAGQt+YpI6liXb2ahUkQp853eKy/lG7Kwprvwh0R9mqKhCIa
	 MR//7/ikY9K+U/ViA0M1ZK/7dDOUOW0SCUtssSdhwxUnavSCGoq3G9CsDoya6L3CMO
	 P3OeA/o7BE3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95179C87FCE
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495595359.14536.16776830071833175607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d70686c4f148664870bdfe1861ef4cd2073f517feca7cf329b69c51cfb7afa
Date: Thu, 29 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724955953
