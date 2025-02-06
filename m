Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD1F1B59A
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738803355; cv=none; b=qgB60Oe8Pvi8M0ZjXfFUsjF18kqdp2d86Yel7SuLqvx65eLYRwk0dGzmU0lgrnIyp3LWWaXmGZFzlalRj0e0YRw56UHuRkUlVd6oLhRTwAdHiDcTOXoiKSc4wRoxSGzIkdSIcvbw68UCi6j2Y4aKAOc/6HLoIXs4o4aqZ7zEBR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738803355; c=relaxed/simple;
	bh=azVhhIoOpqaBrbBbuM9YGj7VWfSqYI0P7gvP7ho+uII=;
	h=To:Subject:From:Message-Id:Date; b=nbgheuvW/o5yPyM+Hfq0E/tHt1Ymh11dMv9o8Su/8XutmUB1YiqMeIOOfJQ6cjqo8erSN7/RPkBBHxTemPjD4s2vtRCBsTOd+f0xJe3MaZFVrqbziqWjN4Pjcu4mg8I+hwjfmJat3T+GejF9jF0WbbFViQyn1zRRBObNtEJ0ozQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWOwyROT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWOwyROT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B65C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738803353;
	bh=azVhhIoOpqaBrbBbuM9YGj7VWfSqYI0P7gvP7ho+uII=;
	h=To:Subject:From:Date:From;
	b=gWOwyROTwdUoq/3FyIEdyawk5+Kt7rzVEMugcKc4A9paiwQeIIGYC84CggtaYY8hA
	 7jUkIvBF9IvP86wZ7XwCO6MjhhOfMe9f/e0D/f0W4OtMBsC/bXJX8VItOVfpU4/U8z
	 ihRIeMJPgSC1WCdRhjjq6BhkyIR+RY9ytgitJYJmop8sAKyFBnNpBTPKnsRVHDF7Lj
	 VQBbX/+kuwGXpQx34IgJ3mrdV4NEfd0e6LkhnFoji8qr0IOX9hKFEpMztKczlshk8l
	 7EKDQbYLoK/HpQ4vk1vjB/VDLcujkVUrCe8vRonvTiem3kpGYgwnXtAS7mgcNuiE0P
	 tAkDBvHpQ9N3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95613C02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880335360.970.16951699095727145510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb47dffec1e10ec0b95c626561e50537d8712932f5024055304f29c32b88987
Date: Thu, 06 Feb 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738803353
