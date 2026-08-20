Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E9537C92D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787241034; cv=none; b=UUR5sBRzPEOOdi2O3r3LPRvi/l98pOG6BPD2vqPD+XVAB4VOB2nl6EheJJ8yvKaopj8nhwxXvzXxCNVPnXzpAw8IuBNezbFi2hHUvUmgWufMyxFlyUqHndAoW/779gJfKVzMTfac+wFsL7c5IVkhcFBLEXNJK9MdL8DzJuGPm5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787241034; c=relaxed/simple;
	bh=r7kuIH6Xlw+HywuFkSJaQFNfi4JV4Tg8GvAH+oJs6tY=;
	h=To:Subject:From:Message-Id:Date; b=GnV6Fd7zHnTC0jirQ1Lfd+5sbPxSkF1XGSqWr9/BRhy726RmAN3lG3YLlQBYGxUWO2huF6xZ7Xxeon2bzTlUB72y8EH1qfLvn3ZfxNiuE0aReJZBunF6gdrFXxX8iV9GSdHnbMzKB4rSsB1/ykO/gvB0zdqt2feonXB51o2p3ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObcKGAQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObcKGAQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787241033;
	bh=r7kuIH6Xlw+HywuFkSJaQFNfi4JV4Tg8GvAH+oJs6tY=;
	h=To:Subject:From:Date:From;
	b=ObcKGAQjVhwPWIMVNxoDubEK4RAN66wPPmAswIHywbMzIii13/cvV7jqBkdy3B8Bn
	 EV34EE5aXiVMF1gTBAEvqjZJD0upjUzO8CHOdMLPASpAO/DeufT2qwHqNzb6e8fe4A
	 lALJxafscqLBTZ8oRAsjcK95uXtKZKzTVhBT1zdOAm5ONMzlNg2Q1snPLsJOmu0t+U
	 mfB6lpieQ/FbF9c8JO0nWxeTCbGmZcygjHi8/3Ryv9ZyG1KS/dQeJ4C9NhR8p6Uijg
	 mrtZczxcANK+XP+qfzcIvpTM/HBw31G1qco99zuzPWmB+G18AHqt7eKwyH+2ChJkZD
	 i/duFAdKSrunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB93C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724103368.9170.2498432870003009726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9501a75f088e10ab38bcb238d2c16813295da65e510493d5a98c8481b08577
Date: Thu, 20 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787241033
