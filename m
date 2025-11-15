Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2890521254B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763236854; cv=none; b=P44CFzRo5dKXzVtFWgaLnERLOI7uN7RAq2LpJiqkWka5VgBa0gMxEi58emSz9XdtG5xaJNHrDwoDNnBWqg2s15qK3kKDOZhPT87Fz/lO8CJAIAUChoB0dLIduhs54KXjE5Hja3GjkrKsVdh6RPh8kW9VcXpYlV+AxD1BdqzAoL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763236854; c=relaxed/simple;
	bh=qPH6aSiHHgueVk8lNr5pKaYQstQ9CAQrUJ8PpLl/C3A=;
	h=To:Subject:From:Message-Id:Date; b=jpJ7hYY08ggfd+4YFSVaSWSTNtvA21zCt2+MFm5T+7WwInBMfcN027OH3DL+ZnMnEHbPEUi+KzuK6uCC/qv1iDzqBKt6ZeoAfyxt7fuxifh5DYtUqebrcHMLHLdFDX9uRdtIkCxGZ4tv2tEFGYSrnjnUyEp33wJw179cE56D46c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyVDFBDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyVDFBDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A915BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763236853;
	bh=qPH6aSiHHgueVk8lNr5pKaYQstQ9CAQrUJ8PpLl/C3A=;
	h=To:Subject:From:Date:From;
	b=HyVDFBDhxHp0UrAsePU1psR1NGQ6nDErmMjkX8wcolvJJHOh+00S1WUGvsRChZskA
	 mpE7I5o2mCOnlHcL77IyJmP3BQOxSyU061xdFVDkCoL5No2ZNP+SozrDzhvLy+19ht
	 Ldz81Mb8H8LeyYKvDueI+IDQjdoqs1UfXdxbMff7mgzQo14Za7+bDjT3IAP3x+VWmW
	 RiXFBoltK/xjq97c0cbwmGVAiPxwiYmp4ZrKUELnisSToq8b+RJ5PAXO8oHcuZjxAe
	 GzpfHY/rrMvEBEO4uzOWJnku/ujMmff9/4Phx6NlNqRGoIiHJkvBZSQmflKBXuEqKs
	 pa4ZLGUb7bBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABA7CEBF80
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323685359.28911.13571301628487427929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df610f3233fe41c5a64853800e4c9363781102cfe838c2d9ee675cb96710f86
Date: Sat, 15 Nov 2025 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763236853
