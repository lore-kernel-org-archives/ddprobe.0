Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6802ECE95
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275994; cv=none; b=iTpQiGuycA8g/AwaY/LNm1AnNjPuJW13/r5mOBoqv+OmXKBo2I2wuTnFqHp+Ynk/WDx588SlHnzHhkHejM/kDZGDV30CLpBdooddjCeH08pRck12Y7LL7ZqEhj8OrjnLz+xN7/4uu+UGMd1rJIZw7nVDtCJkuY9WpDrRbtoto9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275994; c=relaxed/simple;
	bh=fHXHRMheyQdYnEcta71snrj0NyFB6wxOE2axM570VWc=;
	h=To:Subject:From:Message-Id:Date; b=YNEu7PJAppE8/voA0XDEDLGwokZ2nbZliWTYsfri6MwgnlMQbeIA+ApskHdaFjMzbiOqWAvwxry92zkQRgQlEyZ+EJpe/2JOYnqo+N7TnFJz/A1JwxxaspQYCKPg+vKr1u+2EarVqvrmC20V4HzyNCkf/KW7pODyxGt8J+jvSRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0609KsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0609KsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4928C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758275993;
	bh=fHXHRMheyQdYnEcta71snrj0NyFB6wxOE2axM570VWc=;
	h=To:Subject:From:Date:From;
	b=o0609KsCWM0Gi8gJSvMpGfc5bIH7j9mlusNXNskP00MrryAJQjBp1P8uMxmW/J8oZ
	 P4GZng/72qTCzKIrqUE+JJmfHpIobfPk9Nv4AePqnhkZzfwp5CwukCdEPXWL42+HPM
	 a7V9T9+7DQHMfZLiU3iaYj1X8ft2o1kxezeTznHW00cu6pZ6z48BZ/k56JLkuz+ISs
	 tF4QO+AbTHKlHJFLkeSwqX9ENekzODp30AZxSAiPNgFL/WdXeU/WFmkxnxk7b3HVGF
	 gg5bR9CIeXKBbGuqVch2JFQ9xl2Btih1xD18tdVOXWeFSbDfY6TK7tW68sXfCqNQ3u
	 l5YbBLXq3X+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94819CAC5A9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827599359.2017.7982150481574740081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b211db43c8edd176fd857564dd46c163a9abc72b762c507976c2abbffc7ce217
Date: Fri, 19 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758275993
