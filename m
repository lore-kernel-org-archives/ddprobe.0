Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC997261C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771197294; cv=none; b=DnJT3f7lZcmwoi5twhMifT+oH3gY1wuuU8Aw7+gj4r0Zdt+ngvcvowxOFSzBUynYvCqZ1Nie5+JVE0jWUVzWC/pE+DoXgMwcQ/mqZdrExSWFGisWbQY+yFb5tFH1/ZIX5aZL5lSYzFIEwtzQd7jqguXtDkmBuRwe1xcazwA364c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771197294; c=relaxed/simple;
	bh=bJ9rVWDTnzSwQpciri5wuP+Tu2isTwkW17upHuHKcWY=;
	h=To:Subject:From:Message-Id:Date; b=SKbv7xJ6aNC586mSRx3iwTEd8gxOwjzMLrRokTlWCgvTwhKeAmHB+PKK8yEUt+wiaCChMMJ8GRsNw1N8tnfoqHWXhv9YvoEIq61V1PGW2rzQwbqoS51azzxwukIrcV8+/wE9+IiWAQ/tK8O1F6bhPIqCENc08LwYc3o1iGLhLp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNb1v32A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNb1v32A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB76C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771197293;
	bh=bJ9rVWDTnzSwQpciri5wuP+Tu2isTwkW17upHuHKcWY=;
	h=To:Subject:From:Date:From;
	b=mNb1v32AHqcvmQdUWaEy/965vTh5y7feNsKSOtx+sDF81xUlxCUZOuCIB/Wq3eLLV
	 Hrgr3fVfU1W/mYyVlNIwpWNb+H06O2dPUtlRUJPasqZoFnSmneV/bKIWuTJEMQ1s0F
	 eg18Sm7lBZg5onlT4s00i0wzIGbmyFNYp2FvllZN19YvQ2Z/CeZAooDfUZWtOghiKE
	 HJ8uBQYdViBQYGJEXiSSvINhajGe8ZhNSnpFiBjpTJ0klK0O9gGo1G5CnoA1NjRtmK
	 lHad+rzb+tEjBt5Kw4sqhwhrqqt89lSIMwbCWsOwA7O9K8uUrhjV0mALZhVtb3Ik2i
	 TUyN6QTBVMWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C33E63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119729361.22075.11874648244165114499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad171d6f01d1e61838cb75e49028735829a13f7c9dcd2ba281b4a3e7b24c43de
Date: Sun, 15 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771197293
