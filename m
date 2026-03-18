Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4704B1C84B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773873294; cv=none; b=ZYQwdyFl3lQbv2zp3xQIF9xkpx3RacU4KNfEoVUY3zIvAclXQRxMxFAhmNKrzpS1eKdBOcJ857f1GGDV3DgMG2q+Sg32AQG2N2awFXCFxMk9bE06SG0Ag1Lz7EahZoBs9iWc+dnN1yYZGr+5i286rrTZUfU+DkmlB/ntIEOVxVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773873294; c=relaxed/simple;
	bh=A9QI9P31FnNYBBHb9jHuA3Dq8eNupxJAV0YuJs2LN1o=;
	h=To:Subject:From:Message-Id:Date; b=Q3gNhzandsZTVvzfoH8W3rm3stMIm6KqBVVE2dpxbkheQjOKz4awaDcX1qXAMb7CLUvlFoDdlrCLFndXfwKsD7CbFxchfIJJi3eHR1AgzHRDhkX7YVnB7NkVicFHGb22qhpn+za4rf6Xwy1rci74833HnvTI67PSzBgJ8aqqCvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duq6Wj1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duq6Wj1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4819C4AF51
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773873293;
	bh=A9QI9P31FnNYBBHb9jHuA3Dq8eNupxJAV0YuJs2LN1o=;
	h=To:Subject:From:Date:From;
	b=duq6Wj1WAni4wnvodTAFv8ne3+V6XeaFFQyN24vuMj41ylBGdcWRyXsjtxWRJErj6
	 Bf8M6vMMdAtsYjaIOhbsWY0Q/pdHb+v4rbnV+FkQGtfqxH7Pz3D/to3QPYEyNdkEBN
	 0p0I5AbmYqfYq0n9Y6y8Ee71CLrK7aVED6SlMhd+Bkg//ToLEErBwthgJMvecGuceY
	 JnN4hPW+v/62KqpXeZhW0oj2p00IzujNUESKzAnMQgYi3DknW5JldtF9emjCk/PMLQ
	 B80/uUtxgEBr4od7xc6P48+qt8WoUQmHBjKMFRYJrNf4v5MA0JKFHwhS28n78xfwT+
	 ptTSzy3NGNkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABE1088E48
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387329358.19035.515291075135703788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d6ede200eccbfb44d1a71e43a57cefc749779fc6e05f8972d85b3d4b91e5bd
Date: Wed, 18 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773873293
