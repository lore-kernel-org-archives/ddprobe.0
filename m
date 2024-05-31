Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AAF208D4
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717191863; cv=none; b=N7+DvGRX4npcHTfRSbLg19RDurj0De+voH+TlUbnA8e3mtQAZjwLBew1DbOGeXkQlBciM+n/gyTc1Z7mUnqyrSt45VJ0SyYdb7453qvPOwCJiPl+5k4SLYA4y/HdUgxcoKOtKCk9OA8hIXp2mTFqesdmY3k7B74tdWrGmEkO23M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717191863; c=relaxed/simple;
	bh=4pjjgo/WourRBMmgJnGl7EWwuVLh/PL4fWFcMmLzFW0=;
	h=To:Subject:From:Message-Id:Date; b=cuWbHjudXWH8KuaxiXawbV1FzGrqnm84XByW97FGymS2UYVdeDb3vxzLDp2fsahiClrxrUNBxWJ8H9Rt7hP0wimmsPyxvcUBNq1Eq7iCrNikEEb3z3AZVOrLuoMJf6VXRP8dUl0vZdm5b3munA5DYX/cVHgyHFO4pP6SwDNX9OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpNYMQ0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpNYMQ0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D5BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717191862;
	bh=4pjjgo/WourRBMmgJnGl7EWwuVLh/PL4fWFcMmLzFW0=;
	h=To:Subject:From:Date:From;
	b=EpNYMQ0dgyzZGeTRuto2G0ILfhDEWm9U7chCQ8UqGDbaaSRYtAHILeXcExWNDKvy+
	 RssB3iFTHelA0jQ437NyvUYVzM9OdsueO6NJ7z+ugIUVOVpFPNNpNCGrwXjsNHX5bf
	 DE9r8KKPMibjO84viLktk9ZIX0jnRiDxiRIa80N5j0UoWb8KNnlIW054S2JzKzD/3u
	 YSMd+4fxw3r3zzXthoO6+V8Fax3PEBCe+jf/GvNgHmloPBvKEiBC0DT5p7ayWVa3st
	 gSIxlN4OWVm28oeD/pideOgZuRJdrmDeIxJopSp6IV9I67hlp2C78Px9PUoewmTiVb
	 8zdm/VLo9AZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA9DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719186277.9472.16725460422307586720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119128d8ce56adb79535b2a1f56379a6229a57923fea32aa40776b2cb96c8fb0
Date: Fri, 31 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717191862
