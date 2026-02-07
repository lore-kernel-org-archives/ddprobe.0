Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169A42E36F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770498834; cv=none; b=duijwpoUldH/e9Hd2w/fJTNQWsV0RZGz+zXx9U7lpP0tjMsrcOZjaEqSW+o3sghmUGhI7bUL1K6nEIPJQ4+z4Y8y1njm+eTH0f8jkrlapOFctvHfJiRSi/sOHyDKfFGmFEUyGEApalu4Pcpwwxs+VObzBW5S2tGQMIjv7DtV07s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770498834; c=relaxed/simple;
	bh=Vez7zBLdn55Jc7q4Z5tQAOQzkLq+EBLamUkraXAHktg=;
	h=To:Subject:From:Message-Id:Date; b=RLq8INEI0VoIYKW8bJIez1kKHStap74ERHiUEdgqgIpgzPsL6AQ3tmUh30EDT9tSWX6adbwO4EMlnysjRJcBj9hGtfvr7tsYMrWMtlNF/p/m9F1C7JHI+JfkCeIhr+v6IR5+nMbL10KtMhJUSSB9KDQdtEUi23CIXNH4MZLKXs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKLqi9DN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKLqi9DN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5369C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770498833;
	bh=Vez7zBLdn55Jc7q4Z5tQAOQzkLq+EBLamUkraXAHktg=;
	h=To:Subject:From:Date:From;
	b=WKLqi9DNZ04Tf+8AvutMw7+gUkXUcdgAszDFx2p6p+VIB5a6F4QZqrxiQfo3fLnpC
	 bcnsDNqBJ3dLemSrQDoOPjMpc8ga+oxtQDAz/GgImOelaGxdb9TCjCZwrgCKhKnRI2
	 p4Tu8htMgJjWxmilUVzpuUvDsfex/Zcq+eczWRWe7RR6z3KEHnPidnb6C2W9GqpLMv
	 dUsJB2XUHP+wPbl9hWkT9PPrFNEG4533BEdD0mX+fbOmxzDdeJwnGe2APLoNKGJfIl
	 JrPBNFUwVND96pwolgW3BnBV3ICy2dqW7AeUcyCznvOVcELKlvLXxATpJK9Fhm68pW
	 9hngNoToAUe7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151DEE0AF5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049883358.26048.15254143926339663954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfc07e045a882adfb20634f824e49564f8a912b77407c96367206dc36c712bc
Date: Sat, 07 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770498833
