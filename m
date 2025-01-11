Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE001B4257
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736631954; cv=none; b=J44C2WmIDd/1019Aqq98UFXIT9WbLEHKAOhuDCHE6V6oquziOQRWtPFDnJzVJSJbOTzI13uKIXXnx7fMm+5JlnKL/yxxhJtIsP1HXNhTLH/WwfQOT+9zu62VkeqAJdEtvcLvZSTmfdbDxnuhsO3Ls3lFz84cszBoJqk3kbLLXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736631954; c=relaxed/simple;
	bh=h3KCN0hOo7NP1bMwwi71G0u/+1vYfibcJ6ILT8WI44I=;
	h=To:Subject:From:Message-Id:Date; b=MSh70HMQty8TBFrpy101epbSUVDyXCd4+50L6IU98yM1Ba7HVgpOqnY+irIIqLMSWRYkNmBAvyDT6Mc0YcKl1ktl9uAqhQw5nwdC0qfOXc696bRvn46xjvrgOpUayZB5SNXS2KMogoOLTMTqM4do8XguP39LMNANggrArcq34Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNATCZOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNATCZOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F6CC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736631953;
	bh=h3KCN0hOo7NP1bMwwi71G0u/+1vYfibcJ6ILT8WI44I=;
	h=To:Subject:From:Date:From;
	b=sNATCZOKfBoLeUlR98X03Gdm2ZZW0TnQDyrZODMNM+YeeJUjSC7SSUMmPh/AXvu8e
	 7JOQBu1WqXgD/Vr7W3jXMI17pLYoSRGVvxng+OlX2/mZXGhZTz5U/IyamoHsioy6JB
	 hO+KsSs4LDbvgXnDB6lraeqZ2/3RHeUwPwTWOEr+itYDkI6j0NYrC9+lEsYF9YIJZA
	 wuUE7MCO8sLoXOL60jbUL+lUnzZl/Mv9GjCmhZJUEFVsIuTv/666J85kXhJZBu8vfV
	 9W8FSCaC0I6VpHtIgpchUw4JmfNxC97fx7ns1MDCAU2b+ZFFLG2ZAjb4/S9WeLV5Ol
	 MHSiFV+JhluRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663195357.8531.18241169904939013328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef5cd923ca4185daa81d080908929073513dbd341df4edca074ceae3a271d1d
Date: Sat, 11 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736631953
