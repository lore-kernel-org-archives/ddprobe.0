Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FBA14E2ED
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730487954; cv=none; b=oPrwKYGIuSGYEjlsu/OgsGqWjDHqDoNUcklKJPTRLbXQuOdfI+xZmRfwYiSgWA3FWhMHJuOcQUsBjrIgwTvHKkOH7WYvxbkBNZ+79WjERmbYPq2Y0+vK4i7lWGxSufYY5HYsX7TUfLinV3CVUJC0S39AEczCCB79423iKqgXREg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730487954; c=relaxed/simple;
	bh=RuOl1bht04RmFXJHyVc2eXtEFJx7kD0YdbNzDSSq11w=;
	h=To:Subject:From:Message-Id:Date; b=odFmgrFxkvtLzEJIf4/ZOAJAkll/74VT/rxW0y+ilzLOqIIhSxx4qXSXnnvYadpF2zIaN07GQcMvpIop40YD8ColzlIMGHyyz4yCLg06m/PYAWSNM30VUQ+McN68b+z7i5qZY2ZeoCTiizyZHinrPIFIoy1I3zJ6BgQKWcFAeQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVUzOkbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVUzOkbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AD7C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730487953;
	bh=RuOl1bht04RmFXJHyVc2eXtEFJx7kD0YdbNzDSSq11w=;
	h=To:Subject:From:Date:From;
	b=JVUzOkbzEOQUyp/JdbogCCRTLSgX0OHEVonN3EWM7keao4ChVBrQoeB0GPUR1lsLj
	 CBIsFyqGEvUf85DEEwg2W3wWA+qBn30yzGRYD5N7prpxi/1+EZNuENtoasQT57i6Nk
	 9T8TcQp1ilMtqab5cwjjHjVJaDW0eA5d0iY4OAdzy/hilPbdzsPaGB1ldV7hvOuxkM
	 vEpIMDrHPDMnkn7IElZ0COj+HMC9UbIcLDG8uYBDsLLDPhqRODZ1U+Yd1drVFhYjWh
	 9eu/FqP4gjtUodioUbjE7RBGYk9Id+R+K7iP98js5oK5Ue7u1p8vt/fm29RPdx0cBl
	 Z9dS5pEgXY2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2945E6F07D
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173048795365.29361.9374096855002734720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6eb0511eca388b68bba26fd5a473556f73beb1c6ccaaf23bb5d8c494a7dfa4
Date: Fri, 01 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730487953
