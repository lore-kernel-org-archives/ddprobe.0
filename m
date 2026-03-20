Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0958635C1B4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774030494; cv=none; b=H28NQOp+GZ25n4CrVdZBBMvvos63byCob+E1N4cT+tMhpsR+0yzm+Ub6BIBaZZHZoUt7FWyr4RurmsI5uFeeF5+HSTM0uIGwjbHA2mcLD2RPTe34DqMFgzJYXi5KbJUB0/nfKiNoSaoJVSznCMaUVBydEPafIHtREGZWQ6i+om4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774030494; c=relaxed/simple;
	bh=ksjTfAGyyI9Zf5vQpyoKwA7mhjUeloeVVCIVGYy0WKE=;
	h=To:Subject:From:Message-Id:Date; b=hWDyjZ92mPr/+Tefp3t3ANX2Uf4BmGgjixU4HWdwbIOWjVD2Y2aaTz+ACNMw2FuKkjtY4wDqueaS0dR9cqiIed9nJF4HNLDE9pOMIyqKbbkjQR8A7ynCIk+wE7mjkz/wi7ZxWQg7RV4aco12xGngFlWjSq4mS4YQgjFRGCYPXT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnLSXrdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnLSXrdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774030493;
	bh=ksjTfAGyyI9Zf5vQpyoKwA7mhjUeloeVVCIVGYy0WKE=;
	h=To:Subject:From:Date:From;
	b=OnLSXrdD67Co7KWp38qoRXzGlaMOaFVVfLOz3wVHuzaXeXz22MjyR+2qybVMpxBEJ
	 3o4MpFx0/cByP4HP8NlrKUjv/eYg3o8XevhgNzRVgHAEQ/yVuMcQblR6r7e0BMXnNC
	 EcQCAV/lXjK+DwMORvzU6+mk6nIzHx9V4CjQq4p2B7Mikx4VAfV2zu3KMHWqqhbw1P
	 4vqKtuDizYxJ1U5GWQXJvcuDIXNLf5ui0+YKh9iVpKmqhhOYIMif3LhHKQkrPxMKJF
	 YZvgKFdmQyona8aMtx/gvyIw96li2KoWqr82QJhrc0mFBiJouZcL36/RKX0KSWkKnc
	 NzN7thataOjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C51099B33
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403049357.13381.7227871516886539366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba2c252b35d4657ffb5da0865a9f5d92372e42953454095d71deb2751a22f04
Date: Fri, 20 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774030493
