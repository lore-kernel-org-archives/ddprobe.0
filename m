Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7022576E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759951194; cv=none; b=bnsWUE3xwUOFv0ffL/+OI1Mn0EHlCDOCis1QZP+4PEQVnr90zj8KiSX6I6VojxPp+tLJ5zy2sVpVb75EZPwQbCpnu7PUqiyJBgZAFf+JbFSjRrL4rqMMK/6xur5C2azLdO1KSnw8ogLNgpBQx5jh7ub1HzK4pMPV9pODtCi1ulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759951194; c=relaxed/simple;
	bh=tG6hpVTlnzk2Pt1aPubZ5Db/kUUJY2EN2/JwkCwyV08=;
	h=To:Subject:From:Message-Id:Date; b=HWVDcvsFHy7xTEpDMJBrP9lrPPxq59voKvlW2k2KFL3CQ0b/tVYN5ZJl5qZMo47N5QsYLh7iPGz3alTVskuZFB5S8f6Tf2wwmj4YRHGm5QjiuWID/syX0FfOWnfLhjzpPlWc0nfh4ZIHVdl7cae08pWKYlKI7FYOJJAh56cGYQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg2J0t4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg2J0t4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F93C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759951193;
	bh=tG6hpVTlnzk2Pt1aPubZ5Db/kUUJY2EN2/JwkCwyV08=;
	h=To:Subject:From:Date:From;
	b=lg2J0t4HdGypjsPDmOktVcWix1l6cwLCHeju1PRiNu//FvfmqFNV2GXz/1ILYePy4
	 h5LGcaQFre/apsiSFNnJq+A25uf+j0dN7xNxzbATBa3XkrqCXzC+BeeuG4kV6K/cy6
	 yAayGWTRrh2GOJiOhTmpvnehwrcsu7HjNvN4bnJlEhA6qUQ5bgeFGPqq0z+/g59EXd
	 aZJyJj1OcQC4AqQLtKublOydREQqNlQPokuIpnh3acg6oiv+h6ok/eH5cJ4RjWovff
	 0c0WD5XMB7Kt0mJP63xuUhWmA0TPleHGHxH/fZa5VF6XJXCzH8HioyAW/NQ7OyZC2O
	 DYo1+8snP6Q0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D0CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995119359.14052.12068644700369845607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbe2deafd004954146a350f3d4c17d84af5b0b4067fc39682074ffaad11df8c
Date: Wed, 08 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759951193
