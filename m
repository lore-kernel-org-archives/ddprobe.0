Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423601F0982
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741541334; cv=none; b=BRwCmYXRgs5hw8mV89sbpLh+88QuF/IscQA2EAMKZgTSSB/clP6g/U6sFGHvn+yUo+RRW2jKMAwLiVQvQipUZfew4pHh4nEBNIsXi6TKHkRMYJ2hrtqyz2IlJ48xD4vdoZQfnmrVBZG7u3OfPQUTAkKuraF1XpecMN3Q3cVFr/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741541334; c=relaxed/simple;
	bh=ORxj96TYiKd18fyn0cl8rT7aVcITza7lyzP/HOe4AmE=;
	h=To:Subject:From:Message-Id:Date; b=gWwX1/p7MGaP3tncqIuXnWgQiuxdfnBc9fAE3SM6ROe+vZLVr0gjQyKJk3QTuMcOZv1HFyO8LTTA+AYetUEyTF8j6UGrLXqeJihy8LEaoFT0/fjPtwiApxiEJd2Pp9f2vrmnI0FAJQ9YvqCSVUC72ZvtH43ZaoJUyuq6lU7mf58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VErRqro+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VErRqro+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA618C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741541333;
	bh=ORxj96TYiKd18fyn0cl8rT7aVcITza7lyzP/HOe4AmE=;
	h=To:Subject:From:Date:From;
	b=VErRqro+vrPDlmi0yba9LzNAa4p74J8z+HC64Z14Ow/KYcv1e3LDOU60uWyxZIJ5P
	 MXcrIyCZADdg1JH9D/ns3ucIvng0A/ZPXRo3UsPTe5hDfRc9/Aou7TSbAlk5jcxS1a
	 uzPqWnhd4QMTHXN7clNhgFrI3SRraW/I2d/7FOFlA+mVhWwXew70bvmV3TpATQuvg8
	 a9wi99Bceq9Zu0TQmc63iSiM+0QjozN1OeS6b/i1sP4DvKFeFn/6o5t5f5VxJl3zQw
	 rcnDfOp1fCnZ1LWP6kJzYHDp9vyGfrGg7k/rNu8HF+2uRbMe7Jum/oOFaFCXYYjWKn
	 al2/BODrrT45w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13A1C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154133362.14927.15145770379585067276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96918a8a80e4ecb8d854ecb7542994f979685710778eb20a7c6599ff5184ae96
Date: Sun, 09 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741541333
