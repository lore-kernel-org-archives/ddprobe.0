Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7AB1DED66
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736246154; cv=none; b=Sq7n4DFkR04OVL5UDG0z2tnijL2BGZekVS/iaB6IwIXMYDTXXkqJjjQSr2MFlbuJL/CYJ4AcewJgfpjc7dtzHAeh7uIyzuROluGh7tZmSt7BkEN7COTlwgVjMgPl7DJOe6775M379sZn79LlTAVBCQacnzC+cx4tsAVhz2U9tlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736246154; c=relaxed/simple;
	bh=yyxKLTsczlPAbZbDjoA+3kfjAnxP5M3LkEnSjLYsUQM=;
	h=To:Subject:From:Message-Id:Date; b=YHvzgPMgvzoItMF+LtTVkxIp+2+/c8giSEBu8rh7cwJeIjCXrC87GEVw5iTTaIv0UtEJLvVJoDjcIAVHh8St9jcz/y5nWadnWihSwjHmufsipEA6b4ywm7MMkI44XzBTCDfZELYZf0//ZIcxQmD6z8Qg4kQ/Df96UYB6L7SXHBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHi3OB7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHi3OB7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB741C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736246153;
	bh=yyxKLTsczlPAbZbDjoA+3kfjAnxP5M3LkEnSjLYsUQM=;
	h=To:Subject:From:Date:From;
	b=AHi3OB7wqaLRHxn4hgk9g2FKh/R+eQ0A+qg6EP/m+gLXuQLPPkZtqWuVaHrsP7fWX
	 0aUiKj2zUXXqS/lPfswBDL7XsNoYBnxcPbpW1oYAb+lwmW/pn/spxhmXcSP6UrPFYo
	 uJ5VMhZ1ZO4kGNsX2dc0jqCOj3qvglwjkTLiMnuivyezf7vGLVjNkZRBhZDAC518ll
	 FkJ/P+hr3uUpgFGJ7JdDc/PEW8NSQgzHYUJY2/MlWgc/sM1RyV/lA4FjMNg5DEvt+C
	 EVXssZSwmOEzKxZd7bSnYUIJ9FSt2dBBHM6HEz2tIAkR2p/5iMjHEpWDKiC1GqvNIj
	 gqtrmFaa+l3Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99242E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624615359.12228.1796346061378894839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38647e8aeec9dded101d1bcf7fcbaecec88333845a7938da576b4f12a5593f3a
Date: Tue, 07 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736246153
