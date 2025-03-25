Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E372E339B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742922595; cv=none; b=bbGxRJX/m3VfkPowWwSc11IRjlXjfxXSDx937ERHHhg8ZcDRblJsIUNQFVR3I7L3wNq/diKjwA0ZWOiX2IKXhKSdptrv75948oywzRGah4Bac9hlzMTd/WHlCxEAe6Z41vLRshawl/i/jHu3W/NEpzejHh+E4nerEIGYSdOfYgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742922595; c=relaxed/simple;
	bh=BBr1ceJDVirx8c4v7qW+Q+d4PbuOz9ZZ84k6XNo/SSs=;
	h=To:Subject:From:Message-Id:Date; b=r5P0iZZTBamENXKtP0HmNZ1E3wftEfuZ7EatJrd/xJIEmMqIOmjctNJZyGvlNYsRWsMlPwIEx0bron6FxJTXEhf2lYllWMP8XPerT3jXYtaRoddxZpuKi7HpdetrYVVe24Ryxjb0hWdQVf3R151+PEm1E1JvPJSQX42dvNjgAKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPTJx4WR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPTJx4WR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2A9C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742922593;
	bh=BBr1ceJDVirx8c4v7qW+Q+d4PbuOz9ZZ84k6XNo/SSs=;
	h=To:Subject:From:Date:From;
	b=VPTJx4WRI0XH/yEo678hLV9xze6mzaDN+cfVBXRxEsHFWbkchbyMFfuNu4gVBSJxv
	 ipQuuoaBZJyzhD26ejE0gCzEbz6Dn5Vd7kIi8w9DlnL6Cd2cgXP5h7uYm/dCuy1hQq
	 FTJp6ptQjccX6ctUyY9HGTB0jK932LSboGvPGnLPvylYgCy6KcdBn5g0QZNgfAsP1Y
	 Brm6WxgBxmjMbbk60KmQCJvtKR3bo9i8jZ1g28brqhm5qWfUt0fMunRdrxjy6xftRT
	 83GWQ1TKXJSCdO+MYCG1uimMQAKbl1J/fd9jpk1on6Ya7+OkafkswuZUPViN7SuZLm
	 GrxVV5QXwbxAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B1C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292259368.22671.17194270689187648738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e048cbe08d279de8b6e10b8fc4bdc99fc767e40b817dd1673bb140c9b7ea69a6
Date: Tue, 25 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742922593
