Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF022DBF48
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760441394; cv=none; b=u7TJaAOGdc8Dr7tF5GeJj+gIXBJNb/4r7kVfVyg1xX1SbiRx9C4ffDk5tMSusxUipXapzEmZHGWFMZA0ni1+zIYO/qRO9AJgiVXrydDy5/Wi3DgVqdw0mdF/N1CP2Eytp9j3tbAPo+UstyPWOaHBTB2yS5T2EGblxE4T3kw2sBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760441394; c=relaxed/simple;
	bh=EhzgmURam85Zw02rZ8cRlhvCnZdADLTojN8JdXRrj0U=;
	h=To:Subject:From:Message-Id:Date; b=qocIJc6hdKaZJ5odRR6/YJdqswuGBMGmthrRPYy5erlX/udnjb0oow5x6i5gbxIdkQbfXociJJU9vFTn3qiyf6Psao+yupOJ82vsE/cHmk8lpG8mEk/4gT6Jm/YDWkm60cgOEzOVelHm9FfjlwLJ27eE4eAh57E8C9tS79qKwz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCYyIaiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCYyIaiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2119C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760441393;
	bh=EhzgmURam85Zw02rZ8cRlhvCnZdADLTojN8JdXRrj0U=;
	h=To:Subject:From:Date:From;
	b=hCYyIaiqf1nWbg+crrx7Rh4S0skz/zHBUz3CY2rOA4VIPzB4JeKK/a2Dukh6JG3Z+
	 TDovL9zdNdo8uE8JmyW17xDAV9qTcqsVKF7Zujznbon20q5UcaS3CdKIGHXZXYP1a0
	 nsrEu21l1fleSszAXuNL9ezj6GOwP1c2ik5fHYRcROxpMGUttXIGcc0awyzVqb/lU8
	 k9Voa5DNJxtwcXyy3WhFm98e5NbgoGC+K5mUw04x4rfxzvY5Il9cRyBD61CYP+ISP1
	 yGU3JKdzfc2i8s4Ka79b/RZbPJDT9eOL2Rwu/RSucTL/cO39vuH73JNgXNwzdMIIYx
	 DDmT3meBFFrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CFCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044139358.19849.6140277040877682323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf18a1048df27bb196086444b2e7f5bbd50dfc6f82071f61dac722e15d46b881
Date: Tue, 14 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760441393
