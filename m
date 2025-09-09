Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2844A19E7F7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757447394; cv=none; b=GLK+SXrpG1kJKrC5UumcbpYoTkprNILiFIAhSV/HqL8bJs3J6gR0UUE9WKedMei2vOzaYpJBgJdoCoXysz0G7Mw09tAo+d/YlYKn7+3AVRn2nWUodAmBToTAH0WG69r6zS1MG0oYDcbwq4Nip4iTjtitZOE3Gy0tXE9diuKzKBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757447394; c=relaxed/simple;
	bh=gTId33LUaLaDkBvMDvjgIbYGyG3xlQTx3uh3TzYvn7Q=;
	h=To:Subject:From:Message-Id:Date; b=OiYMTIMz+Eiv2qp1HNfZeUhVuQlXPAViZhdSNkomaNLHMW95z+AA6t7WCW7bpfbA92c9pPz3x43cOnTGBF1GB+Dkc/ZyC410rLovNzioAOpEPVnhuSsObK1yJfr/wVVrc7QgRledmexuZ4UPnvl849EduPRrZq3Mh3U5Ayi1yqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgnpiNmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgnpiNmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BDC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757447393;
	bh=gTId33LUaLaDkBvMDvjgIbYGyG3xlQTx3uh3TzYvn7Q=;
	h=To:Subject:From:Date:From;
	b=cgnpiNmGGkzJo48dpVrnFyXLSxWT/80gvQrQys4CVSOXPYAH4JDSMirqZhjNKrqQt
	 Zw44eNRWZCvsX4K0lCzHfejplBY7exc7P8s2Oa9DICxHo+Lf16znByu+jNzkvm6Ouk
	 NGU59PqtJABHY3ebKrXd3ocebT/AgKhfXEZzDagzMFfR59AsN/DPjNdTxJL+snDbZ6
	 WVLFfWQFNVuvOEQ62+vf6Y/ZyIrpE3QsFi2O6IfiMhUDtvF8uGwozSapXqeMl2uKLh
	 plF6NkLH++yBh2F14U6yEuKY67nykLNuWgSKUkSGVefEv8hvnmomwn7RSWVVJHqH3d
	 FGFVRkBh18vuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154DCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744739358.19379.9029749617448454372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c75503bb906751f4203966239af47053d8ff25e6b754afac06e951948b6531
Date: Tue, 09 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757447393
