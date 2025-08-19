Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F25E322C9F
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755631794; cv=none; b=sd5X86OrmkLFhWAL6RDOvBwPVo/FA6IeQTuqtHakl3i46r0JAdnvrNZHdj0TSYGY/DsI6YixonZ60kvwxeqihCwgl0nX16t36OWaVlviLSewmmZOJIbccEmb5IVosfgeb8FbHuCoQHKWYFCJHp6Njue97IPI+glNyWTUTJglLZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755631794; c=relaxed/simple;
	bh=QZ2EEEt8vZzYy2WkTO8fCYjy7HPNdMIGxNIjaBB7UiM=;
	h=To:Subject:From:Message-Id:Date; b=mPK8TxHEdwYVXJZcFGXNuMiQqzLPjvCt+2Gmqlph4bOq3N/TuBbzop4og2P7ZKoh5ZsHfGcal1l9Ig7MyF1kKhOSxj4xapbO9XxgcXss4chg6SmWgrHMdFFFP8erApuT/7zHVDCQ7OFZWdt6Lu+bsTQurTa6Ewa/NMSTuRDiyQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6fWDcS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6fWDcS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755631793;
	bh=QZ2EEEt8vZzYy2WkTO8fCYjy7HPNdMIGxNIjaBB7UiM=;
	h=To:Subject:From:Date:From;
	b=F6fWDcS62ZAWbCz+MeiSY36/6sKWLulU9/R7RB3wGlq/DNwqwZwTSflJpT+svlXKw
	 cfWmN9Fpqb3txRIlezXu+Ptcas8kQa1skgmYzYxqEJFWr5LkE+vpNDEf81r4c0VIz4
	 0CBS4aSkqk9Bga76EMZhic0/3rO7jZCS/tTa0amSEKjwcyrp1ibMN+c4KQPtic5+qD
	 +zCCnOG8/24gIRo79K1CTDLbSf8OUIDIzKLHRlf/ixsBQ8fdErqXwJ3kTY8DEttGua
	 LH8bLch41+rhW69T9H9dIeCqVXTI2DblU0rV2UUtk/U3s5g7bUXmxgb4ugMucVFW5q
	 9PRUFpTt2vfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480DCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563179357.16575.8107163251786390027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b13f176c62f65c041e13298e4f88e20db3767b52c1b5100ca9b0f3660ae234
Date: Tue, 19 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755631793
