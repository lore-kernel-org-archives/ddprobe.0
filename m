Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCF8224E7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707818896; cv=none; b=dO30RHuJdCBgw8ar/C9pAlPVhMbHOLvAKa/e5r3EH4TcesdlE5o/G3JpIujWSnDnQ002as+7WFV8anTCjeFk1hlRIwNCBGTd2hG6mNykX5eBBpU61K1JWDzVVBVlZvcGR9g4Sm6hIOVKT6d4S6uCVPE3a8ftxYOPa3NHGBo6+MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707818896; c=relaxed/simple;
	bh=ODb3iguF/eVIl+rrSVCxpIAYRB9jiyeU16iMmW3TOLs=;
	h=To:Subject:From:Message-Id:Date; b=oHdihEF+UXeuV4XKPdvCuojvXlQVxh7w22ciiLO3bgXnSzFgrn6sEvvDUySVZLCP6IuiGXb3gj6ccKy+ASQ0Yn8v3Hzb3fUp7bJZm89ccDzv91CBsc+Qkc+wkXAr7hhhHTdnACe2gTOpnKUAeFmVqMmJmWmav4vNna6JLbg78vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJWFO8As; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJWFO8As"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754A5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707818896;
	bh=ODb3iguF/eVIl+rrSVCxpIAYRB9jiyeU16iMmW3TOLs=;
	h=To:Subject:From:Date:From;
	b=lJWFO8Asl9aLDYZ7F4L0K1q9k0S7Fj1s+tnq/7z59tzNRIjtvELrllbxE8deOuYwh
	 8WNQ8Izie5sVHLqwXfaokn5JHyxwzQfL1Ow0mmjorrX7TTAvE+3D4gDyqHNqQaOjpv
	 EHIoTJWPCMnK9nclCtxqzWq03ZDmAQmPDMa5GT4bHQLkfLvW8KFf3qlVgsZ8iIPJIE
	 Ld+DMSngJg2CqOfGEhQ+igYCfHfqhZ3bbsuyozFuSWO1wpOJNpAXRs4zTFtaW18A4Q
	 pwyqbp4RowYmKhHJgQxOnUHL3kBtQ2cFvlJgphnOKDnC/+lH0jM/Ns2ybgrI2z3U08
	 Hm7j0FHNnaNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B34BC4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781889636.24417.14125704872356423258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e003a1fcf00a37c9e0bbc0cc0a06c6a6d52518a7bfd6c4d2ea79f727a5a8fed8
Date: Tue, 13 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707818896
