Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7608190055
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728394553; cv=none; b=ZrKD5B6zUmCfF3ApBtpLDL5XnrGBRNnp8mNJVhPse4TJAQhEh3WfI8KOl+We9E0T85xuew5zwuOlFN9+D7pLE6WzXwQvqQhgrffJ6MGyGHq7j4uqUYlOyux6b0GoqzaypXhhQ9srsX2j5vuVrSEzpyLcsEXrarGc3c19kD06Mfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728394553; c=relaxed/simple;
	bh=2/+viHFMJYFhbHX0KiWVxGJ/2ReJivsXJKGKTCo7L2s=;
	h=To:Subject:From:Message-Id:Date; b=LR5OyrLta49sIDqX+xXu54EMLAdWyQNZa07dTHWLJar6Tm48VZQzocSPyUA7JrG7CafyKhA7RkAFjBIQ8b7qQsQiDpFUtbaIBDARwM1X7CqPvOySx3uuDmkMbZfUjUl2z4vB4TWj2r5pwadZ0i78IlWNMbiBcI8eRuirY8Kn+Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpuDgVnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpuDgVnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A618CC4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728394553;
	bh=2/+viHFMJYFhbHX0KiWVxGJ/2ReJivsXJKGKTCo7L2s=;
	h=To:Subject:From:Date:From;
	b=EpuDgVnRKsrapa9uHoiIaVdh1PTU2FTTkSetsCIJQCVDJAnxGKoDSFTYaWecRtE0B
	 06ONOteyOICLcHFbye+lx5NYB2AZ55/Dn66IHflIuUI60o9R7UIk/YuVJYIDfuLP56
	 upCmdhAMPN0Qe3FKYT5vLe7UdHWq6pQv1cDlIquy1YN962ZzRCtA3U5hmCVcKSRanN
	 q/w738GhtkzUj8daVPeSJ6uaSe+YIhlgFihdjKCAYi7Tojg7froyzrvqZzuoNrpwRN
	 hUBoyDt1ZkYMkWUP3Sx6guuJxuWeEa2UvaK+URNnJn+KCtmxY4Ek8/7CudEdeZVXyy
	 kElMWwTmNun6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ACDCEF173
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839455359.27885.3147836726626929634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7ba0ea565fad559d3e0e27a0dbd7d1da8e515a5d4ca46fc8a3ea7d733687f3
Date: Tue, 08 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728394553
