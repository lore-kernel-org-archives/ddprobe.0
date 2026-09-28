Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546FE3CFF49
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790590234; cv=none; b=bWfZBvtDzPWdaMEDbs2KylXTOHvcGshKcIDmHqiLtOgO2UU/IMmZt+VLqeXw2NKvOf/rtktq63kpGI4NOUDTmFhlza+WUxD55j0PmNn475Bx1v9VROrPoV0NYh+5mN0U/mVVLvqXrCCHXgYnpMiiQhM0NOaps7LLK9WcYBuFWQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790590234; c=relaxed/simple;
	bh=9RSRQuHDHzeVkBNz1fBxOhWT5Kd4QsS+s8Z4Dy9tDTI=;
	h=To:Subject:From:Message-Id:Date; b=RnNrGgT76j5xQGH9RPKAB4Hzn84ZNmI0emdFTdS/RNJzm5YDRRj3rGt1kaklPOA6ouSIMCrvfXdRTyQ4K0JE/6GE2qfTSH3AF9TdxA6pNTotezr8KpWUbiA3Us4I6Q0zNFyv5dbJWJCLfLcuTTjw8a7Cp1MxQSp2tWZ3S1IHtvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3ouHEIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ouHEIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4DCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790590233;
	bh=9RSRQuHDHzeVkBNz1fBxOhWT5Kd4QsS+s8Z4Dy9tDTI=;
	h=To:Subject:From:Date:From;
	b=J3ouHEIrS6rswF0sI89iPUEp2InxfBtT3t/pV0jZ5OXkiG3QQbf/1KBT+7yCRM7g9
	 FKLIHRBwOa/YqMzIAfgY+ym9hQeFbUmxDph5yeQg0pxottStVOLJweG/z+83Vc2bKn
	 IX/aALw8SMgMJeNHN+FP4JumwSOPx1uKgkHnAvDMzosu9fvgCSz/SfxIMNb7G6EeUO
	 TgClSgYiQon1Gcp3GH9e85Bi6hbSp+NKpvQ7GW8MNKRjsoHGFYcPGJd1mFmhpvbWfl
	 WtCnReNQpghj0lYBD82FCuTgG9D10o62wWSpE6YoQYsdqDFjk7wFrNfFEACBiiq7Ko
	 0ELZ7Z2EjZVpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA152C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059023368.31486.702450126372901166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159d40e26717e9f0e8c4e02dc13bf3cdf01d5212e89e0fa6efd921df74d124d3
Date: Mon, 28 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790590233
