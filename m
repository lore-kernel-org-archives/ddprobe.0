Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61264344DB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789797034; cv=none; b=mHIv24aHjkLGOic+EZLSHlkHO2KgxETn9IvO/WB94v5tBZdr6yQs+THTzEELQ1Hym8xC1IPvbwNpxsgtj6pQxmZxmkLHS7FMZ/2QW6k/KMweJfcaP51HeP19Sk0tbsxie8/gD7vt3HAskfReCKNtamTDYVPLy0NColxz4tOkrkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789797034; c=relaxed/simple;
	bh=ISPZ87MHyzPxz2y3uHWCI1di3HB2quiDpGWyHQwjtzg=;
	h=To:Subject:From:Message-Id:Date; b=Bo0SLqpmhKiWo3lqYvxrCtUkEBVGB2xuv+t8YJ6jahhqucfL6/YGFO0QeRGDuVkaGWuw43nqrnu1i3wsFuXSNCr5dNU7X1w39dXNgCUrbhs9UjcuBGPVRzFANi4rvmoZ3zcgstNaHJeEOTv/HiwAkr+JZDDqfm/o98WCOTwAXo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2R0pBza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2R0pBza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D159CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789797033;
	bh=ISPZ87MHyzPxz2y3uHWCI1di3HB2quiDpGWyHQwjtzg=;
	h=To:Subject:From:Date:From;
	b=r2R0pBzaa5RTWtsU1wohJ0xZhkAElGNkPnuNr3Esgkig9qyX4eCbxwfZyNi4IMMPI
	 HhA/jfuzhcJJruGDJ8/4yyqKUoxX5pEj9293FB5OwlD+17V2gTv9AVp2crFXGtYByA
	 fCEI3BOc+L4FIAuAUVKNG3Bs1+zulwZ1WwJx5kEHMDlULKVHHGD7S+gvUzIzFQylrZ
	 3vwlhzhgxzKnQCLCv/CX58rbrPuJ/rwF8A3lOt7Hs2KgF12swoC3SAgueHwmq1IGYg
	 dmKJ+aU9gd03lqoP15caQpLlkL5B4T/SDf4KJK9SzI4iRlU0IGbagjOrC46CiLnwuA
	 ohYc/JQemPRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF6C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979703370.22736.16900619838524271259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e469099b8deeee358dc6a96cd55f8392781ae6f10d77687b5e23b615fb3c12
Date: Sat, 19 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789797033
