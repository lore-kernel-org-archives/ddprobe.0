Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349FB23C4E6
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748965194; cv=none; b=UrEwBFDv31EQeDmtPMBMrXMt+uETWTRwR9y7tGk2KjPAy17ekzB+WpbExynBoKLqO77wbh9cY2iMy6sRQ+k9cd6PQMP8dGTpgWMx0gKBh2rgO+QUCHFQBQM8Otbc6UuzVrB3y6m6tGziNQzmPsL/OdI6MEzBl79OaaSs0ustlqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748965194; c=relaxed/simple;
	bh=CB8VaofR4jMw607Otlkn0coW+elSNCARHH0snXDIlz8=;
	h=To:Subject:From:Message-Id:Date; b=cF0xy+5NzyFHxEq1g11GjgExPMin5FUrcxNgw8Ge3mZ/vdL30Tmmhs3G6rr0NmdAuW9N56jTxuSgqLf+1sQVxXgs+mzRrMVwqf6TSfxhfk70loQ7lZauSq51SaYls3KVj8hTKDrhA/R7uubbdzniIyQVTSk/VXSdn9AqzmyvMNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTBMg7yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTBMg7yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748965193;
	bh=CB8VaofR4jMw607Otlkn0coW+elSNCARHH0snXDIlz8=;
	h=To:Subject:From:Date:From;
	b=NTBMg7yIvJlTOg2g2Wn/hfXWjgFdmluqkDRS4cI0NyNQolZx6BfbibHcYccr/+wxQ
	 cBqmjxVopx6ZPXUB8heQwJ+ZXBlhDIBT7othLZ2Eu/wjFuH+IdBSqM7dvbDgANp1DT
	 HTHuij7BBbJZJOmw2eg2/hwn+7KqeBHN3nEcrRrWTCI6U9usrHDZIfWg5qhE7dquze
	 6axA3mnhLQy0Bx9TpGZwdP900TeCB4Juh4C2HeOxDTNusNO/Pl2pw6aYbLtHbIrY9T
	 Igwwp4NOXT583sgzxwWqT+oHI2RhzM8bt00Agk1IpiBw3gCxdvjbFU9Q5vTxMlflbY
	 tPax2o/KXMtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F256C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896519357.25353.3613846342996856248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0f059a231a0e27621bc8f978235baef238667e6b50c7a478c914f7579c667c
Date: Tue, 03 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748965193
