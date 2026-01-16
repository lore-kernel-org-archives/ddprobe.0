Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F3B3090C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768583634; cv=none; b=XW1atEHkQZRCQ9mpzKBGAlHcE4IX3n/6Lk3+IFtjykMtUagoH6q/yYeMFR3YDPewzCgsjXFw3b4baAwdeYqE7+D5QgkzmW3g48EC7xUuDA9ae8rQ39zKuFUW+QQ1yNsSNZNImxqT/Z11IvcmAdhknEa3cHw10vXIaG14cMBHNtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768583634; c=relaxed/simple;
	bh=GySd8HgyaHKpTc6aFcrtQo3h0yNRmBuPikUC+oRWJyI=;
	h=To:Subject:From:Message-Id:Date; b=A1SR+JKIPND856yM3YJqt+PswL2ZDzIQLV51RGxL2D8liBtqzmP06FS67yztnFHOTYreowLuTaA/1/Ou3T0sP5NJ739jGUg9IVEB1SY+IfX8ZE48cFEBZ7c31duUgCgl+eC2I8O1E1kwASbZtHa359oVGfT6c/jN/f3Mb3PQfVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRN20nEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRN20nEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E718C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768583633;
	bh=GySd8HgyaHKpTc6aFcrtQo3h0yNRmBuPikUC+oRWJyI=;
	h=To:Subject:From:Date:From;
	b=TRN20nEeVdSB3KkZgYFZ967rV5veXnZssytwFSURBCrPR+aFgwyQJeHfwGqeMF6e5
	 8Sw4Z7VTbf3ZyI09OaGPfeGlZIySWW+lhjZqfNCxqDnrw66pX40h9xsm5oZx10Lwgv
	 +IRrZsTnpRRUDcg2E1FKtawNNomPVmgRZHGMX97nfVbAV9Xz2OX9FsyOwh4mCPiO5R
	 eCuJewSt1IdFyW1kmaAWACMpdpOkXMNnhvwfCZnqTHcg6kG3EYisDfZB5mvTlVvhuv
	 s5k/b0cUwoEnCZOK+WccYqe6poJS/tFifZKwOweziI0D62LWoNIpnLfmbFvlGhhr56
	 HMDV/v7lbK6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7FC982D1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858363358.4318.11579279577317656846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99ab775cd5f307b7dc45daa9f25aaf29782c1444e300f346a0c27bef5b19328
Date: Fri, 16 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768583633
