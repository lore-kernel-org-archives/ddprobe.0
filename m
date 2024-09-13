Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF5B146019
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726260954; cv=none; b=P+ybejG+5wMnNM5B/JsN6JmwVG91pFZZZoTNegUQTrMa0f0lfMMOitgw+NidZLQrCT8MoVEVOppZaXxFMPRIJwoxFnlRXxshDlPkqVM95drpX7W+VhlfVUJTa5G71C9603HtL9hGTsAD1y9dNQsS8N8vmOhv/YUBwVafJwKh4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726260954; c=relaxed/simple;
	bh=tqQl9AS8HbOUaNLOvH4jmyRqB8D4idKvOmYiWwYkHbI=;
	h=To:Subject:From:Message-Id:Date; b=HqrAQ5SzfnHbFicNIWN4z16bBYw2+bUIvwUccQPX1TEp/WpnBlfGhC1FGRbi6pjoQsab56plAge/Dk/eKdXCz+hW0cEgkw6R+qu4AK+PJYdY8K2ct+nXe7jOArPYNg3Mlr45gkIpA2c7j1UqO9jF6Ex3lr/NjkaaRpP1Tn+m680=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPsNQFTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPsNQFTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB5C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726260953;
	bh=tqQl9AS8HbOUaNLOvH4jmyRqB8D4idKvOmYiWwYkHbI=;
	h=To:Subject:From:Date:From;
	b=gPsNQFTDMGid19iKK3sRSBQaFxaKdqUfh30T7/i3BPHKOo5Se0zNkF5hZnSPd+yF/
	 Av15w9QHO8vfblRbES+/y3bHanT80Fem91vpI4BFC+T6Lje5kYoCK+VR9vqDAaoo3N
	 twI0LLhw1PwGFjVj3mdI9RnOCdvGbKS5q+zyCD3WWtkWreheMri5LKSgWNIE6aWCYc
	 aywkQe6fVGxP9nZNVWkb/nqTcHjvoQ+3yyimzBD3tl38EVV+o++LshsfnmgYXGiMow
	 cPHbdkFBSTfWu/WX8BfgqOrUtr9JR7EXXMz6m2xYKYFTxQwGBkzbsuazYfswoENmk+
	 uMKfSh4YC3w+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B8FC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626095358.26352.4252088334768336990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6308e1ca3287f5843aa69ed829e73ca795a13d2dee334f6df7ccac5b52b6e4
Date: Fri, 13 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726260953
