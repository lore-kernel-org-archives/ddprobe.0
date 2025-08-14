Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD23217734
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755148194; cv=none; b=q4qrJCvilIg55Sc4vR1Xv0oM/aigu7pEVvFjpaoS5VLobU4No3ycJv1gq7SWoFD12F6WWj0El3QDJW8gOCcY7rLc1Kc+IaZCWPrh04j1GD5nk/AB2r33RSqH0DYUFuxWKp9oUmPN8swGonayD3yxFyoRxKWLEJY85mv26bMEePs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755148194; c=relaxed/simple;
	bh=d+PN7W3GUqqIFC5Vfs5la/CRoVXqHPuLwq0ep+Qil30=;
	h=To:Subject:From:Message-Id:Date; b=GPDVcx45qWiP9xNMiZLRYu6/Oc+lbyNmRqxhMuwBCxtHcyoYxwFJ14YkNAsKKeQOZBlJi8hfprahqWA1GgST8xk7ZVyUsPTc4wiixn5Rel4j5911EygoshHGaSGcOByZiaPIIeFp57Ow/LWrSKhMEQe1bPgpKhPLXLq63MVt7cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9AYganm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9AYganm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E72C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755148193;
	bh=d+PN7W3GUqqIFC5Vfs5la/CRoVXqHPuLwq0ep+Qil30=;
	h=To:Subject:From:Date:From;
	b=H9AYganmDadE4r+ZbHak6L9jL/gE3WLVwd+PbQdGaa7QzxorZnmvuOeyzJa3bYAgz
	 1eptyf9REOCFckZ6zptE+Ao/Q2hnJZohR56wt4rdl/JMjMlkEfUXAxqRWTj04/yxk5
	 SVTUHVFSXHnF1GQJLNUCToN93Ia+SYFJ4dHtyWC758CQ5FJuUBMNSvHgGzuG7OULmC
	 SfPg66kZaxPue3NpeLJQK4i5l335kBGnWc11UmMvsukvUGWQrazdppNk/fEBN14xQU
	 GnyGEhqDwLQ0p1oKMM1kgcyL/A2/NXcJZ3aoBl6QOTGZPvfJpZkRuP1X9m6DTE35hw
	 WRdK/P4CekZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F163CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514819357.31104.2741920155578080213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a41b1b1802ebf569e02acd31d0e99f470dea06136f79729eb121ddec840e88
Date: Thu, 14 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755148193
