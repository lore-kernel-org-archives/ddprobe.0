Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DF91A9B58
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789358434; cv=none; b=mhozla9vCmXtOISrTxqxBDsSBYUA9H5yQnxO8y5AsFmGyIkso8eW+1UpSkNaSmk0mhinJoVshbV85KmFyaUXLOWWwvcwHF8NmwVyScZfHMKb9tjl3e5gvdvXpZUeVNZGF76bnF/bUuXoBlMcC3DfCK4vWdS6l8oVtW9ssrb1jE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789358434; c=relaxed/simple;
	bh=1BSvgFkVreoTg2R4hrnflViW5SVncTSO7DsU8vEoqnM=;
	h=To:Subject:From:Message-Id:Date; b=F2dIFYkviOi4btlxmwesznYNbxIrH5K4gBgQVooy03lKypFuUCqd24/+lAXHcLH/JTTqMF3n9U/tbVrpxzrrB6SMxCyWm+FKZW20Wm361I5zQtg3Lr9yAOIGdoMlUaJ6UTmF6WYp5q6GXeqz4W88Ko/5zoVzGRUiZqC3npCf/yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvao1UMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvao1UMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789358433;
	bh=1BSvgFkVreoTg2R4hrnflViW5SVncTSO7DsU8vEoqnM=;
	h=To:Subject:From:Date:From;
	b=Uvao1UMOrxLMEiwM2bvGia+k5+K0uW2or7vIxYZSWOnli2dM7kXzuV7TSBoFgl0Vv
	 MM+US646N4Y/vkwqQr3POoyYoNKimPzI9IEO/7QgmdpA5+k5p2c40pTRjR9qx7z1ud
	 FcsQ785MbGMXSxWOseQym81WOwSCwITvmaOMqxidD5ZAkQ5XOLcO+i4Pz/kCsNm5J1
	 fTyXgItTuxPP6EznWez1uk1nFsT33buww8yz2cIcqkE5omrsLVDG/pClp+0hco1IsS
	 ca3mql7onXM7hxhSZkd/HuJo4JugiOp1wwFbGhOwA+bNjnMiIW1lUS91HSzhVYtOsZ
	 5TvcLepwL8YwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B3C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935843368.11303.15249110593538680774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8ea684b593b5c6fab38134b953c783fa2776f6deb3872e2fad60adb023e780
Date: Mon, 14 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789358433
