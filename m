Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EFB242D6A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716034; cv=none; b=usV8/2jZiR/EKaYOoNNqm3NYAlmRNiXq4A5pKTNROpDevkszm7F9yDzrmyu3Mb+O0tserruJtBAPZm1hAc9ZWMM2czV+g+215kwfSsGf30RZPYSUqtED/x9Oa753ZlLkUQt5wBwFIhDqI2BkHSA8+i4ukg+LepyvykDM2whIX64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716034; c=relaxed/simple;
	bh=nezxA8ygeJcEL+ULwsim2PJpsxWDOuHCMTmyFbuKL8Q=;
	h=To:Subject:From:Message-Id:Date; b=D7yOyHwW3LdFmzDTbx0AUTvdmSiiORF/T03eYohr2BFl7bPclDtvqnuvXIVt4scz90zKgbHUlBVK4tg9g+IWYpr94pWpyktzfAZV+eNAQ1WBuE1ivatBF1bS/d3s98UVb2WlKx0JePjY6hxWDzYJ4CZUa/mufohEknD5NOjkrBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXBXWOVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXBXWOVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE12C19423
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767716033;
	bh=nezxA8ygeJcEL+ULwsim2PJpsxWDOuHCMTmyFbuKL8Q=;
	h=To:Subject:From:Date:From;
	b=BXBXWOVRQnbBc1bPz+CdnpnG5xc541ECgySsYgu1DAM7JYtV7kTqYPfikbqtq/igr
	 VGFhPf0NNr+BjFLtUF3uiohOHJXdwE9U8SACxRh8aWdZxlbrYGyLCcGYAZpPYnlgec
	 P14OKFREYF7+/ukuGtIfhjikNvMtDj5KJesIldhQEEZWokVMdLk3qNnC+DDugKHpuu
	 /9btfuzi5fddXOqKutvKES1zSjSCUMQ8tmCPh3jcm+y1cA0TQkvEaAyZw+mDo+udLG
	 uUxy37VNikylSAcGFVTEQIUN002B92vK+6HgBYTdhdbPt8ExFvYFE0q9CfAZcFCMlV
	 gT4Gz06PxbanQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD1CE9D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771603358.23701.5878705210701766075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c5144ee64974a21240bc6d2391aee4e683e880dbedb696815b124004c258ca
Date: Tue, 06 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767716033
