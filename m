Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203F231E850
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779924754; cv=none; b=ByJzyE1iBWyz7nPho1oQWkgDjcF+Lt0oSCHzRzbCcGPw2/IoghBcbW3W/7vxGav+LiLZ6ItCeV+CSMTK9Je2bx+b0hOlof+mUBt4QmtkA37Vs3U2rIPi3DvtMSTu14afepXyEtMoh2OYx7Mvum1eLSWvYmDJRvSTs10K8BvWtaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779924754; c=relaxed/simple;
	bh=PYJ0uWOZMJRy3R6YRL4XOPtIxkYg+LbL8wFKVytP5rw=;
	h=To:Subject:From:Message-Id:Date; b=RwZo2y65HFAWekPtFjJ+87wSNtPtPZWUUkE1AKv4I3Qe/6GgMwLCgai4vIH2MDMDnLQ/YeMxFWD5Q7I0pBz4HaopL5aRat6kQl3ouobhokvu1rZulzTm5iEjBZfZ7fP8Hy164yY4OyzbBZKJAzCfhTBFUNaQGEK8bZK9qf2Cs5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YN/9JEsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YN/9JEsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C052DC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779924753;
	bh=PYJ0uWOZMJRy3R6YRL4XOPtIxkYg+LbL8wFKVytP5rw=;
	h=To:Subject:From:Date:From;
	b=YN/9JEsPo+JzQp0YuODlDvgMQsCiEZit2Q7PwiSXUsYTIN/yx4vqEEn4ioBEs6PE+
	 Go/D0apVxAC282fvPPS1NNofb3CgQ+4nSCmxLqSaMnydSnBvOGMGBWN7wkM3rWUg+o
	 gQy+58GUOCTyXlCT8nVscpZpL/aNxP7Pb1s3FtjvmT7wuPmb5Ku4pTjV+poNICMQq/
	 ELr2gei3iRJrFk39pnkSDeP+auc94ye3JPrQY9LZN6kJsGtBdb63hZuo2MPTT5IOim
	 DnFebX9GrSSZIOJyFq2PhZt0Hgzt2XaHAsIUUn1CMnw3wWjbemIG9IQmzPPHMXfc+1
	 iWs+u5tP7dRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D6CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992475368.20788.16411589281726830744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afa4a1c34a410c5cf03ea5bfbe4a6e8aba56df0a419c1c53777d80a2daa7936
Date: Wed, 27 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779924753
