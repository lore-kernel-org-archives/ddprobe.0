Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC7515D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745117394; cv=none; b=SnEvRr8Z6k1pR9oGW/QtZq8ISqff87SPP6LrNj4dfAVNM72wJDX+FHYPHD/beBIJWePGxw8oyIgwEdl5sE0MIqvyZ63J0pP5/9Rkgb2AtMpIWnq+CtQmMy1IMT8ZhE/JDfzI5ct3T9hgjmzeskaxYJM/PkKQoP92PBDKGqwof94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745117394; c=relaxed/simple;
	bh=lb8fnDBnhOzeF0Ls8Fgz4kxXcdGEOqGbNEi4jS06P1E=;
	h=To:Subject:From:Message-Id:Date; b=h3xVngkglkez8+mHZd042gbeHbA1IaimjxNStRTrQlqyTDgI8EStwVDydiavthWKBGigYFHacqXo0dknTZF/xxhCmYillr7oiczZKLS953TM31WaNUF07CsTEBEiXgsy0unTKyAqhcOuPomHELu1X24WSI9OIO3cN0BwJtWKlBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKOpzByV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKOpzByV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC61C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745117393;
	bh=lb8fnDBnhOzeF0Ls8Fgz4kxXcdGEOqGbNEi4jS06P1E=;
	h=To:Subject:From:Date:From;
	b=kKOpzByVV2ExCUWwfLPQ6DMJQ4feoMEbgNhkVc8Bp6nZNqRCY6rILGTWELpeP6joc
	 txni8XL2twRK0xILpWJnCyY/xu4/JG/ldfrPdIhWY8ZZkMQI7vWbGyd65Ft7dDz0wT
	 lGmEj18DCYU1uzA/swA834eeg8SYh1Dvr6TBWR8l/u1xIZCJy8zzi6tNkqcqWXEDW8
	 65yxARqmEgz8gEB5SAtvxO+ZYJYHCL4FUf/qgu9ErQFGlrxSdrbgmpzutptOfoGv8e
	 YKAaBe8Zo9QHjiUA2KNAlA8JI5jwkBPFBGRAeUoYmh/bbUa7l+K4uLeHdQQE/Dbq7p
	 UeMr/SXAzgxEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954BFC369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511739358.7470.15064131051793337958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e83ca31a84f844f9a5dd966da0d5bb977b4e4386955b546471323e403ca3264
Date: Sun, 20 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745117393
