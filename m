Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2D63655F5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779909154; cv=none; b=j+Cah7F5SBiq716v6reRPwmSy8LgkxTGaqzoX2B88nT/SuX6PKrhgOMquNCsGIzdKAwnkTmnCDSnngHGwIE/WThyoLu2eEHQ4Tv9Uqw5QelBQz1IKmS61CSDqjRH+qRhab1jGKFVLkO0cgq7SCLq0R0ErJzadZmODcpNq2kgiTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779909154; c=relaxed/simple;
	bh=RYdinvU8kAqlVRWv9iPh0nDDo0zm0wgoiSa6xH7CpC0=;
	h=To:Subject:From:Message-Id:Date; b=PQvPaczmiayLaZ8rKz78OdXb0UF6S/fScjOIf4inu0L+TpN/d1xqpaeA86QZXZ5L6DNM/e8I3AxYKP9On0ZqZ+UBFJ9QLA9T+ku4nqrfSjxBXuS7eKndcEGuY0x3Jkk03rjxm231A0K9SWjQ6asRs5OtFnnoiuoNLzMvhLIPYvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laEru8Ox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laEru8Ox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EA1C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779909153;
	bh=RYdinvU8kAqlVRWv9iPh0nDDo0zm0wgoiSa6xH7CpC0=;
	h=To:Subject:From:Date:From;
	b=laEru8OxOPG8c/QnzYWBNBXCTzKDH89Q2jNwOC7WaUz2Qlp3SqwqWCAUZvpIx0owh
	 Ars/SRkXMDT0TtKofHQO6v3U5p+02ez6tcnqlh2iZaUCkVOxMLZuLvC1TBt4Xg47xX
	 BWPkUi50N26cpWHcO4oy17dPv2ZnlehO51zRubidnUsxus36VJzYuanXgWEIrf+8ra
	 OvG0XQje845cR6LsKjEMFfxHe2vOt02SRra6/T8xgIGp539pnvihnZdZF/L8aNi4r+
	 5be+BonyVxepQh0/cUjkzZVR31SO0SjT9oMP4N31ZUtBZUOypkzx/+l4WxUGfqrjai
	 ZjNlhNVeYahIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB58CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990915368.11082.17441657554127609906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ec75aecb73c2d68b706bcd5feef6d84536d1715a77ff6701048f8325fca6b6
Date: Wed, 27 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779909153
