Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0018872A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775275534; cv=none; b=Gnkh5vp5cRxEunus4viCViVZej40IhzxskFXJlh0s4spQm11NnHcLDfROOBl+LbqN5KbDfrqHVotEfqVJgHbfU1Jztlo2iPfHK9AYtji/GSCD+sXSHa/aCCBLbraDUHHss+/9qzHNEUEHdc1tj5+yh0NblQ0rD3ilxmxLBeo0BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775275534; c=relaxed/simple;
	bh=rjZDFKMec6z/OKIxBCpe/ZGVC75Jeo7UoFLPqy0T5aQ=;
	h=To:Subject:From:Message-Id:Date; b=BSq77H3PCwdExODyTwlv37X/BNWSCO3cGtdmCKdAJTGbnE9mrlau7Qda3wev7bCIG4jrLDhAND1uZfxn7zPaMHMS2uxzjnoF5kYRhKA9zT+d6iPChDwxipfX/45Sdj7ZylSBcbEeU8cv8cSFZuyaC9Dr/zeiBd206Q1xWKYvjUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsZtTn6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsZtTn6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7A2C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775275533;
	bh=rjZDFKMec6z/OKIxBCpe/ZGVC75Jeo7UoFLPqy0T5aQ=;
	h=To:Subject:From:Date:From;
	b=fsZtTn6MOQ2grjZ2KnhMoFMZ4rX9AAzHtZBmSkrqeNzvL7kJREP0Xj5oIlgPmEIvT
	 3za2rUb+FEMiNPW5/zGJs+SiHewMNeXe4r8Gq68S50Yw7JxoHKcyj+Ww0bGhiJqYD1
	 T5bmRk4Ut1nkC6i6oN/so92jkpBE4GO8afUFKljDSPC0sEBtM/C1Zk/QmdxrilxEl+
	 /jj1dKu6LbJBrg3awSfEk/YVcqTC8ze6L+rMhTY5BrHntvQ8HUgZkE3uE2SSI49Hr3
	 vO39SrthWDsIfQfX9pz9SpwlX9CYLgUpO5w6ISnENHB9rqtq/foylUbano7KSrjvsP
	 h3g0lQk6izjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2472E88D79
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527553370.31509.2055651599145341564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba442a0a9076efbf0c25640f3509e0d77d72cab23b7e8c9cecd126c9f3d2d307
Date: Sat, 04 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775275533
