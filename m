Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1494F1E505
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772979894; cv=none; b=R8N8GAjOsVm8KhRey/lmEOHlNzD/gDNy/EowaIC+HCZwg2t6sQ3AykpPxJ//hYSkHmqQ3kAXWfixZmNNVjFJ+CTB44Jni62Ah2DeDd+9p6vU61i4swmdawtmo9+d2tX686YIS1q+lzfjOo8BRzPUU2/6BHlnE1OBpdGnNsl73Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772979894; c=relaxed/simple;
	bh=HGCa2GxOrHvr0WE6n6SGMm7PfZA9+bMI68z491iERYk=;
	h=To:Subject:From:Message-Id:Date; b=Mxuhgc88TnTwzVR7FNgOS7mIB66WntEyE/mjJHsq7WY3s2H6eY3RoTeP6j4jepAyFlOunYjANGvdZwcXrE53/H7NzuUSD633JcINGGe5YD2yuhM1vRjXGeqNXKD2pLvbxmESMiz8W61V5lnv71hS1UdaEXDxpT+zw33w3/an3H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENGsqDpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENGsqDpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B18C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772979893;
	bh=HGCa2GxOrHvr0WE6n6SGMm7PfZA9+bMI68z491iERYk=;
	h=To:Subject:From:Date:From;
	b=ENGsqDpSZk6isoFKkZ6BOMwWOvsEYjDDEtEm/R49FIiKxd620b6GaXIYtUfsp5w9m
	 DZQIKROP1urm7mLkUkiCYEFBiuR6acPCYPmt5O37UFLlnTv0XupSlvI6TVxkSI0km+
	 NMZR0GvpZCbNurVIUL9UhbSZz71E/qW2FgL5UOULkYhAeXAGlAJs0o+Fm6IEFMoLqw
	 Qd/GGiSV1oi5aqFp0NnSteYYOXrfZX4UJaeJ2xBymEra4IMca0SK3o7gWdgk4W0S8E
	 yzryEG/5E457KFqNqp9D0ZfCAR4DJoi/oVr8NNLWRVVT2sMPqC79VB5NBIkPpLDVgP
	 ahvujt8/diigQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94871FCB63F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297989357.32402.146230638330459517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2558cd01945bdd62cf8e5e7d75908e00fe884e809bc67fd5c65715829f6b1526
Date: Sun, 08 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772979893
