Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED05E2556A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705534697; cv=none; b=qk/qTJVMBG4W50t4WKMYQuxz4nueJTaltzeA+H/b+ILHYPfwgNrwjgFDM7q1w/km8hjS+Bs+crcAzNh4yxnUD1wxMIFmLcLtE8zNLe+YiFXc7SLRzQHJOJhBBqCCyWKMgAkUpOOTtp09WAx3IChmF/rrVRDlI7Qpcf0FKNepCUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705534697; c=relaxed/simple;
	bh=N49WA4Nn0RmFPqhMlmd6DsDVxUuSf2JRryp7VdDdcU4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=KaTtyiEOfZeqfoZlpGGazufhAD4/bPGcXte7IMmLmLdrXalgx4V6VcP6efK40rib67E+O3K0HQu2Je/QWZnUXwBWC0Ed0un6kwcmNOjHjOn4r395kJUmErqTK1x7gxWHL+aipvvl8c+tjALvExkxx6JSjlslr/KptrUe1EXQPLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEquk4KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEquk4KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0B8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705534696;
	bh=N49WA4Nn0RmFPqhMlmd6DsDVxUuSf2JRryp7VdDdcU4=;
	h=To:Subject:From:Date:From;
	b=FEquk4KFI2ibcnSa6JhclCXzPaAJeiIh68ynto42jMeohEq5zBlk23a6wjHYLBr5O
	 h9uXWGYlTX/2ha3LhOkWQt26U0QnBotmPHIR8+uIOhL1OqHwq9XddCWkYJe0XpC4wP
	 c7Gljnj23H69AIyw8YK0GNJTkuXbJFwt3vg6APSvZ8plOR5mg+6pBn8yzWulMKVPqQ
	 Aj4sDL6qu0tDByJHzZSY74bdlE6GMkPJiuGTtXLJL69ScqiL0ZjEZIXOPO9+tOSuUE
	 uB3lN3ExOZxdfILBN2hnJB+1Fq2Pn+aFrX8xQZka8bh4YSgLLQHGFJeOoYNkGcE70I
	 nS3BX+Zd7Fm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6117AC4725D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553469636.15236.9224210957970279448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dfe671db696084bb87f0dd6325315f7fa9c05b02406c6c4dbe72b854998aab
Date: Wed, 17 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705534696
