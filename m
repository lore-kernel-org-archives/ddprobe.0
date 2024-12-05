Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3423F17C208
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733381754; cv=none; b=GN0+oigxDw5GYYYn1oMJHmfgJZETfmzUQcsUnvnVS1L2tjKYSg+qgr3cit8MKYb9iAQw84dOtzwDp/WB1FVFg08JC3YMIMXHNMfdd72KaaXC+iKL7DvVyr1DXWZRibCpetjay9VpkzucV0H12KHmXgUVNE43K6GiGzbLPrUFbQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733381754; c=relaxed/simple;
	bh=i8/xftWWHyZUgwcGAYBGrURYBlUCBHdwRBawiiTYGQ4=;
	h=To:Subject:From:Message-Id:Date; b=Tb3xlBzAQ9bUPE7yQwzDO0dxO67WH28D9ZVrrRINrZ4ggNAFCgf1yy8XCcgNdj9/a08jGM40QCIB/mGZVZiaDEEqBJcJ7jEAo7FSIq+wEBrUBxHu3ckBsECs6tT7cAb60YtmiLU3EHkalO2N6tYqLV+qING2ETYYxLxP8UN3my0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEUAY9BV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEUAY9BV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D4C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733381753;
	bh=i8/xftWWHyZUgwcGAYBGrURYBlUCBHdwRBawiiTYGQ4=;
	h=To:Subject:From:Date:From;
	b=MEUAY9BVEscaI9HAynB14u1OSSWGFzx72HsaPeTCsBfr/U1CXOhxtmXHxhG1FaNCR
	 4RJfaa7ADYO1deeTST34EN/fIc2kLm/tOet+HGOEDItNrS0F/AbfUYp/J5C4qpm9fi
	 PvkUwaMxOPQkQW7mopgBEMrXfnlTmFNiRP7YAaCza8+kI+iKnrshkiWd1lx3fgORCF
	 Y1wwsZmyJrBAqivz8NQh3/7ehpzXen3bFkabtf/sZM509HhBicKNOsNlbt5EDOwIxI
	 64DBUVmH1uX+YwcKYhLIGsyIhgEGXbREX2SSFK739HAsMXNZPGYZNB8NIL5fvSMerl
	 jcXyjZ96lFclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F40E77171
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173338175359.32086.9641292444618066572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43e871b2bc60e11e5fea62ad111f28c711544a3c723c7890c190a1410a1ce58
Date: Thu, 05 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733381753
