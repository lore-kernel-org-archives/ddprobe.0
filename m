Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9143CEF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788391834; cv=none; b=jjpo2SHcHRDQF3jwTa1OqtlWpryf4WhoF3ahv1SG9v9HEILa/k5n2cX42zDCIzmBI5HZ+XT4cDKO900xt3hnqcLY3Vq+RN/x/zezPGcES/+DRQpMws3iMu4iQOMBQ6naJeFUswVavwShWzv1yrUk4EjCQT6er7pQER6fm3QQ5VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788391834; c=relaxed/simple;
	bh=2IG9aZMJRCaNqbTh7ES+tX3YYex8NhsFnrkALeseIvM=;
	h=To:Subject:From:Message-Id:Date; b=gF41DDeZU8LRQAqzPoDlst1i272GEt0uO6wk7G03++Bb9e55uiZRAaMYSTuLjTukrcajadTXO4GwMrv9mWm3CxEZKaP5AAegRcSMBBAbnSgVb7yGU9Qum2Viy/wQyu2H33SDgwVKlen5pyXAMt9zymWYhxmH3Y9OxxcYkPDwY+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrmtg2Hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrmtg2Hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDD2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788391833;
	bh=2IG9aZMJRCaNqbTh7ES+tX3YYex8NhsFnrkALeseIvM=;
	h=To:Subject:From:Date:From;
	b=Jrmtg2Hd51SQ/onT2eslqu2HE9JDFfKRVxTUxQ/NBm91+KitQ9TreLg/+zXnKv3u2
	 4FChCRXE/QRc7w8MGgIjzd3rHKKbYyBvqCr4y8SqhVD5JMLejmvo1gBMRvvT2Y+LYq
	 IsJXix17stCko0410S5Oaw6z4XFkxbhfs7s49T5Kmr5+9C4jT3HfwV+8a42+sw8J5i
	 1J4qpq0jYuNUuD9Z59cIGnESYgOrA6vmpnOEDAAa1HIsqzeN1IBcwy7IL9e8PqI31B
	 SswNNNlQdFpngFpQ4uokAXiQ0luoNlSbUx2gKTasgBLmK6pYrCPSFI9sOc2OTqT9h/
	 lRtbZ4UfNih1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB178C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839183369.26458.7533534968626238435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c313443d1017b532cb2aecc903b07ada226ebd28b151622465624543b34e97f2
Date: Wed, 02 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788391833
