Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2DD1C69E
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712396297; cv=none; b=XRe9U27YmkC1hjYSjSvdS/zui01uKKyApdYf7PnVfDl1Pa7fAYj5JkZIUtVALTjtgAYQ45TU7FlDeL+fgVOd7Kj7uRCxWIpc9wK34/eT0etnO53IgxDs9ApIKu83pAE78coKsq19ApU/KU9nmDFriN1E57RlMtrJ5EHbzhFZ4FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712396297; c=relaxed/simple;
	bh=ndfj3ZddEj5UZ5lqCDds6oaFl+vjNsrQSV7sjja6z1M=;
	h=To:Subject:From:Message-Id:Date; b=SI+aZhv/jTB2EJUTpdWu9UgWykrpIUXcLXv7rgImtmDtHmaOZTQod6nB3HoOxiUAdgLhvxpUxevT5KMZ2r7VBKpR4w3doi5VU9wEhvCArV+JQFGuf+ZHlnLZ8ximk6rK8n/k8Ziii1MmD4gT+mURvl1XyQAvZbXS9BGXkPQuJi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9A37Z5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9A37Z5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75047C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712396296;
	bh=ndfj3ZddEj5UZ5lqCDds6oaFl+vjNsrQSV7sjja6z1M=;
	h=To:Subject:From:Date:From;
	b=m9A37Z5Iw1DpIrGttMYSFc17RObu2Oj7UV3O3XuLPc19NYnOUoorT7pmUHnKz/2w5
	 11ra+4Vy5HKAIvxLnyxIkVUDeunPrbC+bzrwhTb2kGRIlT/EQ4CMnjoSyIDFyfZ0sz
	 YicY9ZMg5G7gMJYEa/JdoCkEPNpjRFP3VgGsgpb1eqpl4iHR1eyB7eC8QdOjKBit86
	 VEXxAV6GRJS72mpaxL70o60BwFbScclVgD2yr19tWStYWAq4rM63wdviTo+qgm7bJU
	 zL4tbrYQ1PPSV2Zo+gvEVVB1W/+FZEE2poFJbynF7Sn6oyaVq5k1aFz6/FDmzBXQmC
	 2kAwAdzPI2gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A76C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239629636.22394.6141359646818294671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf8d77b05592df5f4673f9efedb321f379b13c0b33ab39be6d776e6bcdd8f83
Date: Sat, 06 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712396296
