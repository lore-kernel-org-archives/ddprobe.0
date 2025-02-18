Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7394C74
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739838534; cv=none; b=T1Rp4JC9mc6gvN/L5TPFG7pymjfeb/So0P1Or5xes69Ouxk5f9+VfsZWY+aYld4vTRn9BpvttimMOQgEK+yAZeHTitZCqkLb9JxNC96FRe8I29KQxhoPRCwbwSormUpcp27HFQERpVMHSVz89O23Qy/kjh3NqI8ZRxGI28prBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739838534; c=relaxed/simple;
	bh=J/FxSpmxxLh5x8rIFO5pmppyYcznA0AZ475jvluqek8=;
	h=To:Subject:From:Message-Id:Date; b=m+wZXJhDSrJSjbrVMQN7hbsa2yrZonFobyou4JErCFqrf6WeSlX2gC/CMzlCQfK5k5RS/LLHaxAOolqkcf2w5LWowWy0hgasisXUG8M8FQdmZJfbx52pqdKPr2bxjHa+a26RHSc7b8qhL3eGIIXOSOdB5S9Bw9JEOPn6dEZ/zcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHddtUoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHddtUoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD56FC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739838533;
	bh=J/FxSpmxxLh5x8rIFO5pmppyYcznA0AZ475jvluqek8=;
	h=To:Subject:From:Date:From;
	b=gHddtUoQ/EWvDDZb/q1CH6GzcNvqau+ZVvjSy1NXu8RkFTCoOlCDEnu95FuO/FJ5l
	 ekm3Uapz2+k0BWKGtPddufDeL4TrpzVx9ovZlSI/hfEkp9iCqe67llkXnllGytyeJK
	 13plsPBJaKSFhxiHy87IGDKG9oQWRTxlNCCQW8vQl86MfOEtCiZACzkJXys6bpHC8s
	 Qfary2kGEDX4gJQUtJPDwVfI9+coFstAystyDsd795Lyv9nm+ppO0IcXUm7Ml/vXwu
	 5Kky/oYjWKA90hJ49KPRc/B7KztznXL9D+5C/QGRMuDYAjn0XIvpgLGIW/Wu9hhoeZ
	 FkFLuyak5A3JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA062C021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173983853365.6520.18324929726391388653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6eef1f6d7328714ef9ac663fb3a5deb386959de869fd226a70a2751a3010c9
Date: Tue, 18 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739838533
