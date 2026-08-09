Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA42378839
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786252234; cv=none; b=l88s59CHOMgeOzwLPAxciKbgdQ4mVtR1Q6RxKf+udtNVlRzB7rLzeQFeTWBL1FhLXcHuPmsQjFWd5i2ruRuBqF4j1vRruASvb1PsQRYKCrKYO6om4otCdv8EyiJu9Z0h+LkaQ9rDmueI0KP0jz2i0wuwWZVn+cTzkHueNJKqjs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786252234; c=relaxed/simple;
	bh=JPyC+1yPVVSecoIF4Q8CXpeTC+QIHAzvtp7FOJhOYcE=;
	h=To:Subject:From:Message-Id:Date; b=J0pAb21RGjFsl7VsisxKOpd8A8zeosxX9wLdvc3qeRbrEZRhOGRzNhVXjbjxycKsj98+VB0cdX0toSkxDW6acHuNd6gpcGAlKDGdVtP3RSgXKdH+NQaSdcpYmRfBcQNOexRuEdZFNR4+zpKDevtkaFnMIsZIDvK29L5FgtWGyM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M37fjamT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M37fjamT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B13C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786252233;
	bh=JPyC+1yPVVSecoIF4Q8CXpeTC+QIHAzvtp7FOJhOYcE=;
	h=To:Subject:From:Date:From;
	b=M37fjamT3n8EOd0scfz41VpcQyaSsTllZWKSmZuXllbHKKw4ktSEAx3WPbFNZoxmR
	 THyqE8jXWzkjoszWBsZQo4IoIcs43tO/lCms5IcHTvMcH56d6SGWP4RsVgrsU5JHR6
	 Jt3Q4sEnkCMZDGWD9yAQkVqhb4yKhDqjWiqcc1GpdT/KA9zQW3Wo4NQtUxO4wwRwoG
	 0t5E3gcfhCmKjSKY3ESJjMVmCtJ5jkXwrK0rE0gnKs7H3YuSAdJMrZl5aL7jjwvVeS
	 3GduhUbv40yPgdTzxto++Oh5E0z4Qs9jsk+4c/9WbXiOsWD+wcMKijK+GJS/Kr4ixZ
	 qL/6PXaXVCp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83DC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625223368.27059.10312900554019902064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea047a4e2b4038b3b16b514cc1cae7a7974b828dfc3c06fd10196440810861eb
Date: Sun, 09 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786252233
