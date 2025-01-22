Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CFC214A77
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737566154; cv=none; b=BoJ7mRSA4By+Ohc0Xu9H9fLIawE0q5Ss2BQKvoQleXzbwKHpGrMOFzaMFy5zoQiZJ5fI5znm1cCDE9J0ZuNsLDZZ6lKun/+k1z5pnn8GFN9FS99XH1Vv6BErFmDqEnpH4pANimf4jTNbVeY1sf4LfiLBgiJF0Y5PpUiR8BAunAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737566154; c=relaxed/simple;
	bh=dLM5XV5WPTuPed43WYUKoI27t19kWQbrCYIt5FMi02U=;
	h=To:Subject:From:Message-Id:Date; b=IiQ8vlbD1iXWsp/xdxK+e34aL/8dDtBgyMmMNTPP0bDlX0z+qAy1mV1NXdN8p2Ycx2w1VpYJqG68Ufj8XmXyHp4ktR2p3i1yZ3YZXp8PHrHxTJ9IGYKfL13G+WR0cz1MtUrKu9ugmSQaw5QsGfdG96bnABT5KwOmD2tcW6tItBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD1VWI53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD1VWI53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1879C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737566153;
	bh=dLM5XV5WPTuPed43WYUKoI27t19kWQbrCYIt5FMi02U=;
	h=To:Subject:From:Date:From;
	b=FD1VWI53V3HtnMBEha42hJW32w7pKcWobeCeByJHag8I1v0y1aYWuR0sS5OTc2naf
	 vQIw1gs+0IIIQAkAJborued48bHeQiXXrG4+Z5B92G+sFLBxQ2VNIHirSKVPcDd3io
	 SoKJKfygRg2MqxF5/lfAGOAsuu4IKysj/NaEv9pc6v38INZicrhNE9/K7akrY+6XqB
	 pHMElGM/DEVzClRIjlwoBk3T6lD/UVQgRV3I1AhaceCvx1WU2LNeBxZIk9Xlc5YLzb
	 HkMSKJUPRCRf+IHxt77FfL3cJmCeg5mGIax8MARnbd/oagdTFzOjCEReeNu4OMFdEq
	 o0PEarPZjbE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A75C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756615361.10651.10579642718364751057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28576bf220f22fd978043181c95b921e889d0d89b13996fb184ddc193851b88d
Date: Wed, 22 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737566153
