Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2510C163
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770042234; cv=none; b=Qt8CF54oDEepJCFpDjEPmCb9bYah3xwv2RM5/S0ieKEtc0zBFiZ34YFkwjpellkJ7rjPP2HQsHDIXfP5RFpq9yDlsBRy7z5pkgsUcJ7QXl2TxviJDl60ewlEpKtKNwssk6ajJdrkowN2pyfc+V918/rTSNnd5ETOjKTgcsE31Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770042234; c=relaxed/simple;
	bh=eIQOgC/6MJGqmzTTm6GerYXenxLxT0RLgawFCF4VLJA=;
	h=To:Subject:From:Message-Id:Date; b=EMtkpP+YUHp21E9EH0r8zVgdbNSjn4lGBd4hRCBkOsGBj4yvGbmiGCr3xu2CLM8TG+B8Dwd+YvkGJXdmkEbxKNmpe/jlan+qeI3JuXro7anyrcE0SIyuCTkDgIgXHKaoOcYfIQBA+qJnRJ/Y9G9G9k0F3kTW0E3wxN+XRy98jFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf1XO8Cf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf1XO8Cf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB8FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770042233;
	bh=eIQOgC/6MJGqmzTTm6GerYXenxLxT0RLgawFCF4VLJA=;
	h=To:Subject:From:Date:From;
	b=Kf1XO8CfyFxTL1EoDvdpyuxWl4WNxxrAk9/6zmGEay+tcmzu6dUzYTfighRVym9ms
	 jCWxev0Mpk3dji35MckP1F0FUVV8Z/UJvWDfa6ShxG5B/DN2Wz/+tNJ7sjKybgO8IC
	 LFJVcEu1dseBOJ/JYswUBWjhCJHDqBEf94RkNZt2thqH54kE1fRjX33RoNDGN9Y/nd
	 L1MjPQ4yZOxsYOuWzDFoZ/IHzwp1N5+NtAtJGHoPm0dh2cmMG1RDEPoeIuN8lWPtti
	 StSGHmSBYQ0f5Gwp3N8mLxxIypbLbT9pRUGBA9xqRJfbPJTMEqkbvJpWy59wtD+E3+
	 ib1mABQfg5t0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743AE7DEE3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004223360.28307.4846619292031418159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd41eb05496fbd93d8bf46ec56cc329f6583f4981ed923935b7a94da3445e96
Date: Mon, 02 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770042233
