Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4632E32FA18
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792259434; cv=none; b=EKf2PaW/WfWt4lUXldB6l2QmGzVj39AnlZbuEaFBCavmEj/tO45jGmW/uDXyIDJ4rEHa3saSfGmJDoZ/VYx9UfnxWxEVja1oznNips+dpAruQfR1SXw8Gj+Orcuk5UD+RD7Ld0GtWD/zDMjWfOJVYvHKVAKLNPbU5wb700PiVZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792259434; c=relaxed/simple;
	bh=yiKZqsnjg6OZEYxfS+58Q4zAwrQoEmSJJ57rN75RBeE=;
	h=To:Subject:From:Message-Id:Date; b=u1xUIDFEH5FMqmt1rVo4BEw943QHlkDIkJxp+EvgSEZBYj+HahlvdZtHQZhcieDxtJGuCLl2HmqejMd18rFb0/TeIiE+CkVlg3GWSEFf6JRIr0utofD9/8FItKLy4eIaqnMl9pPAgrYjxrmkB4lybnsXofhjdnS4qiI4WU1eOLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLIPg4FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLIPg4FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7492C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792259433;
	bh=yiKZqsnjg6OZEYxfS+58Q4zAwrQoEmSJJ57rN75RBeE=;
	h=To:Subject:From:Date:From;
	b=YLIPg4FYHV72Uhx4MGje4GMn9yKP+kAfll/vpI1gPFZI5Kw3+RFtIKBXDMUsVz60N
	 cchTEg52jG1vD63JnleCF9rbVObNNLyvY4PHVPzSB8F0EHYnT54oa8Nw/szKjMnR4I
	 DgKqFGGhmH5KRlEX3ckM88xQ8H9sJJ3TNPT28SS4tc0tmNUDjqar/Jp84J+3j4EfzD
	 H/j9oi2RWUiZV3Uvc6AAkp7ohk4kkz/jbUbxM5JHP+3ajqiayO4GVm7RfPDiVw8hlS
	 loOeTLD6Yivu/Q5o8SLnAYPB9x3afDhL7BRfpaVbhv8NEaX4Hdil/1Szzgr+bjt1na
	 v8YKXzG9PUjtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D55CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225943372.4561.12652422641800907057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e2f470bb99168469f7e9a56571265121da5bdcdf74e7b61770f6cd88370d02
Date: Sat, 17 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792259433
