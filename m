Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A9719D889
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717597043; cv=none; b=OiZ6INthMyBQDfoZDdAhoStloT7Ih8ixoxUWE3mne5it61et/r3kV87tQdr0q/pjeMZCsT18ISwncGutk55rX4y8vhJ6aCQ8Iknv4RIU0ULcpiFBqIP7W81pTziicYH0NJBX5zmxovbAcZxdiG/TnT3CzYNdaDUHyJmyodBaTwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717597043; c=relaxed/simple;
	bh=kWEzL6q4lijpqP7toS+5OnSK9xFUTljMafXkJjM7U44=;
	h=To:Subject:From:Message-Id:Date; b=fyMqt57Bwg54Hxkndi5wDglE+VEFDOrlTle3Zw4c4pDYd5igaR91N22Z+R+y+7VXJL4m5CDJZz33CXfueWv1HJNj3vXStH+XByf0X3kubq+uwvrrAl9bw1mJA+sByXnT9HKchfNoaEHWQ4+XPJ5qMtguQej5Jj7ZtNxMuC0b0nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX6e6gkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX6e6gkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E84BBC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717597042;
	bh=kWEzL6q4lijpqP7toS+5OnSK9xFUTljMafXkJjM7U44=;
	h=To:Subject:From:Date:From;
	b=bX6e6gkQPWIttPA+rey3DeGcL2MdIptIEAp1MKpHDP+nN75WV7V3708jEvIs0orIH
	 ZszFcuYOWGJxF8qkzOmRu9JlCnTO3Wfx8GPc6/Z9cAU19Elzwa4b+V0OaRwzIYA8z8
	 sPRj1rzH7TXgSF4nEiszcIO0PAe2qoLWbOi7zeg4H6icAjUn/ok8opxRdrt0yxj/k6
	 eDF2ETGsfYJ89Rtqd+DqYRDppX1Q/Fk9Yuf4uSfawduoJd6g+PGZvtt7jXm4njWLYt
	 x5Ip9P8h9jPxHXJA83pW4h8fi30sty0oGG14mjWfFweqsJdAlogFIc8VnXKMgCkUjp
	 Zhv+D1JWSwDNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7824C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 14:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759704279.19209.1207483150643385965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8117ee4eec035cdf4bc12e4bab8950aa1feac6ad56db2b1134b41b5932e0e26
Date: Wed, 05 Jun 2024 14:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717597042
