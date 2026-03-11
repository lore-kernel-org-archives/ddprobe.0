Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2469E156F45
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773202494; cv=none; b=u7jPGY2pge8ysevB+nTXexF0NHjDbpMzu+MDpO7GOik+ZPt6kWENmKBCS3HFjUBME77v4HNE6UyGMPbZdrAeargvjrJRXxP37RZMzMkhrX/1ZRtAplDtArvge5rg9ixfRra65ZbQNpJCUtMxqVLYW3AdMLqQKeMGdBPE3ZmzYJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773202494; c=relaxed/simple;
	bh=ltRrB0aYZyh/VbJ6VQa2la/91FVH1t1joj9eZ/b4yFM=;
	h=To:Subject:From:Message-Id:Date; b=n5KEvtXjXuoTVTdecqQNHGVuyBV1AO9S8+zlun7tohgcn8eVC0NMyYwaw0dWyXoIJHB37X6iIpceP4VkzpjjlfDgrD1Z129SvvXRXy+lHK7SQVJy35zjPshd6DERTgt2bS5C5LVGwHIO5yBfIAlESU0luzTp+erlpKUGKbEYBbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAWwZKu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAWwZKu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8C0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773202493;
	bh=ltRrB0aYZyh/VbJ6VQa2la/91FVH1t1joj9eZ/b4yFM=;
	h=To:Subject:From:Date:From;
	b=nAWwZKu5hzSBDk1wTfYXTDbs69tEueGXUGYAOMnLA7rkr3Pf50aiIEvHhakF8PUNZ
	 W5GYGnDfyBm31pMe4M2dO27WyuQbJ5GiZkzSeihWjEyYqNEPdE6hYz0wNgZkDVNeVj
	 TGvqnqMbTjg5qJDpohLEcrYA+Q9A0i1uWjOOM9JlsOx81vKf9IMaydjQsNB5USY0g5
	 2dJbrgEeAZzASesIv0JSMzLnxImNnNP86lp+bT0BRBHYGac7WELHsWJLl/S+q5tUX4
	 oPPLKdNoLqFxhjdNZrReQp99eWgDgMzNGCvp9q54S+KC2MPfXFIjCkr7Aizclrr87q
	 niINB+py87r+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9FCFD88F6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320249363.31748.15762784252926691610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01381daff39b2ab26909391948ba096829d6312746d0a30a16f63129b272a0ee
Date: Wed, 11 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773202493
