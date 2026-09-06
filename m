Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A63972621
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788733234; cv=none; b=Q8SDTrgNxq7a0QiuXllXRj1DbMJRbLlL0kLjyKbO0aWm7mhWCmh9IISDSW8434jX5TBAsfAgCWLFxJWMBtJQkFfiMwvFItm/JFGzr5bN+Od9yhph30DbgndAWifZuLpQLUIRt4MHn42KpxQBWDD+Vxno738EzrR9JJIp18D7/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788733234; c=relaxed/simple;
	bh=IpmouNH9Vt+d+EHhjUwLGOc+igoPR0AUZs1ssgz2jAQ=;
	h=To:Subject:From:Message-Id:Date; b=bQU9JlSr37/HpKZmiwiBnHhjSFrFt/0pGXUYEsRwNtDpsILDE48b9oulc8Dg35akUzWWrkY7mfX4wSn3545fRTzu8dF/JAaRtQQGuqfqrBjzq1MA4GXuy9JpjqAwfyp9m9qUuZvNY63aw8j3+cBN5weK8BvY8fNSA3GYMBbhSao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnTvyWAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnTvyWAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA736C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788733233;
	bh=IpmouNH9Vt+d+EHhjUwLGOc+igoPR0AUZs1ssgz2jAQ=;
	h=To:Subject:From:Date:From;
	b=hnTvyWAj016PtwQM3ceRXPa7oPdGhEGkQ+Mk4jCTYcpTfHat+HiVYQI3AEYskG1zS
	 kLxr/ExvqmJieCRQ4wgz+Q4IR2OwoKA064mgNof54YOLh9KaIvlpm3sW3PScyxncQj
	 LE99oGHJVHq8donTUKf39Xkz800UuML3eIpBlVHYfWx6Pcc9cP92P7/FXMZwApEWSc
	 F+cIHurqI/gI5ukBQsRPzagVKlVMYqi81qLKPRJi9g7AwyCX+qvJnx5edSso2r8WkA
	 S/QTF2iR9hQNJE3awQFnBwh0PnRBs+4NCPBh2u9c9s9AvlF60+pxyDFu7A3J7ioYY+
	 pK/HURRGO2afw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D89C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873323371.21966.11689084161122705986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecad0862de4465856b83485b9378c67999edc731d79721318df85f79c7122b47
Date: Sun, 06 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788733233
