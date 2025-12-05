Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6D62FD1D6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764921174; cv=none; b=t/5fP59w4oh2ScWfw7Lgf6jmp/2NTFhlkfR/N3oJOdEakNbRml0VX5oae87KfNPHj500j0qWifz0PYxIS6K8A+FjHiaPQMVPk+N+rOexLeO9u4e0WOVwsgmCpGZK8IGKTV6s76AbtWXeLB0RLe97N1BvpG8dfx2eOUYYuZALLTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764921174; c=relaxed/simple;
	bh=t1MTrldsCCYXCuCPo0PqHEKWb2Qqej71PiM5xqJEvNw=;
	h=To:Subject:From:Message-Id:Date; b=XnPI/G3Cc9TAUEokCEht3Ln1yUmuxrkO9eszAcVoBnh0Wn8T8eK+ug+Te+XXkQ/vEzwRQqTfIK6y8m61mH7KkTBcIB9qGj4doptXY3jqDL3fPjp68S0yQVDKnygKzcL4jkvM5ZroDua596JCiYUiDfax6q2A4uJFbJhW8+JCFx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEZDizSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEZDizSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98071C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764921173;
	bh=t1MTrldsCCYXCuCPo0PqHEKWb2Qqej71PiM5xqJEvNw=;
	h=To:Subject:From:Date:From;
	b=mEZDizSRfdAikyaVPyeaHmM2d5GaKvAZwfh4vrgrs6XibVSpgRsj5KLwvV3Bg41St
	 ZcmtEl9Fx1dVBG9j2LsD5Dmj16QJfBuaUk03e8TzjQ7GUfNLmX9GKSxa8CUwf1gEmC
	 HmIA4lWsWDmK2zbMB2M0Dwd0E5m8rCdYEpy/g653CVXjW3lNSL43xTUefvWdYzgAtJ
	 e2HiyzC6GRtrExlXt5yN6LJIW+di+MOxoErUWTqcMt/AnwUg2ABBZjF5+7jHYNSigk
	 +xvxBjf4HwRkAtjIE4ME2ET7fFEq+2a9aLZj251FBDSJkySAk7doI4DE//OWDobkQg
	 ZI6KGxiyQhC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B61D2E02E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492117358.12344.1417852234389136004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7a42e5f78ac719686e7e182c7cff4331b36236246b8768f1d7dc5f0350b040
Date: Fri, 05 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764921173
