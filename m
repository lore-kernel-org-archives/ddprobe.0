Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C7C378830
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778644834; cv=none; b=JRpvgGpx2irs2P8YqHV+iTqR6qT6u6iFq0fSLHRLvH8WVYsDGpSF7/5ldDk7RO38YC+KSAqvqZavxRSVEx6QqJyjOzinoKKlvOXu2O/iEdTwoBr7K4ni4HhEaGXtuMlSlvZCGG/iy+6zkcI7UhrI8gqxYhA/OKS/bXhhv4IArUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778644834; c=relaxed/simple;
	bh=1cYccK/dnV9kMCyvt5GXy/HyLXGBY8KTmR+Z+5GPpVk=;
	h=To:Subject:From:Message-Id:Date; b=MdBTHxkDsoKFNXCeWYmGYdAXAiL2tTDzYwWVo/f2Ix1isbimGPpF/bccOWIOjyaNBQS0+Fg4cJ0dQpg1cARgeWc57cttLMgSvkzAj8k50cQ4Z2z3CmD2rGRR3X3LhOUVsJ8nudLq5mcirHg5Yg2hMXovtOA4DaaCTJk9Fk3Bxjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+urVRCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+urVRCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EC9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778644833;
	bh=1cYccK/dnV9kMCyvt5GXy/HyLXGBY8KTmR+Z+5GPpVk=;
	h=To:Subject:From:Date:From;
	b=t+urVRCI+PHsjowggDwGxcN8DMIItsWEebFfNsXJ1T84dZHCv7W+FXLaR/la2/CSp
	 0A119BjL05GYFwFquQ1aVvH2Mxr1N6WAZv1WrpzTGb/jTp8tapdEm4sJMi8WQwkR07
	 9WVrkKux/Cbxd9PGM0w8BbzB470+gSs3mci0AqKydpCSkRAf0HFecHypYdCb1vct4a
	 4VWjlpElov7eVTHV7jJpO8+nNoMUvakboX+VLcVOFZfdFDBA0QxNmPuHLrwTEu9qZk
	 0PybpamrpWO1Czld8ejHnOPvS8UOc6dpH7Be3bv6Lt3gUT9DVtK3pv2T94j1Zo3r2P
	 rCQjx6ZFeoCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB51CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864483368.2437.104434614086026954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f433c59a69bd85703eae5232dbabea3fb06e87d0554c7bde10d179e7a86389
Date: Wed, 13 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778644833
