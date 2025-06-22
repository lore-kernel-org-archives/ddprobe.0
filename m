Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB6D823DD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750568994; cv=none; b=LiIyhAMfdPVQ1iw/JbHilVrgDCg7NtmDQ4PuRBRehS2gIQjLdYm9Gp9UBArBfgc+7k9oEWttUOog04SA8Rpeq9Yq51RmLQNCBFclfcyXJfclTAhKpKeo3gGSf4Gq/KezbEe+ahkuxEH1uSDhafRQn8OrgwI3t2bPLh8un/HWG+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750568994; c=relaxed/simple;
	bh=Fq73IS540UaQKyfh9lw4/nDnsC82tbGRFTF1zmGiZz0=;
	h=To:Subject:From:Message-Id:Date; b=tc+6IfGZE4oLN5Ummkd5jJXUwMVfE49rlk4ltfng5cIxcyHgmUmG8GIk2SiatmUJ5syg9BGqu27zSXJG3el8+qAaONohZraD9DPiaI2daImQoMdtMnqIYqASuouMsBpu86swa8Is529Cm8M+kL4n0SbtTwKjHjMg78Km5tlgb6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzzZm38t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzzZm38t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750568993;
	bh=Fq73IS540UaQKyfh9lw4/nDnsC82tbGRFTF1zmGiZz0=;
	h=To:Subject:From:Date:From;
	b=rzzZm38t4LBTCzPAz6bxwOtD3lkR/SSAFhSDjDzL1sKwHORKvFalQaDQEUJHLupAl
	 y3dhxRVR8spt98wbr3KqVIDBLK6amux6ApfjuAiV03v5ZQjv48qRLTdzH26Ysdogtp
	 FFJpPsUrHd68eJBay2bnDKA/kitNgEtDsjJiG/6Mgq+CU8DxkgUTZeVvX6kz3v1CyT
	 9nA0P/8yciRm67xdPM+dJxBVJJMGRagG/qaeQQK+YG4VlnUy/RmNq591IqQRUTLAlu
	 Za7dKR5DC/BUFOYHXXbIHTDd1KXrmxzIFMzQHJsa+YoqIeO/XUfU7tG/20vz9jmKm5
	 tWa8jyf7YNKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E75C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056899357.23431.784577160900968938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54ab8717c9b3ccdefab8910f6dfc5e4b79827d159452f45047441e65d5fb735
Date: Sun, 22 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750568993
