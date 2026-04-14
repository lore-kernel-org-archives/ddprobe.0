Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2195A2F28FF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776187054; cv=none; b=CxRWMBCN/6fNOh8L6APa5eIkSGBi2FO3/0B6pqCF74WuZAgA+uXkTjlTxM6SMJ+XWKCW6t8+oI1682CyrNa/VrNkD4BCYLg9hJEiTE91yPBoBs5/qhMuTL+X4ev1OSgaCkjX2yDdhLVnJNw/KKjDV8jtgIW1rSBlNte+mJ0qNT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776187054; c=relaxed/simple;
	bh=MxARCu0VbyWNktYPMrWSBuwOL2/ItdQDaOHz3hohrGE=;
	h=To:Subject:From:Message-Id:Date; b=XWa58QSUcnfizRt2cjfapGf5q/m5ayn7Vgh6WeBoTxZ0JJbbWaHv2x1DzEnUlMBSsVXuzQTmW8ZPyDg3x2dSkEeYnP1lCDDB/nfErA1LYraIzl/7fHk2cuqNgevOc/KB5KppzJQMWk8snLf3Y/ylg5c9AqCVIXCSr/x96iTmD40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+79KcNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+79KcNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98FEC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776187053;
	bh=MxARCu0VbyWNktYPMrWSBuwOL2/ItdQDaOHz3hohrGE=;
	h=To:Subject:From:Date:From;
	b=n+79KcNjaWJ5K1vlZnp/Z2NsxONNtCrONImRWjyufdWXzBMU1eCgVrjamxa6rjstz
	 QfvwHhm4weT3RtWQ0CcCIq9vn+ADIwJdvvy5KpmSwVnRTMICqj0DVsQF2YDl0dfz/L
	 ceZfsWqwgYs1RUel8BQVurVXB7/IuLWJ3hZmqvxgQUANKEgmu1Wj0NWYZakUCpo33N
	 1wymV6eiJyVLQZFnKELqKBNlQlVdEbK1Oqt3bbu3jCMdYgvUJJRRe19RYvad8PhDv3
	 wPUEoXeJSQpZLU7tb4jPtYdAPD/EAVocrZRGa4+msD3vHmzQRsgKF5LaefTv+Irmja
	 y/Fld+JrKC3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36DF9D0E8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618705369.24270.6672070714839026154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7345a25910e7c287561ba679f50bffeb7e191350af34d8bb8744abfee3c8c9de
Date: Tue, 14 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776187053
