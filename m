Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD26145B3E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766528634; cv=none; b=QgLRBhQzp75jwN4gRw6oOqr4KAHEudmCbstcHB47SMfheJcsUsgzoakevXLi7GJiFreSHbfP3ralS0gAODfZt4uFp+9AeZFtcUFDmg+OPBTIeEPwKSRRK9WUvWQbtFXs/b6Ng+BisaOYFF3s5zQUi4HWZNkldZpcmnr5O4eoOZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766528634; c=relaxed/simple;
	bh=xbgXay4KTG6cWjKObB7cQTLWsXFvcyyXutSVTwlByXY=;
	h=To:Subject:From:Message-Id:Date; b=CupTpk7+qkn0QgYcS0KVURLjEBCjPdhjPtiZJ9AIVRJHRnHy63V2I26JyqzSMm0SU/NtGhuWPlCJrhxW6JheYhNRbYaYXI98d/0koVLpxYeH1vdwpQ+c4krh4NJF0AcY+DvcFfBZAQSRFTepcRkBX6n1APsFX7LV47ZC8w5ETzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NT3pITqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NT3pITqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766528633;
	bh=xbgXay4KTG6cWjKObB7cQTLWsXFvcyyXutSVTwlByXY=;
	h=To:Subject:From:Date:From;
	b=NT3pITqYC7D98N5O3dWQnDnpE3l6uh6Dvv5RgBY6RmUh1odhQWy+sA3v00HlUsxKs
	 k5IfwDZB8eLBFm1lKVLY2u9SZ4aob+LwDDpqkzPH7vD6rCoudu7JIbxlZlmEMQtd4p
	 Iw68E9LAdlJDMDmv1r+e2H1g1i2sItWg8qwCJU4Txf9QvMJ9HCDdT/92S+eKeYXg1Y
	 pm+TT0sQicU9gXKDVDJ7ls+o/soxh686w2ZgrNZB2eCOKkh3T2VdWk8a+8Olpw4MYU
	 hHn9RDVBqJ7ln6/+Lm+052c6eiVk0UqDL7xB485TUOmrOMrNd5bl1xb2yp+Ht9zhxC
	 RkV+2neqTkyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCCE6FE51
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652863358.26102.14234154817683858820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50c505a41c96e4c326083229daca4a5cad95e5ba35784a391ed4428a2401c54
Date: Tue, 23 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766528633
