Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB824CEE8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759372794; cv=none; b=Gv95+VoLj4len3tJUra+8ffup1ERhcyrXV/mXJnIg8zqOvnVaNtM1hQ7FlT654+lmOeOn5Ln7cVwD6kLPL8c+Bnl/3bjNoqm8VC4PQEaEoU0FO6HpHxI/vxjKMg678AT0dQGpp+CmVG17YJRZA/LJn7a43Of6BeiGwfzTzliv8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759372794; c=relaxed/simple;
	bh=ZfE791UoJQYMLtk0RMD9A+pheod+R9DTypGrePvIM+Q=;
	h=To:Subject:From:Message-Id:Date; b=n43ek+9nOMM8m4tRNQ4NiI00ZyexLiYd/xVBn3NAqYVdOnbMNHuAK5+ox77POF9v4+9d7NYu6cCePc0a1WpLFtdPTQs5AH4sg52H4FuTB56z2VutTOcjSVOcryc+oJ1AB89WN4wXx8lu5ez+RnQF2lr5XfLBFexn3+woTVbUd10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMvFCxrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMvFCxrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759372793;
	bh=ZfE791UoJQYMLtk0RMD9A+pheod+R9DTypGrePvIM+Q=;
	h=To:Subject:From:Date:From;
	b=nMvFCxrkGUcK0JiO7+0hhLChiKeMdjsc0h48TWshcyV8gYplejNwLnZ6pK+ky6xV9
	 TibqG5X/r6Z/oxhTjeaauJKTUnWSoV3zZIm4jxFA5pWAusHOPRfk6D5m9X2jtAqHvo
	 9kdKsnCoRjDYoLeGDEx60i+j++fSdFu5Tki1QuZRa90Q3q1a/WQbWLk/vTvsDXwMKW
	 NKInGS+VBEdoewKaejYLjwrUbP5H+bTsQ73+gJ++61DQNfMVRmly50mj0hnznxbsZx
	 /zvw0F46VkDpAaSqMFKsosIt4YdWQg/hsHBt1CHjH0i8rWsy4MDpuqC86RMwdw6iOe
	 +nrCADgS29ZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875ACAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937279358.24660.13790001777031160555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b02c71e725b3e2e57aed120f33cfe4553954582bbe5cf9829507bd58fe70c74
Date: Thu, 02 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759372793
