Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D108F1F4199
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744037993; cv=none; b=dcz7P5u5lGsVn9UiAOlMEx1NCLJ4CpltUTHPo+jieXykexOHDHC2eWHGr47iYD8tuKseOFqKJqj+Za80AQoj86rfoqYy1w3bBW/AZKr1xbgDUX0/DkG3RgrEj3snSCXYx0yYXmueYQaDVw46gub6DdTpssGjErPe6k0xbs88WMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744037993; c=relaxed/simple;
	bh=mJfQbv/q88hVPbJNW2GiI/p5omCjfbszHAA5Q2Cla4E=;
	h=To:Subject:From:Message-Id:Date; b=SSztXczuPG18uDaop4uIwT4eYoSr8tSlADgcwMX+Zy+XSOKo3WeuYM319+gubiUfoX1oNEXX8q37ctJnPucmcAiQUsbWDAW8IUWCysW2Ll17VtWH1YOTcjkhoZ8Y8/WXeK3Z8a+twRO+0XkKivXZypTLwIAAJDE7FR/DEkXgh5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftXX3WNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftXX3WNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C2C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744037993;
	bh=mJfQbv/q88hVPbJNW2GiI/p5omCjfbszHAA5Q2Cla4E=;
	h=To:Subject:From:Date:From;
	b=ftXX3WNKWEoRtyB8ewEoudumqFrQfm9/ToLDX9L3KDHeFN2+elGDhumZWOmqZcm/r
	 YrWInWvPI63GzGqRvHilIG1YY0xI9emy4OxCDGoc8bWnhrw7sMH8HJIfFtuBbAjHw2
	 sy4bwjzEUDgNJ3v/hQpU0tK6rg4JweDMgkTDwB8eWZt5vpTFQQKOus4eLOIn2Pcj6w
	 7BI/YrC/qz4rzxve74WOxsPg4ceQCCx21dAsM0LAeX41vp6lhyKhFqo8gopJrzGm4J
	 z8vN/Ch8UGg0DwgNO0Y1Z+bowbQ0/+VVnSQueBwX7DDemRNeEF5L2mweW0BLpcG3bD
	 Pes/tlqU8yFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA5BC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403799361.23386.1454637632756780547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2035c2b3bc64e8e0acc0fb5bcc431020701baff9d3bff53d339d030d39729ef
Date: Mon, 07 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744037993
