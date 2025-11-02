Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30440208AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762090194; cv=none; b=CPJl0v9OM4oWNltUm0sCVw4WsySAgwbWr3Rfc70PH+F1QtSkT5+PxYPIuDNdlrZWv6Kr30p1+zq7m898M9Ch4dmpFqtwsVD/jUO8D2pVgE5byddd6Ft3KiFAAYFszlgZIoeE7pyRmUe/VTVgOfAOFyngr0BfA+DO8+TScLn14Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762090194; c=relaxed/simple;
	bh=ovxKwjgEznZN2vUTmZ/RgkcCyMuLertP/MOF0HkBoBs=;
	h=To:Subject:From:Message-Id:Date; b=XeLC+6a/Jka8qeRdKoqAseSYo03M3i9ReoyUavDjTXyaoqA6bVIlINntmIlfIJ37Fia/SwmGQLnWo/MnMOFUw9Fy3B58e8T4FF6WxeLavXddPgjdwVVbgXsJVJWTP5IbndIu5LxGE7dTD/gSnltyiFvQAtII3iThSDJyDCeWlOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOzt2SQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOzt2SQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762090193;
	bh=ovxKwjgEznZN2vUTmZ/RgkcCyMuLertP/MOF0HkBoBs=;
	h=To:Subject:From:Date:From;
	b=LOzt2SQyy+83Pd+KWRV2vcmQMRKCJ5ImJzvjk1am3quA7BVAYx0bRKX0l82+hGLR9
	 dBSrs+Rc1BbWHr5EiPcjJhoWzyHK+8klczmt3cERGapVaXAKNszNMwdY3zwbqwE/nx
	 eruZ85Rq+X2V4SrSr2ar4L5PTvZffSLxrrIy3APlRwNAmh4EYaPkW2aTudM68SVZj5
	 wK7DqRYdrGSjtMep87qwlQpU44KuBU9+KZP1C3v6W1TzGji5rA+kQ3E8ugntggxvvF
	 WPbMBn0r2ALGo3bgFkxZMbTqeMBhbAn+6exsMtd3ME1pxgpd6p9V7hZ1HWxcA5g6fd
	 2TMNkUzOxK4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94328CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209019358.23418.14272534749520475766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af35c7bb17dbbb0c9909448b2aa2da6e6af0b166b310627c547fb394aad9a9e
Date: Sun, 02 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762090193
