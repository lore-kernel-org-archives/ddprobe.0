Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65F1373
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764496974; cv=none; b=NAY4xxqQ41VTB1QQPvjdVKGba4VflZNvO1dUNIR9AN/+E0xqOgPqNzN9vUrPcQcGw+G2IPVZY01NKEUMQZNyn6a/yMss4Sj6Py9aMazeBWSnxOkJbV2vwpFf67DzMfPYI5W9EYraElHXo3Kcgl4rT6Ye5VH8Cb9eEVaD7q8JlkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764496974; c=relaxed/simple;
	bh=lwN1QRKjTVuPaeS/l/MAo/lmPxn1xm8Cik/I+6LdqBM=;
	h=To:Subject:From:Message-Id:Date; b=SUJxfzlmUAVg7GzNm0XdajXvNiPEM9af7Yfu1DnUGgD8pzMmw55+f2jGc5ZJEnVHWJBghfQVy41iHBD8AAIY04XpIuDWwjtYdiCothrM8I7dgM918CP1lLcq1q6pQTSHWzRPdRLlb6HgMu7N2MsPdB1/+5WysqjyZHWdgJaunao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug5e/xUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug5e/xUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7594C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764496973;
	bh=lwN1QRKjTVuPaeS/l/MAo/lmPxn1xm8Cik/I+6LdqBM=;
	h=To:Subject:From:Date:From;
	b=ug5e/xUEvnlgmn3URu63eaNshP5H9AkPOxc1L1bh4gHH8lFtXQyzX2LPE9dQfQnrJ
	 8vq94iOtMhoosZcTSaT8OSf7ArY0ziZ1+Fa6Qx7uHmXRJNhSeWKKCWyg+TE+kBbMzO
	 IuM+m+Gz2pyTDvLpk6ePYP51s7LWKqbvJ2HkFAdSM1lNekGfBZwDEAC+MBdHprc43g
	 6+R/h5i+yG8aCkwMEz0yMlfqGXOWm7a7jTsnNGqYxdgc0ZoktZjIyOwq4jB4VF/72N
	 aLKYbaD6dCjqE3zUAhmUfImHcIzfkumiKeJhpAH634+v/Ut5M9CxCtVPXpPXNT9NdE
	 khuwmK1WZD5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ABCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449697358.19259.16146220662024604900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3268614fd4b326c36d0bcedb79bd87aff07cb224f750f18dd0e7324eb8bf00
Date: Sun, 30 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764496973
