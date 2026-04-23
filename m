Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE52764
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776902853; cv=none; b=AYRrXNOf8Kf61AzGeypMoJ79VB0k3yLo0qcDnVXHMQWqZJD6xWHwqfqj+WxOdS/rL4S+h3N11K69QfMc1qGJ9DfDP7f4hD/bjgVSAWWKOW9cZJGvt+t5NbAvTUgFdCYVgfa53waDshAyCTo1fhiDTaJi2JRwrq1QekmjSsisTtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776902853; c=relaxed/simple;
	bh=Togbpn1JBtIDYzdyZseUtBb55PEV+irWCBj3yXaMPjM=;
	h=To:Subject:From:Message-Id:Date; b=p5kpvkXS+RHQK+6Z/z+VOW8LHPlwjk6sJ+n0vSRkS0phkM3ZjOpFARNYBinE7vsKB69hVeaQ2VwV/4uhMvEP7oufI6FuyE3Ue0H9ffKeXMwMaI0hDEvBYj5ho6i6c32ndfO5KJf7nKD2RsDoQzuTxny6gJwvkXT66v5bI9PuFDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGg6DcdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGg6DcdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97D2C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776902853;
	bh=Togbpn1JBtIDYzdyZseUtBb55PEV+irWCBj3yXaMPjM=;
	h=To:Subject:From:Date:From;
	b=BGg6DcdTUFBSFoNhBcjRJA/NpS+eq7Vo0bI+s8yEXj86DXUz0XZ4KuHXGhhBVZZHg
	 Ashg9UT4DeN+qP4qQ+uUfrah2ronpv6bS8+hSF/tn3PPG4V3V2H5m7jfIvlZ8O8sUi
	 Us2K8ixLjbMNCiVdu30878Uu+S/U8Yeh4uhW3LrFTrsm7556ReM+mZlj9syfEsc0Kh
	 aRDwH1vmKFv26w2ld3ub+VDO5NBgbFI+RuiMZQlslcdNXaIcD1c/R7C8X2FhslTowG
	 cXzL7JaoL2jeQNtdPRb88QrxUwg0Pxjm76m5af6ycnx8F1gkJn7sxVSn4tbxcW7YXf
	 yA1WZolgawIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4EAFAD3E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690285368.25103.10846296870586590380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64ef677314b058b1322b203e9c74236c2fd4391971593618219634b93ce84f9
Date: Thu, 23 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776902853
