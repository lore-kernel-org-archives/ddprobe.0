Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5E34C6D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788033034; cv=none; b=VmVHu5DNDmvp78WhmEAi1OcXqysnmTypoap2d0wXifTmgZ2KMyuXy9YBYaJ6f6Y4ly9rQgkhCOzWt8UfrEmnZKvra0MpR03wTxNpOktf/LTpVKrI1W06iBzZwcjx1grWKAguBtuFmBA7160u6SLQ2RODAbwxSSSH029hcsB/97k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788033034; c=relaxed/simple;
	bh=5ef2bRc8BeJutu1A9oCdKV4wOBIZPGJW/W0bq4mSrfE=;
	h=To:Subject:From:Message-Id:Date; b=jmfgo+rV251euGVFo/cTHXwZLf3G8rUzKdMgnr4Gi6SloAVmunhu6EYP07KHKdMmnmPPuKJ2CB/Y6fmhROA9ztdVDLePcQKw1t5PH80Ix803abVvliAdlBAWhdxjygEbnTdf9A1OzfrCmP6ClnS4VWtfbxP/+LKlW1fHi3YxES0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooh+q7ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooh+q7ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81F0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788033033;
	bh=5ef2bRc8BeJutu1A9oCdKV4wOBIZPGJW/W0bq4mSrfE=;
	h=To:Subject:From:Date:From;
	b=ooh+q7ZYORfH+DouXK7fahyj2ZSNnJxR46NteXHDeTKzZejZDG3BwV4WJJiFcrSh1
	 sVUEB/0AzXxBNfa8FoVTW1yBmVgaR0cPOamslMrP3Qkhcam63YiYRqMIwSCF51UwFW
	 4iHoxo0DDmJH0N/4PTmv8QCVD2Vyxh2xKKy+fIUDS3hiIA/nKnC6xZM95SMGGTwTlu
	 r0PqgvnuD8lSPZtu0mMXp399tZPA2WpfdWhIYGBq780BgIdNg8Qw60TifbOLk0TIjG
	 ggYyWrDUxIQCNSyduHAZr5efh6Lys8F2T8Hdk+FZy1olDD8RVrundCuDICRWb6447t
	 DOPTVU5BcbtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2F2C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803303368.20985.10675687913414503615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3543c990ed486c0afc6a8d63f0c7ef3fa0adaf4935aaa3847e3129550e201b
Date: Sat, 29 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788033033
