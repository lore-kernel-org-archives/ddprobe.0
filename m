Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DED82D8DDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776894454; cv=none; b=Qp4VCKo3sJycOCafLtNXgxg65rB6+6FrEed1A37IdOchhRS9eB4+o9r65uvCz9uEBc46Wd8dcI5yrB+CF39pQsDYSooHZ/KutdZVcF/0iCeR6qPhPR9UA+XHrKzewlRZ22gHdVfK7XTCtvTDubKjqylevUadHGWqL6ob1yjiBfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776894454; c=relaxed/simple;
	bh=KnJdDH/xdXdo7CRByihVb+PQ0bFII6z403luaZMglkk=;
	h=To:Subject:From:Message-Id:Date; b=tBAW7/OnlfRlwfRi1+5V9tB2MuxdFYDa2OV/TnkfEp6HdQcIv7/ohFsr4B02G0ccDIJbPuMigFslS+Ypj+b/en5nta39wwBSFCn3iA7kp3RFsxfWK8WM0OwA1zXJVGMxbKwNqRSBE7wPZJ/fe7a/IBEFR9Ksr4McZXs0/l/yxFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDseLm4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDseLm4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB046C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776894453;
	bh=KnJdDH/xdXdo7CRByihVb+PQ0bFII6z403luaZMglkk=;
	h=To:Subject:From:Date:From;
	b=tDseLm4srGUqHr3qBvCuMTkoemODCtasU7Q/lIhncId+53sgILG9+frHVtIoQZWT5
	 Y1KTkyQe2pX5XIFS0f04XtDq+w0lGObHPgl5X4Twq7Q0mySwiHQsiaA2myyU+o/LvV
	 +yo3pPo+gaDL0humawR0BTlpDTgHmf4YI5OVefYmTNqaxibh8J+dDLl4xgkNia2hxL
	 j5tXAUgIyL+zuiapJAkm0d9KP0DRF6fWpZk9gRXcCPPNaIcFmTwxajWdKZcnAvSO8u
	 kr8fc31bwNWn44pxMlmbNKhr2yT9zUPgvMvNdYyOG2uNHnr08AX+Q004Cpvtw/W4Hj
	 Nw8un43+Sd/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5BFA1FFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689445368.11606.12642930829945433087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3471c0e7c7bacadf36efea0d040f285142d7191e1399460f3fe4d8ac80e77ce
Date: Wed, 22 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776894453
