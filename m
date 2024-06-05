Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5340349637
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577183; cv=none; b=UNOjfzHXnn09PY2KJIjtuNJT5wbfe1+OkQMDEM5un98Wnh99eHc5T0+e6fi8yHulU1Via9rEXM0Oz4wKriwxfcm7uE7N3YXndtPdQPfqYEzi5OIhMe9kgXkrQf06LNsxkUMECkORJ4S+Nd2FiP9+tkKNpjyajtD90U1QKmKRMHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577183; c=relaxed/simple;
	bh=JZPCmw+WHSJ5UAa2HZBf0wmJLzIdxNsVe4JnyV8Zp9Q=;
	h=To:Subject:From:Message-Id:Date; b=t4aHfVf7ABs3BxyxdNjiD5ikEGcITSZMLaFE7jVKPNST9lnewSukECExbzW+lSaim7lIwdbLDxML2XIA3x4FxFychrDf7sUrnktcX16FbBMFowZWQQaEl2mw3Y1FyPm8e5Aog33+Qp8+Q5+LVxRwUmwOzjboGgy8XPCHDydka8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX0F31Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX0F31Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32A7C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717577182;
	bh=JZPCmw+WHSJ5UAa2HZBf0wmJLzIdxNsVe4JnyV8Zp9Q=;
	h=To:Subject:From:Date:From;
	b=dX0F31Y/n/he+WPNL/iFSHJWVhaVO4SM+DPj6YXMOMbUl9Qmc6U+nbgikvSShK9De
	 P4fiEWmbb4rR2u68b21BIDxQx5LVeNYuDPQWl7H9sVfP92EWjkHLeHAt/uDxf5ZzXo
	 KeQoDZn4WNAQURVH3h+l1i5/Hdm1uFiNwrtJFkIDyJ2ryyv7VQ3KOK7s/2upo5Z/fl
	 3ZGj5FeZzKcBZW1MoAPPVCP4DSNEf8fayAEp7RscREYcp/X0e2nJvWUseSdt9PBfel
	 XBy6oCwnDdt+NzbqKcsIiIoh+5dIQODEEGqCk4I39v/4FB+VQDp4gZYV7RDS/PuQLJ
	 vIGmTFek82bTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2269C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757718278.1337.9872628775103583029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d18fe5f76f883099a8e26f03771ca0cb68b8e73f1499c6f6b9f077a35fd56be
Date: Wed, 05 Jun 2024 08:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717577182
