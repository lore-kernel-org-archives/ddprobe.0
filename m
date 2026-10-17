Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C7D19DF62
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792276834; cv=none; b=M8Ta8qaGZfcnz7hOPwkhfXiE+x7IiA82ELjtj4LbvE7LMgzkclex7epqP7NjLN9pfS4LOvLAPAuV9lAETPA58S5O9qahvr7XpeJtH5UvYn3ArfcO2iqdXcMBcHRIWAqWB2/00U9dWm6D3Hi+zx0e3aJfIsa3REOQrE2orkzqFMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792276834; c=relaxed/simple;
	bh=nh2l+JP1BmT+Wd3DQmpO8665O30ZGkm6VC76szby/o0=;
	h=To:Subject:From:Message-Id:Date; b=GEQjaaASnwbfdSonutjdi//UTu/SJw6A9xoV8//GzfGOzTzNcBZtmvf7jAJh0dS3DDZbNtDAusdMiPvibRjnckp+hYMrhhRzKlUKx24KUEYtnoBKFrPVC/7BoNVPJl7qpq4MxXx3cZsm9z9yK/gFHLej8+b2qzCtbGOlJUh2ICM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxItBY89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxItBY89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE23CC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792276833;
	bh=nh2l+JP1BmT+Wd3DQmpO8665O30ZGkm6VC76szby/o0=;
	h=To:Subject:From:Date:From;
	b=OxItBY89Zg4xlV54rCVdmWYH2Dk0mTQ6KKW04Jc2H5D/tMebCWL2Fz/fKHiYPKN2U
	 lY5IE5NpF45AOzfsQ/rQzE5O019/HBpoHHwfJCOptptKa3QJaTcFkm56/msxHxJi4K
	 gZ6F+tprlHQ+8ohRdpk58HUmMOedugskWbxKH2QI7C+PZGYPyswO2cTTjMCai+tzmy
	 t4UE2dSxjCfZJ+COHRHWlavbYEQW4X3FFWoDPMccLywfINbJ7TdzCsc+n+oUB9Ho6T
	 NXt9n092iAt7AovCdwN+DASZBMDqwmILBW3JMSsOwhty1yKgmNoqnLfC4/Oh6tvuwz
	 XQ2i/zITRnaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4CFCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227683372.22915.2057203132591498625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8668a39f6c3eb29f37c08052b698fb52fd6bd5c1e14d651e1e462de8415fc6c
Date: Sat, 17 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792276833
