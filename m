Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545B256C6C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778454034; cv=none; b=Mi1KSsHred+WbD19eu3+xyhz1oTIWGMpjpPRB43c88La4LfXTfkaVA+dFw1/hJ/uhg46/ha1/VHQ259xjhM9tv57wVtS3PjKh2B19dcWUGSun3/vyVOQhb4lGVQLBrXXdye77/QLFL1lR56aVfDp3gNI3ugdkjl8V0ydN2OP/8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778454034; c=relaxed/simple;
	bh=uxSeMPnzp7zoswLdB8Bnbdz26IRZK8jbR5akdhO1wps=;
	h=To:Subject:From:Message-Id:Date; b=qZDAlerA/oYS819LED0TvFnNcDoIVBkzQKegKgi40UwNIoN7AwIG8WLnCRXCX8ehCFnYX5TW8WZ3Wcp/skYiCN0gOAAdFsU6Z79LeEtIFEyy+N7qQ109F14aVNgi2MW1p8GNThjsrbwqWc7Ty57x9DlB6ucLG/OEL0VejDgdprI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAIuHAPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAIuHAPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD170C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778454033;
	bh=uxSeMPnzp7zoswLdB8Bnbdz26IRZK8jbR5akdhO1wps=;
	h=To:Subject:From:Date:From;
	b=PAIuHAPdLIPEKVvRKDs82P0vRHx9uNMskMeauNnhZUqP+YD2gHf4UKPgwee8Fnk4k
	 vCmq1ReK+yi6Iaw7nTo0H12vUdvqPpw6sDBLTobKNdoN/W2l1wuBqZMoILrzWBkk2I
	 fQllUzBxDed2pyKsAjtPaxzZgbrXvMIxPifVfnso7q98PfKE5/mUc/sY5v5AjuvqRo
	 KHnd5eN/E9c/SCJRtarP7b7BhAjAx0iSM9+XnCe1KQUmxulpzFvRZe36VoQJ5+PPno
	 zknkHs3O1iaxqwBDEFQhtJfyPmzUYJRbuBQjxnPaRHkyVA7ayrW7KZfTnCfnY1QmW8
	 jqK6finiYofOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA40ACD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845403373.4739.11638698136553111941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925113dcc0cbf69cc310af61f2fbe3e35d459b35e0c483684d2ec9227ad681ee
Date: Sun, 10 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778454033
