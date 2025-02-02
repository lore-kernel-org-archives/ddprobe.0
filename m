Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F652F3B
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738533355; cv=none; b=jQYA5ppNHJuRnqhTRSuyLNJIsplYUWNtl2boErGiUGzi71pD/62v86ZZFk8CcFwA3Ph8nP3rtggitwyU+xONKSmltMeEfWs2WZZB4BdMInhKqLVQ9E0p4k0RMkBJtpfpp+P1BGkevpBU7r3v8c5hL87KAgQNNYgwT+1BD5ifKSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738533355; c=relaxed/simple;
	bh=2p/yptLcucfLLjXuiXlziBlWyRefnkIcyRaTfp9tplg=;
	h=To:Subject:From:Message-Id:Date; b=I3ciFNEUqZEu8QVxTWu52Q6LaA/v/8p3H/R2UgyBogGYSzOGVY3Ham1/+xxI7gEW6wutDBUfyTwyBKiVfcBCpM2TDb74akhnV2bqzQJEDBfev1/eIjDQszZQYBTwTZLKyrmgXswPkEVGbk0k52G6GIU5jfIIBvaIXDY8Grv0QQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUN3pZ+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUN3pZ+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8AEC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738533353;
	bh=2p/yptLcucfLLjXuiXlziBlWyRefnkIcyRaTfp9tplg=;
	h=To:Subject:From:Date:From;
	b=EUN3pZ+fXk0kVkBxLxBBMLENn2cf8GNIm/TDSoZRLhPpnJzFUivHQiiQa2raAZSgE
	 Ziv9NNqYNeUZvdK0g601EmGg+SjvdflgoeRWhs2tIysISbriYpMBMZMdHIsqRoFG3o
	 /l4yYoMM1ybjBDtHpBuTMsav1+xmLPLW1+kFr23p+eZhMuuoMcBMm/Y5S9jIKNXeqB
	 ZO05dMZhwiqqjcsW53CfQqWYXXgcOXvjSgTsaTQhS5o+xP2yW+IqKkHVgQqZzJuJDR
	 2HfzlqfYGOy+GeY7z/dHs8OoKKiQwiel34oPm4YsMjNVBSgGygCETNS0dIt52rU/V5
	 Ykm6UbFUs34Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DFC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853335361.5409.16296146861951691947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cfce385ff23fc1aab12a8d07aaf6148590430aafeba586b1999f54e5c9c25a
Date: Sun, 02 Feb 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738533353
