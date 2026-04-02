Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D0634A795
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775157934; cv=none; b=uacUfTRsnE+o9eEWRRC9CoG5NF4mP5aGubLsY+8Nj0j6HS4Vomk4opTQDBo54XsHKeE7MYBzWq/dFwxtHDV+0iZRvKiLEiNhQt4zGE+KIlVjakjZPYvc1bilDfPBkUjvdQ8SWgofdwltrtefBP0PJ5J1GH7fSFolxUkNdGszKN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775157934; c=relaxed/simple;
	bh=Zo+468zdyNyzub7xm8DztDwXgF9nfUsb2iqMq4wujUg=;
	h=To:Subject:From:Message-Id:Date; b=VaEQnRIx9iEuE5kX7FD/3a8dWrggFdYpdpwCbT66QsDlfY3sXZR5HCAT60Zm3N4lJnyElLnwHwOMtTZNO4XeSf9NlSe8RvDh3dFFzkNMzAAPpCdmJJc/+2RyoK6XxGAWDpmdowOuyHweR1iTA/sLJfNOofkczX3IhIIBY5bb3Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSMeVBID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSMeVBID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCBFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775157933;
	bh=Zo+468zdyNyzub7xm8DztDwXgF9nfUsb2iqMq4wujUg=;
	h=To:Subject:From:Date:From;
	b=fSMeVBIDbZoBncDlgMbWqilYShvFwUyRowzBiidXx8qy7wJDyE9phCFntrgRTv3+y
	 Poneesp9KmJh8jl5rJqjf8lKtmmRoO7wBv/hHErIgyd3bsFhcaI0EF1GaHZzHNaWP1
	 Gs2tR5abZhdosY8ux2T+bT45ap6twxW+cv0qWkRoZdakfbl5CAVgSq+x/fkGr/7hge
	 jZ2//th0/9A4SWeYrCPGs02ScZifXsmc/bLcRq4tCxVleBD6vcTfd39wmpBPjKiBcR
	 BpZUNSMJreLtEanA7lwnwc4PTFe8o/gyUpwQ0kAMO5aHyqYRMF9NTs47Wu0tagu1QP
	 yEm9sa2u9G9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30AD6AAFF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515793369.2339.5768383149528679418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdd31a58aef93d671af17108d29750d4a220aa548dc7bd897803801bee7aaf2
Date: Thu, 02 Apr 2026 19:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775157933
