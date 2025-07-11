Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147671F4282
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752228594; cv=none; b=fyp31nlR3QFtSJDzs1zeQ3sGUjYpZzsXOlPG3hwL9wsW8C9pbsoxuXwTdzGTfC2R5zhDjM+Dch0PNb+0wekGgxX/9Iy7eSAjotBNv46hLQPyZCG7ySOi2wI6Ko9jyEi4TO+lOa++mdKM/+0cX9EnHrmi6dyGgxLdBR06HYnaW0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752228594; c=relaxed/simple;
	bh=Qb3SJ1pfTjGgOf+JUf9LmCr8WsLk/7bY0akpsHh/MUo=;
	h=To:Subject:From:Message-Id:Date; b=umO3iFYapkzrOE2jcH2PIXBXL/DNGPAylkz1TadctMROr6UV18IKoi9Dvv+bhgUu3eeOvB5QSTN61S7svWwNosNljeER26s6jMbdj570lE+PXjRA7PxqZBp5RL+lNNO37UA4GzXhcuE3QT1oiArM0dkq1oaTcdmosiJKwdsFC+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gix7NF4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gix7NF4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE2BC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752228593;
	bh=Qb3SJ1pfTjGgOf+JUf9LmCr8WsLk/7bY0akpsHh/MUo=;
	h=To:Subject:From:Date:From;
	b=Gix7NF4ltvIKVtYiNqnOMCrVhCGTyWBDbUAwBp1TgFNMaXUSfgk9pVGIAN7kWBN/7
	 HYdMkN/1s41mp8UXD+CFjQPqFqqUwr+lk0GM8Y2cRtv02WD1smASeMDcAjyXgAOonM
	 LKJQ1RcRSAfeXDLogYoPKIiiZkMoFf4C2AOng5Ycr3SFABNgAWYhEhro6ine8/Kt4E
	 e2RfCwqiifVeyMxJ63adK2s+7taO4y4sXYsuvRLG9ZtDyXakxA9g5g1gs6/evFTd2B
	 lebbXnSSL9W2DFKCTI38iOoW2DGRTU4TYhHTxemAxXSsSVJUwkVdeOlRD65MvUVBKx
	 wIFSCrYFnZrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A0C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222859357.3388.6304927082455749544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d062ddbf9501f201d58c8c74cf3b5c5a35d83d946236c5902195a5b1c42f936d
Date: Fri, 11 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752228593
