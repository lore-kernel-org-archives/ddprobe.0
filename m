Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35212566A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730037954; cv=none; b=Rymc1idvB1JgXLDttciCAO3uTomOGljLlAPB32we+zw2JIrqAh6O+drbMTPqn8lMMsaWLn1BwMmIv2k215EmrLd1gfdD8id4PnMNHP5nTghH0QhR/Bo8G6if/cY5XDHayJJa36AIcoxee1D8JHWz6JYPGo0RoX2QSB0k2KaYRKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730037954; c=relaxed/simple;
	bh=R4RK2As2Y/HBWEqruyFEQ5FCWUEbLK9i4V8dXlsb4OE=;
	h=To:Subject:From:Message-Id:Date; b=keG2WdjsT4LX0o13QFdFn8OnMY38V1wAiDG36G+K6kr4AsIH4geKt+UsXG5IzlZPFu1ZLY9HaWjvGviJadfcozBkAuIIArdiA3GndI6XRxKlUGhfD5Dx+v4/+0oGugx4uFk6CHjhrl848ppWzkcaAcPcjAEqmjXYW26LkDwEoEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1y+gkYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1y+gkYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F2C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730037953;
	bh=R4RK2As2Y/HBWEqruyFEQ5FCWUEbLK9i4V8dXlsb4OE=;
	h=To:Subject:From:Date:From;
	b=a1y+gkYp/Zqe1IalnhpQ00xsSYZsxT5T+mgk/Lithx6I4Jj713d2ycQCIetCHeQUW
	 Ijn0XBWibVWGPBOYBrYXrcoUd9PihzwbodNdgkaGbQ1yoVX14mZGoaG6/8uKcqYdD0
	 fFVLjABBckXkUZBl94Mv6/UvwzDuxmfKp04u5JbkSeBham3tOJ9Gac3MJzt2s83n2Y
	 ymIZtnl2xDixUvJ3JXN1ZilqbIXmPNKEXBNYqd4FLzK7mP6gYVhXvMEURYrlKQSMXq
	 Yld6vvDZyjDvYzAiYOKw7BCdgyhn2efpMtf4t/C5hFvZD9cyl6AM3iXJrmDpFn2c9w
	 76C6WfZQ/NQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98223D13561
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003795360.3343.14249006648674808738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4a27241013a1d39cb3190e38c2937dbba7c5a250d2bca9409010766b7ebb7f
Date: Sun, 27 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730037953
