Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D99B21FF4C
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762571394; cv=none; b=iHPH8SdrhxkhRHPT0LK7LiYSVs5a+WdNbebccZyZw7/w2JKCpmKqKRI2cnipwT5eZ2Q9fp5C8HYKOM1AFByznlijri4DjqkxzD+lsR7IY9rFJHBqtt+jjeio060sx4h7PBVT1RUh/hNPV+MMohZjWtjeiT5nV4mqjvrkxp0Fw7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762571394; c=relaxed/simple;
	bh=pIMaSX0LXj7uGMiqGSRAAnya42O+R1YxTd94AkQhL0E=;
	h=To:Subject:From:Message-Id:Date; b=kZuYok8XZ/7O2BR3SAgt9jyZbsmnQz+MNHIFowyR6RhP2TicJB75EwDYBzdcEq5oY1SNUu001BVPgmpsrhH85ahRG6pM1h3oS+AF1CLyzbJBATXQwx69jYExdmwOWoV0AHkPnp7X/5YOvLbA+zG38Dvt/teoKAdYSkyZiKT6c5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj98V4qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj98V4qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762571393;
	bh=pIMaSX0LXj7uGMiqGSRAAnya42O+R1YxTd94AkQhL0E=;
	h=To:Subject:From:Date:From;
	b=Bj98V4qvTzEufJmKpvEGuAPjjC46mD2omVWCzjrnsqY4hT7pOBcklmwf9pYnzfYRI
	 dHJVDRxUnfTnrYkjtK7xEExLpyKB2uiCj4YDxG7FRWHsu9SnITqv+2Aa/rRFPagW1t
	 ehCDoAbbfuGpPdkJOESEcpLt8LnUPGgZ+BQATE8/lk7uaQK8y3tf7LHJf3rdjKnOJa
	 lnFRFH1i+wEmXs4jPYoE0xymp4JS/SPErJejqVlLYgNrDaqSjC2T96di+pLEinnJno
	 2q0xaPcpG0bsfqeB6JoJ9QPhjquZp82OT6/a/7AckISEP6tRV7u5puq5cXMJoVKXz2
	 APnHOn4u6zJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F8CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257139357.31067.10222010695449196907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5091d8da22b29f5651b35cd3c8d7b24357503acfee3e8fe0b94f697b8aec9e08
Date: Sat, 08 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762571393
