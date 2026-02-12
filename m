Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A902BE62B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770881694; cv=none; b=lDXZMws83+xde/3zzwGcqFhDeDNaaweEa/iQWnssfr+rBYc9qb4oNhwrSTG/sBJYgS2+BfIxO1zZAAbCjTlfTMWlFdeYp9vEctunPgtc9amko1OkCqdTRExZ85NwTxikBgHdRTl1LOU/OwYJ7CXzw+ZpJV6e7er3BPeFACpoA+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770881694; c=relaxed/simple;
	bh=A2j9oOOpoHyp825XAb2uO4OwStM7nVPxWKZAA0AmiPo=;
	h=To:Subject:From:Message-Id:Date; b=U2B8yauBqz/mlQR/HKH3v9L5I1YO4RHtGGr/bHhxDpTPXTPL4zUXoGXQHVxAoBKd9vTCF8NkxsYsDHic9HiP7d3BsJAL6GXCHjDEJjOzO0raLW2najLvBefpyx15vk9yDWAL+2siD1SRM7auuX3kDUiYcP8QMSn525DpYOnJu1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILPfa8Lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILPfa8Lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD4DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770881693;
	bh=A2j9oOOpoHyp825XAb2uO4OwStM7nVPxWKZAA0AmiPo=;
	h=To:Subject:From:Date:From;
	b=ILPfa8Lrp9Rh2nLf/ZWjgcEOglgX1g+Uv43/9wqYjrdLbvqy74NTZ42yQmNjCArju
	 GbnECPTeoPdJxgB7iB8QjkS/nciUftbpcAqozdcEE1dH0u/5IBZrjB9Vpd+jKKKirv
	 Rb00vFG5m7E6SfUn/lfWX03zBwUncBjNr5Wo5YZQEajd4pa/2JNxVr2VORs5mnCp9X
	 aGOjHmg6PgVEyiva95J6eXmPacpMPHF/+2se7Ap0plS24Pq4gOpHn7c7iUSAgJXkmK
	 CjmrxJEf5C0oqUjQFtyPspOVfIprL9jTOpfvO+0p7+ElT93zTEyKRibycGzUIvYIGg
	 ZJkJkkzlZulpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0578EDF04F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088169364.14696.14178341534732507422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373de61a2daf2b6a4529be0fbc2bd672a50788099049ce2bd415faa7d5bff0d7
Date: Thu, 12 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770881693
