Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5911D21505F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738794354; cv=none; b=pX0BJdA3ZYt5A9kHpOfkOthFxgiegxBVasrVB8hxxnRYKfahH4ZFA/NF5bP5SvJ/Ls8Qes8kn3qF/c36ThHxHRp7c4rFhTqlieEhaLP4rX0qgj16xIldfZxPwgrTnDgKZzF927Z2jjCW8zlW5TZogoDpuPq0LFswOX9UqAstrM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738794354; c=relaxed/simple;
	bh=Z3x20FBlVSvxWvORo4/7BTiG3Djt3XdegZIkXk7f6zM=;
	h=To:Subject:From:Message-Id:Date; b=eavTwLsBTYuuLmPk5/s/N6viK8lME+BVm03fpF0+ETx/OodKqOOJDKO2vo4fzy6ya3ozWLxf7qXk3LNica6yqIA8BDmYY88bgZ2Y/9dEmSlA+JmPrV+PW1ZF3QkkUN2P31cLV3jkfkO95sftucKpF5y0ECzazpxve7HjdhTVh4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6sNotC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6sNotC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA0CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738794353;
	bh=Z3x20FBlVSvxWvORo4/7BTiG3Djt3XdegZIkXk7f6zM=;
	h=To:Subject:From:Date:From;
	b=j6sNotC5DZ9wUO5G+FsgHHNfhRZWWbeqnZAM/N3EMX2GQwZdO8wa6OG6ktakLD3ln
	 diqJvnb8mXflZfPGiYfnQrxxS9fM4VEF6uzr39X6gHJ4p2dzYG1SdM3l6oBl84OhqZ
	 DxR5Dd814FNIQ72pbtjJg+lM2uKD5Tnyp/QZnk2b4cZkE6dsA+IlifeQR3hDBnlt91
	 6axDKa9P+aAI+m70s4eKfzhkiTV9EoA0ZssU3SkTcqzKwQlL6+cv82B0pZzgjshzSy
	 Zf8T4NZ69GtkyoA5abeUs7ec/MmnWM9XKsOe4ycnzg+xN5ToqScqTo4Vh9dpTqyJZS
	 1G5wUy7FRqyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B479C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879435362.8408.14096362382354323706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ec62529ed67fb8e8e41c747fff864e8b5463bcd3be8e6be4832f7a80d021c6
Date: Wed, 05 Feb 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738794353
