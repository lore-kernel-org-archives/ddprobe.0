Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46942365A13
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779288034; cv=none; b=W6mc5sWCwqrF6q6I7lZ9YclKSqnMcl71ISNjRgJRQYVP4qnuszhCQuLpbToZwJH543nJ3taRs9VZo/2QrAYfztbkdhgcL7TKk7L2QMPegeQQqrIGqBimEH1aVWSFXtbqD4JeQSVgv4/oqs27BXoRR6g5cEo5jh+SkAUMZtAmGeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779288034; c=relaxed/simple;
	bh=2X10pXK0Z3fnqgYRMSqowMt7WTjlp7eYcdeAsH1Sa9Y=;
	h=To:Subject:From:Message-Id:Date; b=fU8S+fmM212hZQ/Cd+UmsZ5AriRaptHtvMy3hh68SvQDiHt3aBY6xylLUvz4WpC0yA549D0ymj24sPAa38CE3ON2B+j9jdg9SLlSatLhKsd5KJnylLi8Py69m6xerPjGL/pa/Awo5aSVKAjPRIRS4GrzWpMjFbwO76+OAzm4AVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH5IKbVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH5IKbVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD14CC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779288033;
	bh=2X10pXK0Z3fnqgYRMSqowMt7WTjlp7eYcdeAsH1Sa9Y=;
	h=To:Subject:From:Date:From;
	b=CH5IKbVNVth5srWlbBwpWZjY3pRe+OWH/XZR8HbpS/ibIpGqiZ72sIcB42WFBnrHE
	 sb1Q0QCk38BOnwtXpcoqjvH55yLF2YW+EpM+vJUL3UyJhBILPN1NOaXDXtZ+UeWH4l
	 R232mJeziDaBP1zb+9D+OtHEbAzdMpAHu/pSyyBoVkBfvBzum90eCpDMCTr8TBC6Tz
	 cK5UTWka/oY7PBm2sSAOSLAGdl/0InA9gwrQM61d8K1SCcmm51h2vp7TOdciNfpgbT
	 3yMvKXSThZSWL5a+hZctHmg7RXtEi2t4kEjE7PoP/romhK4LXh5nwj3sRshb/uiL4a
	 ElWWeeaXYrBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B377ACD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928803372.18386.11986549903103420085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08835fe02bf80f8ca09e070ba3bd6f9f6bdf78596e5d3749d02c22bc9397227
Date: Wed, 20 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779288033
