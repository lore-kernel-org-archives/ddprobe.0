Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7002E6103
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751546394; cv=none; b=IMRsmKAWSW6QSCOFDD+/vlP2AGaBWkHE6Ue80d4ZZ1CCFxlSc456At8s94mya5j7bDaWq1gAoLSs1ycSakm+iuzLOwRvLDgUxuT3Fl/UTACvh2uD9/EU8oIzUa3pFbkHNH+vB7GzwWjA2QvRW4auHvHg6I++D0jGqx5IyJbbAs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751546394; c=relaxed/simple;
	bh=vQA00ZZkM/uzWuDLfRz1Yt0q3Pgrc7rAYZRC7ihlkjQ=;
	h=To:Subject:From:Message-Id:Date; b=TP/N8MMTXye7XFnRMCa1xuJpUxM2HfltJeb8Mq1YRyfg3J7d5Kl/coLi1H6qZo5IXk9bTMm/+Rmd/mjiELLVoNEeFFPliN4l8bZMRCGIGabSrm4ReuDq+YHvbQCrMLUNrmGVocMYjmvRqrGozBMATibdI/pXgXAK+ewTNVtIEZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbMQI8lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbMQI8lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D203C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751546393;
	bh=vQA00ZZkM/uzWuDLfRz1Yt0q3Pgrc7rAYZRC7ihlkjQ=;
	h=To:Subject:From:Date:From;
	b=qbMQI8lkww2TYysQaHK+ZxzeZsVG1Zu8p8jZ4L6xOdpsTEMLY14YidAzUnI3uugye
	 wR1W9jKEzQOj7Ov17HHsz5+nEjWMQODgJM3q9533zFpEoKyfEeIO/P270UcOyjPiLO
	 BXsSj7mRHnhK1DjvE/NwaOboefMPBsZtm3OYg3sRtvCCrrfJwztHL4nqKzn6paa9LI
	 E43BHGsKpJMXuTFaSR6jukR0wwXG4mw87Qtb1y+GB3fuFOAoUNk+dSwcRYtE5HL3F8
	 Zw5JBoQpiARKWND6Uav2OihpcG3/2xzNM72zwlrVvhd43ncKttW8DdqUn26EmMV6kN
	 FeTM1B93H7tNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E469C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154639357.13779.6945776110291814186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3fc2ef63384b62ec05026e2059e96ba8894c31631e2bb8f7171ded30bf413d
Date: Thu, 03 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751546393
