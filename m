Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5763121A434
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788045634; cv=none; b=pblPxy3FgfVZGlWk99pniOS9L9tJ88/JCVjAgsi/mgP2zSTrBN45kvC70vdSvLwq0NwsPo2yZH3Ttzah2iee/Q2+7veo5PPzoPRp6SN9HM/RBDOb9FH3GwqCnh+SHAXHQuheBnnttxh5jCF8qfGIsfcT7igourj0l5Liwda+bes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788045634; c=relaxed/simple;
	bh=sOvvlNiHI8z+jKdIiQqoZpchl/diYGai4zP/XYMsq5s=;
	h=To:Subject:From:Message-Id:Date; b=fpiX1lIYXiYiFhbJWK/0Na9V2FKvXxFoUz9aT+UT/bDJDh+lY5wuozTXRCFGyr+/Ypf+ZGs0/9RssIf84jucSbmRAAMpxQDgQD+VhnoVWQ4tPiSIWq8n7PLGUCI7BGk7Y2379aFTpEawKISRRiIaJarVlnf0IK6f9xarA/yhnDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0A7an7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0A7an7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF22DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788045633;
	bh=sOvvlNiHI8z+jKdIiQqoZpchl/diYGai4zP/XYMsq5s=;
	h=To:Subject:From:Date:From;
	b=l0A7an7PNd0CBcvd1Voutqim5I0Ul+yLRMKrd7df6Y9w32LdvkDJt9JqUOW0J5OXp
	 9ExB7t9e9Y9lzwRnMvWOVpuExmmD9M6Sc2HK01DX/iR7RGim/I85dNT1OwTjWG1DW3
	 NUuCX6eRf5hQoq2qZHiyqtsMj6RmJD52PDnW4uqAFhyNs7O9PvHVn5mn7f8pm/HSUC
	 6dSrljH/HqTEe3JBDcYgAMzIC5gZKH/cgeXE6xy/vh2HS+8yP5NVuTjsn01DdmVXb8
	 bJEXkpQ/MKNbpJ3GtM8GSQtUNSCcPYTwhXfviHLH03iMR/5mPSDvXUPn/uygs5ngLu
	 XAGV+r2VnAOow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0DBC61DDE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804563369.3407.11301853349534561042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e94ff04fa47f3555b9a6bb6c84d047f006796a3eb7da84fb83f62c5fac7b5d5
Date: Sat, 29 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788045633
