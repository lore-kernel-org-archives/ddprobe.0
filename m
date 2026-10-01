Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F151344D9D
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790881834; cv=none; b=krEG5SDCmCmKATIj4PUohnQVKy5QNpi/b77XDAPalO+jXJQLSE+aB63fQxbr585vWheuBLajw9kBUkquafhAMPKJRLjVuTQXEOuGkPe6Q6Z+WCp5/zf5kC4zlxLGA8y3Xh6kQsuaJIyYC3Ucakl0l4dWx7ZCSSc4iJ0q5cIUfxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790881834; c=relaxed/simple;
	bh=fYZztuTNFV0qyYNMiM0IgxwHOXuV+5gC18FolRj46Y8=;
	h=To:Subject:From:Message-Id:Date; b=NAoAQZRbsmAn2deMBsuSo+W1KkPa9n75kpF2tu7N4e5Fu+XPR3zfJXBm5QekgWYuLvCdXlV/7VIPN4CEM/M8RHehiaADz4nRvQRJO17pjBOUlVjoEvcB+aaY6yVPft1q9BwtKglhC2rj4OmklKOSE8jL6pEUHqer5H9jimKHMy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONLuheu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONLuheu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BB3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790881833;
	bh=fYZztuTNFV0qyYNMiM0IgxwHOXuV+5gC18FolRj46Y8=;
	h=To:Subject:From:Date:From;
	b=ONLuheu/7jOmoI5w7Xy+WNkVkgcaOtDSGdxbM6ReAEFzach+az3W2Tv/5nrJsls4d
	 3VBfJwKl6FC/kVR9bFx3CJjhzw3a6eyCawVBELVDQXoqiLp1F6MKkBJHhSKJFDMHlB
	 YyTu99lwR+2tMkpVzYxO6jVbRKWrfAVJ1v2KTAUEzUdEIAorCLT7pLeWlSeLc7xi0f
	 xd2PIFzx/BRhjrY7xBiuBmoOIuKpCDWLi7OM57GMVSDqRm0POByl/ZQk+6dKWfG/yT
	 be/ap+Ma+g7nwD/QCLiypLaI3LX+pDibeQBUMOz/wv3cEZWn5k4LnRlCGUs5gub1yD
	 MbZ1gMkYMRqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056CCA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088183368.20572.469648111904839086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02080e79f0434ce86b58077ddc0a9c1872ce1819a70fb56e8a3c45149f961611
Date: Thu, 01 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790881833
