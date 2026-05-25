Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4346A233939
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779702154; cv=none; b=W2N4DzIX00ZdNcJcIHAG1DBILFAgFFCAsSuZRpMXgQFAfZvtTLK76F7mvS5E9zrIRa9HGAOx9gaJ5KUI0pqitXbwD7cnmR55zWgcmFQ8ug8DzdIiNscxMa/7doq2tWnZO67VFrpQ4o3lMxPkB5ASgxSF4HRSC3nCboTEGmYybsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779702154; c=relaxed/simple;
	bh=Xr02FVlPww3n1O95cMUpJWbQwVtZaEZikrKUyUcBw+Q=;
	h=To:Subject:From:Message-Id:Date; b=HokNXoUkTBHDWfwxM72ERN8jC0tm7jtKO5Im6BUlVjwZRnVWmva94Fsf4XlY2jIbR+CwK/KI+A9IpokTIsUlDuOoqwquCa2QmLGrvGZPwlS/XJJ7mz5OndaBt0cv1QIRKpDfnxd/eocANHTLzSkQWykFpJV01ypxf8YSTFhOtSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwiMC4J2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwiMC4J2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D283BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779702153;
	bh=Xr02FVlPww3n1O95cMUpJWbQwVtZaEZikrKUyUcBw+Q=;
	h=To:Subject:From:Date:From;
	b=GwiMC4J29Bbgup6csYGg62ueCyQPwGgISkAFp+k++86VRpIxCSthitBrxZd0wLbXy
	 MNqTh1RpKFiY7K5UHloIXIhV9iS0e4yLCx/xkvaZ85QljjQVmVZ5T2kYKAEDiF3OVf
	 y5BfkR7PT0ktNjGX5+JCYeIK6hAzusM1DnhHuFW2VBpofxfSVXPYFiI//DHufimq+m
	 Zaf1ZfU80d4oSdfjypzfAYsDSHcVE85fKNTPVOkbcetjf0YELaVwaty0jIdEzwLmbg
	 mXgY/X9MUATri18bmvHYLXRqwBD2eDpaTCkRP7pueyHC/Wo44dsPDJJ93vQY/obC4G
	 l+FjUyy23qFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CF9CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970215374.1397.748786969134903332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9505b2c1d0af39e7cbd9911c49353227ca962cc1ccd545d11f4b0d1184cb94d5
Date: Mon, 25 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779702153
