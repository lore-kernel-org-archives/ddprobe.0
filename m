Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241DB2CCC5
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762282194; cv=none; b=pY+w4IlF38arCUlEGR0Y52iYUY3YtcaPZQudEaWxIWJo/2aPT9bWzn+Bc8mPEwsv3IgAz/xq4kRXjj0AuSECKs1rA3H2k4DAOnyxJcX3/C1qRtBYLUF/Lpic7E6yyqxydq+Ki2Se/rkpPRKyAGoqoUCVde4wMJ2CyyEb9sY7exA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762282194; c=relaxed/simple;
	bh=9A60OuawdGqj0sbvAC9valbrjinTZGS3iOqxo95/7gU=;
	h=To:Subject:From:Message-Id:Date; b=ttPc5l2EZKowtyEpys3Rp/zhLZrrNc4lw43f6K7n1gFd754tYGKKHMJwWGFJkMgH5YJlzbvB1jkerpdb4+snWXP1UbGoMSP4c/bvfy/Ap8d2+EBpupaToovyehjS03Th5/gFkinaeIqH5WrrNigQTniFwAIhxy5ivLntvqOhaig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyC4SL9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyC4SL9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A015BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762282193;
	bh=9A60OuawdGqj0sbvAC9valbrjinTZGS3iOqxo95/7gU=;
	h=To:Subject:From:Date:From;
	b=YyC4SL9eCqrARe5GrvhGd18EZe4LNcw9cmTyF1kmhhuEZiM6A+afi+asUn5sppQiQ
	 O1ZqPWJ+1uf8h9f6E2V8gwUbLmOk080DzC0RLiHfqOsYk0eikeyZv70wEX9K3ZNFfO
	 t8X5PJqDj9NzeKVCy846XiLdgU0j+YankhnIpzqhbqx3sw1mFPtFNcOBOZMP8oohzh
	 2EtSalJkUrZN52oT5DTj/sa8ZdXfSCA8t9QM8NEqZZvPWWiHew3qfZBBwKT3TOnUCB
	 +EU57PdeVbKOi+1BkshDp3AOQmdPCajuivFXxKdbslNLTu1uOHl1nB4pkqXYYIZ0Ny
	 5FSosZaD4pKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389CCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228219358.8617.3972550560101993583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf2ad77f12b174648305868df585f94fca52fb69c3af68ef0f6dd7a4e7ebc0d
Date: Tue, 04 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762282193
