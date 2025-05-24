Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41198156F5D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748065194; cv=none; b=rIrS6wH4J3T6HU9tdwqU/e1Afv7y9Rb4nCjPlu6e3zXFLQB1gyIzAHsRBZxCF3ea92dhstedPmJVlnqNE7guM7aQt31WVEM7nSlZWcReEeI6Z/btYEvM826DndbnpOdVlYaEV/YtlkLvqQJymEexmY9l86+qLyXBs1hfURQAOpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748065194; c=relaxed/simple;
	bh=jAfoUwPbYdl/ss+ZUQur4kgB+HlG555as72m4VhR+wY=;
	h=To:Subject:From:Message-Id:Date; b=BmXsZxg5hbvH93AFIyIOVsv6mNjgVaM7BuMXV5QPkrAwbrVJC6jukQfy6xk7EVEBC6TP9W8sDFCynIQqPjfMEx+s83coHVwhQOmN/T6ghtmqXU8VvSI3EoiBx7oJFdbWfGidB7AUmMhdLFHEasyDGEyWvZegR97wnzpPe8oPVDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbJMeTDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbJMeTDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CA3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748065193;
	bh=jAfoUwPbYdl/ss+ZUQur4kgB+HlG555as72m4VhR+wY=;
	h=To:Subject:From:Date:From;
	b=qbJMeTDhVFXIUZkoxD6fLmWx9WqH8HKtNYwP7yin8zCNaeOu1dzfVMsu/3ZFlZhCd
	 vRS4to7YjqWnreKbBeBcveuPQ9EaFt0w/lMGRvbgm4uuD3Y1Ky3hdhTRhnOhb+8bib
	 XPJlCUhzR6I87zZRapjpENObid6Hd4lRsGDlOWQmZzouvY7CFRGQWLbjj6RQB+DULN
	 K45pipSo2Pt0VLL023FviKbk3QEKh2+p9A7VURQo9VmJr0VM2wSvK0WCFsK/hXemXn
	 NB3ha0ElanKirv6ePGVRwog9jUKv6LrfIgA2Sf0lq/lPBN9cSEpqGGORDL2VWYdWJG
	 abdwk2WiDSkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C0C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806519357.4976.8008059793269354296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8f51fe41ac438f70efd9829709ba6c0fa0e6113e368afbea7a281aa64cf51f
Date: Sat, 24 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748065193
