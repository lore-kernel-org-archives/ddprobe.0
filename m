Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0FA1CAA4
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745737194; cv=none; b=gha5bPQsGU/O1cQHpZgUV7XyCOsx+56BjcDUExZs0JIV9Cmcs4/il31du6IsC08EI6Gcoo7y+HzxJLbL34KVsW7nMlKpp94/XqL39VGc8+3XkruM6EqhxftH4bRaHHfIkSZzOnIxKrRKa/mkrObVHi5BBrWWACaz6OHQNMxC5ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745737194; c=relaxed/simple;
	bh=3SO9EZrYpHMJtv0Dnkpxjae7QVrpVtfDwvnE2+8RzRk=;
	h=To:Subject:From:Message-Id:Date; b=pgQ5gcBFM6vsPg9HwvkRtwFG9rLTiksCYT8MmoatJk8mc19zj7+Ms0qJXN+ffL5cLFIfQQP3N+/dcE1cVXP+Y1E1aS/jRtGr1hMPWRU+C9LTxsujm4tsykWOLJrI3dBovovFyIYzrTq9LJuGp75DJ3wcvs6hIjh4iVcw6d98EaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6YDi4Ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6YDi4Ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745737193;
	bh=3SO9EZrYpHMJtv0Dnkpxjae7QVrpVtfDwvnE2+8RzRk=;
	h=To:Subject:From:Date:From;
	b=o6YDi4NiVzNRAzPYiGYnsBbnzkC5AWT1fW6QI3yCiYGWhVrJRVBSW98mWIDIqE5xo
	 bq3XfKBwOvS5b0d+ajcl7SP7eSmiHAqmjKrQCX4PbB6RM68qzzaLbsyBwHU17jjxPu
	 ZjPiCCtGfBQy8HwAM7ay/YrIwBSLAmvvTxzlT0+OOPqY61rhQI0l16vIJ1/KCKpRfi
	 yFFyKnawzramBZPtABGiTia7ChAbjMRgk/UA4uMMptaotUjl5eMoVGhubRb08Pr5xF
	 /MKHlMIpBj1HviVAlL0JjTaBxPFsU+XnF+pb4wdsfHvs6QZ982mSmQJVWuvc1fItZI
	 UubmUJrbiQI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF7EC369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573719357.22276.14032289100458535518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a621e68e59127ccb95abd18df78826838e665dfb23eed9d7a77d959c570020
Date: Sun, 27 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745737193
