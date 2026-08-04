Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885FA3B2FD0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785864035; cv=none; b=IP6OZP5KByjtEpMi6sFC2rYM17irKFAb/HmTT5y/eoRl0xJXLt+q/VOqWLgIR2c1BPB8aYCNO5eSXGBDq0CjKJVwTLpgk/ScBppLlsSVbg2UPvLa1BEKmliTyXiIA9tZQ/065c3S5y3/DDfW0DyOfxjiycsbMSko50ZXmVGr0/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785864035; c=relaxed/simple;
	bh=MI4CPBuXCCUFDXlcVAHXDNqo0BzZ4SJyNKPhCx+yqIo=;
	h=To:Subject:From:Message-Id:Date; b=eLvttchmrgAXFu4vBDrSIerHneCcMONZNCpzmU9lMfR0ZaQEj7M51ztPTVx0cvTmAd3k0AlJ6485iUDLJTBwukjeu7Tv9ZFk0E5ZoG+1fESnr9p1mb1l6PiQ0tLx2vOqpsEgyomKaXQpuxM1jEOwuKwGek6MVNlWUnQtvKwwreM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6FXTAGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6FXTAGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE0EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785864033;
	bh=MI4CPBuXCCUFDXlcVAHXDNqo0BzZ4SJyNKPhCx+yqIo=;
	h=To:Subject:From:Date:From;
	b=l6FXTAGx6iXB7bqn3mZYDZzZD2gqhJjHC2RXHL4YReHA9DReOa1rdpPwsg/vjqfzB
	 fLAooAQetp4znvzT1Y36qOsA+VIO3FdGNp45+wll09CtUGql+trs7+i9m8TfNxauUn
	 3/O1WTYZFJIh8CFxAFnxuCp0GcqTDgzoyoM1tT0FgT9GdPt8eH6E9aMdK7ABK6MrGA
	 5D9Ks4XYuEiRJdKjTdnmj6E/pk+13PTzPVPFYkcC9/cpmikHnQMo9YgjESxTqF7LQE
	 OCko+tZPk/UbAMNEVdKioVyO1zi3ipjLaS9e+Zay0S7fkpPbmPFvycwOBE6KipJ/Cj
	 bOlVFpSn+rSMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB087C5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586403369.11302.4105529648001932669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2139ed58e412c9da1d58acd540e54a396cf5979a6021ee230b274686c99ce2b
Date: Tue, 04 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785864033
