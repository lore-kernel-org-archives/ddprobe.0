Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0588274B48
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770645834; cv=none; b=f6fSoDYKaeYhmv7nE+NhoA64XPY43pGMWuW2AMcTSx0XdHrnSuokfhVl+d/jfrNCH8ftaTGZGJVAAnrT91U+W7pxTfEesX5OKyjPTY1/jqJydL1E/Npt8+20Wooy8p66+u/DPgK164rT0zwuSzgAme7GE29J8f+fG8squ2Q425A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770645834; c=relaxed/simple;
	bh=gpG2h+KbV4yB5xgw3aVFL0pP1Ep1BprC2fnNwvk9Z/M=;
	h=To:Subject:From:Message-Id:Date; b=ajcyTWL31K4BEn0fwsqYkEK7In6QneZJ1+HLmHXH4jMLNz9NuqVGaUqIyOEjzxgvVVvbfEP3wihLcTyyBxb9L+l9HouXBXvhCiq6EJKEQihE9IxcNBRQjnFrlFwew2/zCTX62imKeCnXIPt4vdKpjGMyqtu10HfeQzk0akm7nFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCupo2SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCupo2SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CACC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770645833;
	bh=gpG2h+KbV4yB5xgw3aVFL0pP1Ep1BprC2fnNwvk9Z/M=;
	h=To:Subject:From:Date:From;
	b=nCupo2SLz7g/4R2OCJ5YqqmBwYTypEe1XV5rq36RdfHD6dNxB0CCRWOlqn6/8ZHAG
	 z93HjoQuHnmUiBxFyNrvLGOew1dgpX9wiAh514+HYLvBW+Y0+aoXhYkja3Z/MaSqFN
	 D6ChirBNzKWgfMNn4TF/h1y8NY22tnFDG6QWlMtm2D5iCya3sYuG4lJjh5KLDCL107
	 1afXsGEC2UGukLVE9DaHTHt1C5qx9XoowMPi9QBlHWb34aylBZr6fZsUDzln4W6sP9
	 5JQB26mGHsm0kyZNu5HWflJmK5C4lehOD+PeeUPzJR56kbtFjmQ3Cce/DkkLTPDOV5
	 eEwh3pY5qUOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B239EE81BCA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064583371.1746.227189303109244606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e49de5e00b584007a3777c68edde2bf7d3dc4f498f3f884d9085d19760abc19
Date: Mon, 09 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770645833
