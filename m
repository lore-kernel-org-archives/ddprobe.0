Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17673DC4DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787131835; cv=none; b=PP92YwAscRE49d8nc9J7VTafxXDyFtoa4Po95EDBs875cK3X4mC53+MNvFkYkqQ17AaK2uvfCByzar0wJkRRBkyW9vPxe6K7josDgKH1JSqxJSuoOAog/ybEfl7glSfUIA81G/qmdejIsN9xsBqk3xjmcGAiVCB2+1+yozqFzwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787131835; c=relaxed/simple;
	bh=+oInW2uJZ9ar54TluXIBMWA6/0awuYDKwW9ICpDbpGg=;
	h=To:Subject:From:Message-Id:Date; b=pOht7nV6/D4RLRH4SGODl4GUPy3Ppzb31f2YDMTvN2RzEO4ytJZvt9d0ZFrwnGvFtbPgA52QjX9GWBNwHjonjHH3DwHnpW6IZoxhXs9ny6xeS4UkumbF5/upnmvVLFO/A/6LPyMO2H7hMLEJ9BKfkjlszN5lfhpKaT4SySySV90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=to528N3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="to528N3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6E4C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787131833;
	bh=+oInW2uJZ9ar54TluXIBMWA6/0awuYDKwW9ICpDbpGg=;
	h=To:Subject:From:Date:From;
	b=to528N3s8zO4Wh5fFFZ8phjMNSfYd6a0mfv9YKZnS2Fd5IMzEh6e/P3yh+YZ+2f1X
	 NiYzbephZ4GoGqZBit64zSgqqyCABTE8QlyZzStjwTZtlvxDSb9fADJocG3KvctXMu
	 3xoMfb2tx5qy/+ZOuAAdMp6ZTDujmKxo/6hredXNiAs85bXzgtibIsqfjZMJEcDZLo
	 QigWiQy/87olR0FVHQp7eXqD/9EeArYVl9zS+SiksjaLgube9XXN4q20xf7frJs/k5
	 n9ta+FYnSN0EX67YOZ1J8iUIRlca6KNYSps9N+h/00d4od7lJY5NfD56OaQafXwPqQ
	 ebmWXQkvVfNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2B8C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713183370.11984.6953039775698481285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a7ef2406fd134a7f3884139bfaab8bcad2cd4ff3140c877511b5c86ec5ef89
Date: Wed, 19 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787131833
