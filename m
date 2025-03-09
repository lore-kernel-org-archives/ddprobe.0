Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BC8190485
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741555134; cv=none; b=DXD+MT6psUkfHHXkRy8XbSgc1htYfns5GvW4QEdcAYV9+ONHssd7Qgjq28qMvnNPog5NNLckmSFdJ8jZAObcCXkWMBAspz1743HPIwXCd8u3YCs9kXzvJIN1DEC+FwZSjGfd3Zj4PIOqJAZ/+ry7aqOa7CEscidrrJjzEI7TVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741555134; c=relaxed/simple;
	bh=RTLQ1ZjrerY2xdprPBSMzrzqeoiCEJFESIwspDwaXb4=;
	h=To:Subject:From:Message-Id:Date; b=gGgUvHFKE2qjF3zIknMixO2GckK1Gofjqw8wN6x0IdepJmB6cKkiIwy8Z/pWsIKxygbHexKJ/1pxur1zMU3US6LridkcL8A40eMSxaWVGkdkxdQoJk3lr9rKBf7pAtJVDaZ/4WDwnbgCdqnGykMM5O6kSzUES4Ue8uQXFrnv7FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5eFAcqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5eFAcqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741555133;
	bh=RTLQ1ZjrerY2xdprPBSMzrzqeoiCEJFESIwspDwaXb4=;
	h=To:Subject:From:Date:From;
	b=f5eFAcqV64Y72ZHidlDs/L4wwbm1bJbZP++5ba+TeLYS19UJJ9a5m9P43ZTFHADH8
	 FQgIu/swkVe4q6QgH2dt91+YvSy4qcTfLa7ybELUN5tMTfU/cvv2IeuUzQCSzOL0fz
	 p1+QRCAP4i09/OeeTrMGazoznSTsIekkxtRhGY5yt/ZypyDTDphqjqMvqwIocmn5/d
	 avMc3aku2Ie262lubGqre4YAFI7OnTCHpfwtRrO9Diz+N0jZUi0q+g73NAkvXChgF7
	 Pgz7e9hq5FDzgwkwnCTow0JAgOoGk671YV8/Z60BhyhrLv3l7OHwx7X+vFQExQ111Y
	 2jBfzAcPZAXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9325EC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155513359.16273.9795655295555420913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7d96a077bd9fb2c7844fbd5fc945ed69437e97b4e25eaec50ef9b954a63d2f
Date: Sun, 09 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741555133
