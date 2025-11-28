Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14277C2EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764316374; cv=none; b=HemPsZoQZ4x97tvPyCLG58hK4iyjx2Rmnx2VN/aCRlwHdCnT4qs+G/ujyMvQnb6nYepwdZASqpISYkq+sJVzRRA+7O7SJKpyZu96GNfSRrlsiVoU9hK5dk91QsBbLp4pqGlkew1RUuI/oB5e1ugIETD2CCOoEw9Ivrlc5HrIVrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764316374; c=relaxed/simple;
	bh=9onMMK4a5M4GuUg4+GYQz2Qr8deCtRFG1GwbQTTvQks=;
	h=To:Subject:From:Message-Id:Date; b=JrUoy7Xypboggh9B7ofE4Y97F6A9tkoT1GP8OUPJlmM1j3XQ3fmGROu3zDhSWvYhG8UJGP2WXrMMTAA1n8Rq2bF3/Eq2M8EfGzCT7rcKJEQK3a1VN+BDa/03pHhOYqdLdsXigl/gj1mcmVfeORnSTkzHpy1HOp8BvjWadZTWeBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtZPTeXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtZPTeXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C38C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764316373;
	bh=9onMMK4a5M4GuUg4+GYQz2Qr8deCtRFG1GwbQTTvQks=;
	h=To:Subject:From:Date:From;
	b=FtZPTeXg/8SOQeqp5Mal+9mhhFJKYSZAYGzRXWetAoaYzbAIKHgk3xTY+XA7cS6dt
	 N9ajxO4hyGHJzFGdC/4gkIGwUdbGs0qA7yB7FwxQCV1NwUpws9sCVGSuel5GXzznZu
	 vDhZHPuSWFzCs/Lh99ZVPxtNmGicohDw72lrPTpqnaHxRf9cQwx4z7Jw/0KPG5y6Y9
	 rqvC/usOjRbnsVXlEc0LI9iWxylYep/aOTvi2Ns3tz2YEtFglEad+I5ftSkj1bKPJR
	 fN46tXaVW0NlKZxVJpGXUGHxoH7Rw2bMPREoT6dgJ9nH/B+FIqU1/uK4ZAwJsQoOX2
	 lTopB1biVUnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D89CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431637358.19675.11564239898755675233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff660525288f41c3ae9e16e3122a4d70f8e7ff32452d8c5eb04ca66b5cecdc10
Date: Fri, 28 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764316373
