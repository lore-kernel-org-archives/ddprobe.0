Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA7C1A4F09
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734731154; cv=none; b=Qt3T8Y36XkSspJfSziJuCxJC/FwBG7Yg7kQyTRoytvUas8flgyjKR21KrKhWPbOF/4rE27qFcPOB3dGIrrtJL0ad5ZN5KDu7h1QqAeQIwduDlfsEwW1atSCjPYliYeMUH0PdjaeZLMZFTyOIoLrV/2gBWC4kzvNSePTZYI1Y/lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734731154; c=relaxed/simple;
	bh=MUzzGg3nqIGmLMjmnHAMRO9qQKSvpYzMb0ky+EOG9U0=;
	h=To:Subject:From:Message-Id:Date; b=NF/0Q7EmnD23xo1batrk0O0Oh4XGh1K8N6DRJAq+7N4kwYb9AtAqI/XVDgNlws1AFZdxuEmupaGWr+qx0s6SvXlhG8eVeKeEqRUeqS1xcib9NBMuLmaRNqZXY67NjJTY/02GUDqn6VTNqIhJortBnJSa0sN2ULlxHakksM3Tkgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIWCequ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIWCequ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EF9C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734731153;
	bh=MUzzGg3nqIGmLMjmnHAMRO9qQKSvpYzMb0ky+EOG9U0=;
	h=To:Subject:From:Date:From;
	b=IIWCequ1jPAMP6Zl48LDbLrnpteEisMLqfS5P/Qv/MzIEMj11XwW3xrnJYcRdf0O6
	 2LswXV+KF4bmiCr2HGKS3soH+b8/1lGaqO2fDtIcSwPnjhpdp6pdlbq2kjU04bAlFj
	 IOdfSYhZLXLdDUnJr3FBunTnocNSMMU0C5bBhnPn1tiUcGF4AxjpCn5neTqkSVZ9BK
	 SfyorI2F92jD3I1oRXptUw+2gzrvrMyZCoD6pWEUNgedXQn+gzM2wdZUW1j6QnFG+W
	 tAAua3ctV4/TJRB3gQZi13Dbt+Oden4AIRf/34O8ZXggi15z0NiUTq4OzKUMOSwhC4
	 TdZ9zdaq9nGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EE8E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473115366.25411.4121620093824651789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094248fef4e88911047bb6b59b88373b78b79197eaee2e891977efeca4797462
Date: Fri, 20 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734731153
