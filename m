Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263AF3B52FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782898714; cv=none; b=mK9F2sKvIjNrudjuptie6wbGT+HR0uxMIw3NjTHOkjvpasZ3ATKG4mDZNiDBFa8b9IW4rTsr0bQHUeAuzou1F0J1/jMinJ/pIwS4UsczMnZDCFy4SXns5l2IewHN298MD3Aw1omot0o+6gwMSTuolC+UuSlft9ZL0uoGYSt/lt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782898714; c=relaxed/simple;
	bh=ilV9EY56zNFicjw1Lqb1885KtfyOsBJRNERUL2J/ocw=;
	h=To:Subject:From:Message-Id:Date; b=alD2T7ryl6z4E0dBoS3h3d+0VSvzLpiHvQJK8t8657dVHFoNU6n2eSo8BdVH0kIy+YWFUb0UiGAFOYPRP/g9ZWN9QAbSt62JNFPqDKLxKzF39NvNc+oSQNDUnQq+CcD3nGATexpvDZfXQiyNQv3uiEcx/SCgtztNyHL33Jt+t6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAKmIFsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAKmIFsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C82C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782898713;
	bh=ilV9EY56zNFicjw1Lqb1885KtfyOsBJRNERUL2J/ocw=;
	h=To:Subject:From:Date:From;
	b=FAKmIFsh8LTgenKhPRCJYWGcaVU56+9LlOmiUPl9e+LlyzuYkXRqzJVxL0jdCHd2a
	 kt8CT+GTGXCysLt7CBtxzCBeUXubZoi3bXgknU6VYwreX0eA6MDpfu7l/DvyphiUsU
	 6+Agg1PbeQ155ltrPRrjbjeZEpldiYcuu30GOjTJQxE7+5WQ7rqJSgO+dOmYesbyyk
	 +TXiCThAtKyBO+3Vf+YrK4Lo/+0gwywe4MAJx/IEQa/zp7wuu+n7LkKBgm0CS46hp+
	 fPq1qBDJvErOAyVYnD+WHEgBcbyQ8dSbhyKzp3BmyEx2SdwII07J1l4cnyGWqlKnNY
	 3xKZDR8lsEKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB2C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289871368.2895.7640767427439405836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94e94601b5bd0af50ba5deec68836b3fc56bc214b000233382cdfc91e40f478
Date: Wed, 01 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782898713
