Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F133710F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808634; cv=none; b=BaBFKrRoRkwXXsbh0RBVDm9KsVrnLUu2solIwZycTjBzgYqJW8OBiuxYURHscNqiBI2OG7kQyduyy+tlI4UFjBFE9BIyAldHq2D2w264nDRnsF2sewUmBxQHRYlyQn46eDzjW+OMrxxuxydGoc9mU1J5d1EB6KvrEg36LTmcTBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808634; c=relaxed/simple;
	bh=rG56z6QJeNjq9ZTDO0kFRJrXbNkZ4JScMhGaSWZmICM=;
	h=To:Subject:From:Message-Id:Date; b=aIrVx/yuOEjKLQbBHtOrhLV3f5SZliMboXp0K7PS+/b/qDUpZ9B94wLApiNVyoAke3POFGvjVKVxSxe3KXKKrqUTOSc394TxNfWbFNlAVUPJEQv07Sw8XNcvoZj7/t5gqlYU+XmuA+zp8G6kbfp8Ty0qku0RsQch4rs6O7XqlR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu0RFIuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu0RFIuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1074C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768808633;
	bh=rG56z6QJeNjq9ZTDO0kFRJrXbNkZ4JScMhGaSWZmICM=;
	h=To:Subject:From:Date:From;
	b=Lu0RFIukrasJzBM5KMubco3GUnZ9evazPr9n3fR5hA+QTjiB7OGt3Gv+HOiF41PRz
	 cB9nrpigA+Dd7nx0+hGoJeUe1IYOttRo5TDa2o1RlCxym4d7sAqnXTq3RKWcfcp9iQ
	 ttkN1Px/6n8MQ/1ndp+fOKpHsiE/rdNQy3gtg4o+8cFXTy4Knm/Zr/UZdIflbM1vQi
	 bVU3G421PX908nW+UfhaSAqdwTnhSzbekMNyScuO3wNADN0hgKeI24gVZ02L32FvZr
	 UMNJUcPeN/G8y1ObnllIt5GDf6PvEeE68Lmgk8Nb3xO+ezfIZOmZTA/Rd6HWjWJGJV
	 0ja+Jg2GUGwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90305CA5FFF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880863358.16116.5418416002265624222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdf13af391d90a92e6145f698707662ee1769e7d13553ee4d7966080f85ff32
Date: Mon, 19 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768808633
