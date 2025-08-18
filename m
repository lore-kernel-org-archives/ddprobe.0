Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BBE200BBC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755528594; cv=none; b=tdBOFJ4fpg91VTScx96H/Rejrku8hZyL8/uH4jYgyK4ZAHQ66RHpEuuwqUtREH+8E68QH7eWviQDyVgZpFrbvTTvH+4Q9T7S3hyrb3JPVnd45+OFMoLWvS7YEZVaD1IWmAEhfkshzJKibKWu2ciM1JVo1BRrtOT8r8taBzX8+7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755528594; c=relaxed/simple;
	bh=5rwnhksaJfwpDt88wDPEOMIanFkXM3P0BJckzBvk5oo=;
	h=To:Subject:From:Message-Id:Date; b=ofsgebwbmsoevh4UMHE48zhUqg33RXH/JI4MV6gOeamxRX/MtBAtKJgdrzfK9AH72+WcqrFrJu5xvS8CB7C4TEKIeyf9QeZfXBuSr9xV5to6uXZWg+WrI58woXVnvqiQgPPO4YNrKzL3mYAy8F2v+exhWqa/samqs8CznuoDFgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWVhSrsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWVhSrsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755528593;
	bh=5rwnhksaJfwpDt88wDPEOMIanFkXM3P0BJckzBvk5oo=;
	h=To:Subject:From:Date:From;
	b=iWVhSrsDSKqoCD2AOnAp3Nj3cShvRK8SSexlwotSMPmvCgoBrWnIZgRrdZUdxSNXd
	 9rAInqyHCSlwDlOUdq/3kpc/JbgcuE6POcgIAnj4unA7TYrlUmrhrWvbBGxYyCdho6
	 yccMX3XbX0cgNSAdP5/Es1Y6RXqv9n3Wo5jeIGkZvRIZpWDD9Wo7PEaspb2Ucch04l
	 WI49nFIUI5y0O1Vk6OH86VeNRABehs0WwY1U3kVgrv248Es9YLwX+Qh5a3al1hNR1L
	 OjhKG+BOo+tk7najR/ctu+iEOLyDp/YceNYvXNLLiv5Mmo/aDIl5cKz7Iy5ErkS5eW
	 fwn8WmiUh29vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048ACA0EF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552859358.1930.8305593771065138899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dc06b135c3cc4ef4e57a74cfca19a66309602bce4578b156f266a59f057995
Date: Mon, 18 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755528593
