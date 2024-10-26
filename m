Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2079970816
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729928754; cv=none; b=g7pykvAVr60rsVMbc8YDHWjNKh3RlSkGEEMhTiVGTgxN9EtpLFJLRpLTODTXoUrysrB5AAY4QwN4R2vdGIAEZgVb173NuNe5eBBSSpaM306EpdoH61zteOWLnxZgmapXpZDJtxjylw0dJXsThOLHsAEVzujT0i98OQYtiYMdi8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729928754; c=relaxed/simple;
	bh=dnBvDZZji/iN0FnAsFDSdCLJZWeP96VUMvtscLFjCqY=;
	h=To:Subject:From:Message-Id:Date; b=LANeR4KOxyg913Kg/KvOWugbanKytYA4BG50u2esvQ6gbPPuQeOSJquJPOS4EOGQ68mYlzd0dv1eU4rMg8KHcZ81oHUISKF20cs7X+POG3qfbLCK5yj+JWQDoA58JDpkod2U5XtKxxx/ZOvTzhAhIqJY9DkOIHFRoXMPlNS1/BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+r296aY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+r296aY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A83C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729928753;
	bh=dnBvDZZji/iN0FnAsFDSdCLJZWeP96VUMvtscLFjCqY=;
	h=To:Subject:From:Date:From;
	b=c+r296aYc2DZfSXfuzE+rakFDfyA8V1XrkaKSegG4ys+8/jC5nR65JhzdkeKJhI+Q
	 t4EBG6/u2pZTd13s920j3z6sTBXn+I9xDjz9QWuW5BkkM7ZHcrGqANV5DaCXZcNq1/
	 c9Qp2X5oEuu76a6dRh0ZXagXbib3bwdP+axHxkhLjGU8TBQgrcAjNN2Ip+jv15tNx8
	 I8u3wx6MI7fv2tzOelTH7cQSY9aJnolBMi6wwg9WeVBJIJ3Z3W6V1i8gkRuTb9NFKJ
	 xnCbPP7KcLo2wTNslPhgWRjlhn6wC+9hfX1osuPxeInqKuCTNS5N1upQiB0AsNdHQE
	 1qf1+LU/4awLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97146D10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992875360.19363.9884544747094045083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b65f172c549321b96b44b8ee7c5572c8a6014c40662397dc36c93c5a034c423
Date: Sat, 26 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729928753
