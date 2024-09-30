Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246962AEEC
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727687154; cv=none; b=e4DnSV4IErfJPILtoIo9YMuP5ZjMiFVhmER6k3xr8wlKmEkQHtSF6VcYkGtQM2Ib6htYF0Ye7dWTjCz7/6Orhgr7C7F0NJwuq/dXTebfM8u+7c2w+46HAltPu67jLwZ4hsmWiKuRsmOsv7nZNU1uDrV3kPamSSFMD8UmAxfAn4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727687154; c=relaxed/simple;
	bh=iyy9WxjkaSsKlQB4JXnBQcw+LmG58KIic7h4PiM9sds=;
	h=To:Subject:From:Message-Id:Date; b=mL7+VtKHvjLq6jq8BNRmjoVhX69+FfeOYa7mPhPEPvmJrz5Uqku1+9goNCTDGBPQlnGwrITASTfpc9OHytdVPQnNnsmZgaGZvFSWY309o1BLSP7AH+tl+780R9/Y4Gs5DPJshvUJErunNw+ELWX06tem8Nw8TyFSFvHZkUjKTTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJEXlqfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJEXlqfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5C9C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727687153;
	bh=iyy9WxjkaSsKlQB4JXnBQcw+LmG58KIic7h4PiM9sds=;
	h=To:Subject:From:Date:From;
	b=uJEXlqfJ5cTZaZwtZnudUnS5fzmgj9DI/5/KFwmERNiL0zlw7RdDB9bK5BqiI0jFR
	 aQhtcqsO8icoZuWHCok2jSLiwUaawcwa5El5+uTbrpHCIiMrgJ148N/552DST342MF
	 ZCCB+em/Led1d9WQG9wXq4t8OHbDuWOZGjAxk7c25hdgq5F76pvE7Ik3HFkCqcirlj
	 4ZTu+82PMGW3PNs+0pYxfxvO+0yY2uUVl8i43ENhWI/i/CSACLCZXnkrJTRDZwhsTS
	 RDD+iEXx9eSRm5sWyMOZuTALQYXSadxlyz0IeSWVr0IUTcw2rzuOfHv6pLBpF4oSk9
	 XWL7ZHio8tieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99882CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768715361.3918.10698596986247396648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2823e7de465fb79eebad33cc5f2c829d71a2ec98f7d26ddea353b8d5754671a0
Date: Mon, 30 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727687153
