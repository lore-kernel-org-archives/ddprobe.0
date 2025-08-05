Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1613915746E
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754392194; cv=none; b=QoDKrffy8NvKnrMpdB7UGnRTvLPmVzyvz/kR7zOOl/UEowQarhwDRLsVykwDNQMmj3FPMM/hQXVEuRblYq0kkFZV8cT2Mq+5Fq+DsruVscGrkPohqAVNRqt2wIIncuKzrPWkhaHq4wpMFCxkWjm4ESegLli3hCIWT+VdglB4Dy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754392194; c=relaxed/simple;
	bh=RHGTfNfonbO5q33Pq/Wlf1qn5/79muU90YJ+lIdfxT0=;
	h=To:Subject:From:Message-Id:Date; b=a7bS/h/F0H0eI3tTPaw6z2JngswWfpJ5n+F6F95Mlk9b8ID2DkDUCRvB25aMyz4EKiOVw91ZO7C0S3QfROiiAYo+yGYmgXD5sy6RKIHc/rw66zaAdVgPjnn9bv96mkQTPtwR7xrLHMKAE4Ep8EwagGssZd0NTQ9Ouoj6WB8XOgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEexPCVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEexPCVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2211C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754392193;
	bh=RHGTfNfonbO5q33Pq/Wlf1qn5/79muU90YJ+lIdfxT0=;
	h=To:Subject:From:Date:From;
	b=oEexPCVXwfmX25Zdnd/Pos3Sl01YjQlbwqCdM4HLWLKJb622TScxPOOUxQkCMXVik
	 BiyBKG6bPe0iI7nq+dot4C5iMKRWf2MNHfefCseGCxqQOkWZFnWjK7g+I4ULgTcT9/
	 6XlL+h/wup86V/vw++rbBU0bbjjlU0Tued6fwCRnpRDyDZgxlZF4d7qamIltl5by6V
	 MfEI7tgIaiBzeVPhnNQ9yNXXtzLH1v/cjwXctwJs4lzi0eHn1cpvvc34jVX50PegkR
	 EowFUiSNznorafYrmh0Y7EYmBYZGIGDd7PIMfT/pcYE0MRzKMQ6GnnsvP6Vntrhsa4
	 N8edHvL+bwkdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143DC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439219358.14591.343422975542766404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78db1f40dc86a4b2f8c422b86c2568f1105867e0d7a936a28be32502ddc295f7
Date: Tue, 05 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754392193
