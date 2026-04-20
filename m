Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F62F39E6E4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776686254; cv=none; b=Db4vTMdrHTyJwFzesPXtGES6NdyAIroJYROzHThyRCglxKlXm0yM6wUkej7XeostkEIKJui5GPpHjHeWLzq1w3ttO9Sry2gbmiPAmRggbN3nqZX/t0nKpS9XpVOSBRWUKhkN+M9O0jZGR5BtcmZxfLzuXVn1lA/miGNgwnSVNsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776686254; c=relaxed/simple;
	bh=RGiwXouu6WCz6MwamHRtTfYnZeZDR+r5zMpQ0lbXVRs=;
	h=To:Subject:From:Message-Id:Date; b=WoDXtoc/TeQyQOgC+3jxiGAprWzqp8HqDfvBqse+G+p2NgjiQ+7pgqvg6ZvChedALG6KPeN3tSX+TMfvisy2JJSyAApbV3p4FrJTGCJ/1xi/dq31YZgbbfTX+8fQislS180yvk1lvLRqTYgYBXCjhc5cjZVfPp6/XSHBsfmo0so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDVgHlVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDVgHlVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A7EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776686253;
	bh=RGiwXouu6WCz6MwamHRtTfYnZeZDR+r5zMpQ0lbXVRs=;
	h=To:Subject:From:Date:From;
	b=IDVgHlVctaHXTBjcL2SacdjOuHLB39IGncXXw0drSsd6NdkMy+p8TFDVRkn2DWCki
	 y5JTMXXhB7MUCpi7+7Jt+E8TNN+cN6RjKRZptgB1qsL0ne0fFUVI2665+ELgxktB5a
	 DL0a52Ko192CKtZ674n3ZwKhji0Wcy+lizjNOnrMdwtLs+vUZjtYnuIHNr/kiAuqpe
	 MsgqBEnWsScor1/c9URubRo34p30DK4TwXxPZLtHrwna/Ss9icUORJJHOLsxsi3cvO
	 KPau0U4RmX6Q+mlXTgrCbErIpNvBXsaOuYMPqs3l911KzX7FD0TAnTWs4fdzmDhbJo
	 VVSw1uD9PezIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9518F36C5E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668625368.30961.14569021347402747068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76a23fabb99f7c69d2daddd97eacf43c530b71fff2c6480aa93cc55f19281b9
Date: Mon, 20 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776686253
