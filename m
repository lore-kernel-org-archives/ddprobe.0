Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84523F36D
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740897535; cv=none; b=GREm5uTxX3qPZKzYvSFje47X651ylfMo3dL4IG/nwGDQfapMHLFwb6xqYFYBNjg1iVTAEjW7qlZtW39gt9DAJ3jIp19USX3nPsfIizDACfbAtWx4oQcQ2NCZXNba/LDNW2lfFjOv9v3Daj2eBz/xYwjumv48IXlzkqVeh+T6UhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740897535; c=relaxed/simple;
	bh=arETjCoGlnfSIF7oVxGkDAkktLa3tzOAzH3Obxj+IpU=;
	h=To:Subject:From:Message-Id:Date; b=LJEGSljzEFYtKygoFmHHcg0b384YmkCAFMZ4Xtpbl2fq1XGhboFw6HJ804X5IeKZsK4CSyuqZA8ORaT0U8aQjPPfrj+sEKRftcbxq3RszLDkEwjqZKdDLo7axf4DHrwVZ3fa9XjHZizki3cuUdT58WimKQlQX6NbmsPzw6owwRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bui4Qcsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bui4Qcsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB64CC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740897533;
	bh=arETjCoGlnfSIF7oVxGkDAkktLa3tzOAzH3Obxj+IpU=;
	h=To:Subject:From:Date:From;
	b=Bui4QcsluLDFBAbZ7smwBhup3SqG2etIshXIbNv6mXsiD5JPtegrtN7EePVQuTE+9
	 STFCxLrdSfJHBvPVbNfEpzKmWsUXrH76mnhtAms+FwsfjhsicYzz9n3K5VS2vyt057
	 9wlDoi45lw2dN24KNEgZ23FxFcYF8k9+ry6ObK3AHCLZkcTZkKtqTwgTkVaegYBcAu
	 gfa9VNjlgeW0ql11tWW3I5/JSLPtjTQqmiwHzbQFc5yb3d17uq1PCmn3OUlbbek6qK
	 1ZaqpCxjA10rsCI7c4A0scR5ocpcLhCRn7B9Kj+oPv0yjtAZU8sDd4ctS3p1E/SmTm
	 wSbN1fJmD8/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A6C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089753358.29419.4778656483758581774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb1dc5d32c17a9dfc83904e0cc972e2b82b1fef9cf6491439e681ffa64369ba
Date: Sun, 02 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740897533
