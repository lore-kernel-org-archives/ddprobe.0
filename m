Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B828FC
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771106694; cv=none; b=HzH5fAmWTTFNFuZ4OR8nboe8UGcYU4ykLEhsdIz14ZrpnVJCOS+OqpsVODfubG43PudHbzIKJZ8m1RPVDHjE8HtGlO21ClinkYvkkZ/HigkZXOqkAWj5o2BTVknSA0z4lovzOH71g3H3gZ0wxUCEjujwVmFhEU193J2J+pmhPW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771106694; c=relaxed/simple;
	bh=n7MzzohBpJ0eOjfKZfVRG6jABABoiVZMLJ1Wp8l1cfQ=;
	h=To:Subject:From:Message-Id:Date; b=NFxiSSVkMsNX4UKvUxLx6Yg2xPJPdaEDptOGwoh2tLXWXFde17SBp3rX4EvFtthlWfAVq2HMZhS4Mb9paVS5+H1Sv4sX41SjDzb1EQwuCcLVvwe0HUGnrSewid7J4eCLxgpw0ev0MxxVii3lA88tOj/gNREAV8M7keNF1PoCr2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+Yhirlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+Yhirlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AEDC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771106693;
	bh=n7MzzohBpJ0eOjfKZfVRG6jABABoiVZMLJ1Wp8l1cfQ=;
	h=To:Subject:From:Date:From;
	b=J+Yhirlup0igYU5FJqYwwYwmQ/q1XUeKtcHDkfDEc+9E5VoTQQCEGDr2c9wpJG9L7
	 Wpmyha6QTCMaCOL7iGdQ+Z/DWa/yaMbZKm6pnC9//jUE1VAbGknQlEf6tkFO/cuFC3
	 VPleKR4qLd/WTo5FIZmIf/ktegCC2Jp6kmBTvGJfa5O083PWuh8HGsQavB+APbYmXQ
	 uWas9lt9n6gRX9YQWGeC3FaN0vw10bhPGPyurGIGKbssNYxR+5BwXFvTdsD0I66Z4D
	 5/ZTXlgOwSUcosEI/Ntq65/WfqPOkIMFz+FxqitkkXT/bmAJn8wtFYomdgS51zj7fd
	 0Lj+RROu2tr2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F6EEF5857
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110669359.15645.318773185332686747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53fdbf04aceb222c1912b3a866a6200434b3f90059812a56a9f41ff7450d81b8
Date: Sat, 14 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771106693
