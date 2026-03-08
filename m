Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C786334
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772929494; cv=none; b=UECo0HMcg3kt8iUFkrP80zTDIQlzkFT6jz8bcHNHrI1knl4NcoeIUCJx205nGq/shEFua7q4of2l234boqzRLS8eDV54BIDALJBsy+S0ECE6nofAo/i1wb3Czgfm9uCBP/xHlGKXsvPdEyTRwrfH4B7dMTnIr0S41BcCZ+ed0oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772929494; c=relaxed/simple;
	bh=vmK2G65E00Tz2VbxALzdXExDes4QXOI1PhwVajrks4I=;
	h=To:Subject:From:Message-Id:Date; b=vFlmM8De+79xpm6lIVqZClvYKhGQTKc8sGeS+Q9npQrutznWR3ZMbAsQNXGovHXpAPrOHGTSWfP+uFlkK2IdfbNXEMmWiYJLj7qZwI3aRDQDtsfj+Jq7tpWSFU0KcVhq6TJN52T2tpO/QCBgoL41pC4/WvmEP4UyjNUbxUtiubI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebXSgbvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebXSgbvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE639C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772929493;
	bh=vmK2G65E00Tz2VbxALzdXExDes4QXOI1PhwVajrks4I=;
	h=To:Subject:From:Date:From;
	b=ebXSgbvpxHpPo50p3K4CwrmWxfR1FCYrguFS/BoS92yYmbYlKvfBdVsXTAKZZx9Gw
	 hZdgZikBkV0aTWxmH6y8EVeS2brNjIUn4xrsvKFCReQD+IwwurH9WQPIIHEIJmqdLy
	 TLg+5s3xW/LpvOXSv6d5E09cY6LkqQ4XmY8+tiYcF+/b81kMHo8v8JvQ2tDH7Ra6Hz
	 QbB6wSd1naC/i766eS0qw7L/Nub3ysY9t45DFno93JkmqNbMadisnEhkKcmrskp6a3
	 wOJFId4tfX1ODS7eYSROr5jwp/rRY5rlD/FwEcmsrhtwpOfkZLUzw7dLdxZU/MDqjP
	 QYYxB3sL83tdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC5F55123
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292949360.29233.9619839076405920573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee943232829d37e585025199b283ab1fdc94782f4ee7b8e91542501f268a5a6
Date: Sun, 08 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772929493
