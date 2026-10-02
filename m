Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5158534D4F9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790917834; cv=none; b=t5M9p08QFc8qnzv/zoSrqzg8WNgnqRkNrvar+lN8VG2Tt9wKZpzbCOIT2Y6Q6jzmMj2T00izpXT3Dhhiujuju3kuaa7PfdP/JaQf54bLj4GlKpMnF85CL3NaVmnzVxXx13RktTJ+XGdwWBCTF/7nQnm8mu78H0+1domVTeIAZW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790917834; c=relaxed/simple;
	bh=P+Qyc5lfKaokWkhryFs0FHEM8FKSC+JQg8vNjE2ffNA=;
	h=To:Subject:From:Message-Id:Date; b=SlLv1MV1nbRvjZMiL6GPqyMiinPdmXzLBdh11BItPz1qvf4/jiG3j8pN/bZllRspLsrYl1hH2ujdWRXbdWaOBy+XOFBRIZIQ7sGlg16N3/L08b1w3an7uhKBX1xSjtJQRhBSIKkC1gCLcnT2epvkbvXoIepakXCAgCTJBskmHHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faZSlOkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faZSlOkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C2AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790917833;
	bh=P+Qyc5lfKaokWkhryFs0FHEM8FKSC+JQg8vNjE2ffNA=;
	h=To:Subject:From:Date:From;
	b=faZSlOkflfl/SvD0Fl2rzJIoI8Uvn1jKqdqgPrfNPI1TH9rR+jjTdPchT/g5lnRPz
	 I5AzvykB5HufDjBPg3frCUipF36K7HH863UT4rGlEDBRyOfkoHmoI2tKqxd1x2N7TQ
	 kb/n4YmYhd9CiREfeoJsmrpQYt0JZrz1NcJUsKbwUuyIXYYiMuDQ6JZL7j1fcDDblM
	 1OaBc5nj9hfqRmST5w56pZf9kjdSVzZtVdjxjaIFhwwOXqHtK8Bc3RPxATduFEz8ga
	 fUGs8Su3qldKyeyS+FrDpKkzh9oiaWeubAENtkpZ8G4UG0LmQTOe0LipnoEgOvKLBh
	 xcYS3Ru+YNVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B2CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091783368.4538.18262372485736376658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd3468f22290bf78c6bb3792275491a317749faa12660d38a552a629781d5dd
Date: Fri, 02 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790917833
