Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF963CF96D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785417034; cv=none; b=Ztj5ZHxr5ifL3kw/JoZfCVkBYCB/QBT3MtGKNPEgcVRLp54NgbHXa5NeS0Rfi5SQar5v5qEISGqSUR8//MM0dXdXhrMfs+1DqsvxM9CUpJSZO9Mu18MKqUa8pEeH0m6/WIWT2qr7xmaAoA7oHnRn/rF9IxvbnQkWcMOlzMYui5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785417034; c=relaxed/simple;
	bh=2epvlzV4GHZKDTkiV7QPcYoh9aYBU59zQnScl01A3Io=;
	h=To:Subject:From:Message-Id:Date; b=FxOTlQ38JwDirn/PCJDaLTUrJp97rE9L/nZGr1ub6UgMioLeML2gTdbp/2y9FGd8pKM5FsG3AEiIW7lhhFtQ96W7kBTwbhqMgzcwPPom5ha66C/AKgRVmjHdeDrQfgm4H5NPEJfOZgqTf4+c2tquTIIQoD1+dfD4DrzESrMbGLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NguDEEAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NguDEEAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC3BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785417033;
	bh=2epvlzV4GHZKDTkiV7QPcYoh9aYBU59zQnScl01A3Io=;
	h=To:Subject:From:Date:From;
	b=NguDEEAiSKwF1F5glH/LmsjllCoeZSjEjs8pdVTWoUjXdmUuO6XdPjpk6gqoIdAdA
	 ZIl46PT6Z4Q7uKQttjF6lpD6sjCKTE7YnnMysH9Hy8Bl3StnCe3IVWIINcmowsWZn3
	 iL6ZwHdX8Ggu23WC2cjjab10h5ZREd0GuAW/lKFnVOjyJlbzYEUkshxAhEFDhrqnn0
	 oUKNcaj2/bAbKOVGnzrx1gYxH8nKX24oZc2k6848OwLeJgrqcaRiX/rdvbbMVZwnpL
	 xybQv0mO6KAvMuFJgfaA4yheje03XLTkxWZxbz+SCshx/UBsx2xiWZ6Vhg2Uf0GCzt
	 sC1UIdmwqFptw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9326C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541703368.10095.1266826381967771383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49968c1d4865d7fc37377382de91d76cb653eda4927cdc6cc0f8988d6fdb280
Date: Thu, 30 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785417033
