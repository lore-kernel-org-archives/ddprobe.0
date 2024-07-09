Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D2B154C07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720515983; cv=none; b=qaDRFU0XThf/ojl5fY8CSHG9BhHNAbmQChO0B8uV/1pndAVduRdZTt2IpAnnyl/+Ijltj+6rdUTkF+fack4Q57lFvK7zXyX22c+M2sAKelEhzuOoKDzGrtlYlnF+sgJDkak1CHBkiKNBy5w/b4H//Q9OrgbqAiH3DM9xax+eJCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720515983; c=relaxed/simple;
	bh=DU2OfJ3h8YArLVvVxXCzWUHCy8u4LuvreY++ZnRUjRE=;
	h=To:Subject:From:Message-Id:Date; b=QunfFG5VEXQrVkAUJEDM/iGlI0I/Us9jCrgEsc3sJfiQmTSXOQdR+p5mZyCtYceXDPMuopdsE8EYurLpM167GzlIHEPKB/ys592eWiOmLDo1xSI/W2raF0bj/Tct29fbfr6nSgyFCwwSgwy1H9X+48YopBfNJSj2xwzhcSR1M/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmo3dASP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmo3dASP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A11C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720515982;
	bh=DU2OfJ3h8YArLVvVxXCzWUHCy8u4LuvreY++ZnRUjRE=;
	h=To:Subject:From:Date:From;
	b=mmo3dASPIjABXw5sVN9A5J4aiJhDES2IUCanNVUv8fSHm9VFabiDFvw5YIzTGQ97y
	 d3KUb5PZuXER0zzexrn1v7B3iJyQOc+4gaZgrbD9S8WXR8oJAQwgtE+K479C7gSzRq
	 7BwqphyVT/ou2YU+rmOTNBJZNxnIPX4BpmjejI4v9UH6O0738dCYa5vL0GWB4iA/9d
	 z5crZasCfA5W/4Aea+0a8NxO+pOXJ79mWYg5c0D98xfmYNioGOaY1t924NlpDmDwYx
	 06mnsDG/r5Q6FsUdfHzcOH40beOImPzwG1D8AQoPT6YgetU4QXktfKEqIsGTtZHj4n
	 A7Hnudm3SwP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0C0C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051598276.13167.8956130266475411560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df8b741beef3e49d253c5d5ef141d1a0644e83ea76cab562c0695d8d0e58f3a
Date: Tue, 09 Jul 2024 09:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720515982
