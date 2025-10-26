Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411FB1D54FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761440994; cv=none; b=AgwDY8AI9uiHu+bzxupsW63FgoisnodwGwxo59NkWS3M0wK5DaDd0bwHY2L1DZhxE4HJx1lxrEIdRiSci4SHFglDnOf7F/4WaH77H+KKUro8ZgfO2TvEgpDyZ4D3Ti7bbEn4OAfbo1SW5OP8dz/CdwtOVmq9FQtA7GKHT6+a/VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761440994; c=relaxed/simple;
	bh=w6FGaY8pe5RkumgFlL+uyrne/Z4DLufmZa1qMGaxCmo=;
	h=To:Subject:From:Message-Id:Date; b=XZbM5DPPbJzAtlRt0wrP5pNIJu31XRLAyJ3uYvf2j6BAsj1YCPj5HGSM1C/n43exX8furzGcltdKF0YT8uXOMuuqd51D+NAobPeXC4MzyhxSVk5lKXz10O6J4DWtVINak6T6LZrmJSkoa3gthTM3yPdiyQqmWLcsewwCmUIZJz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKDi0H5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKDi0H5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A505CC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761440993;
	bh=w6FGaY8pe5RkumgFlL+uyrne/Z4DLufmZa1qMGaxCmo=;
	h=To:Subject:From:Date:From;
	b=CKDi0H5FxWzZ8aut62bGUjnSdACS9rrwq8G9ufGKGVkaUlRj3sUnI6KAr8qVqJK8U
	 gkJRf0b7qPn//NPmpBg2kgYcyZH9Mi6RGQs6TdwVaVQ5ZByqfM33fGCsaAylE8LFY2
	 kilE5BiXrgxAbgSioCbQnQGPFb2q62Iuxe4OvubBKyAPjk8A+apcdB3FbezSG4GnoM
	 GCY10/uBCgKWTZELOyr0c2g8UyfJDGMs7uwB2tyChWk0x7hjAEeYKMvoBkaUmU384a
	 Gl0nn9iz7AEiOBygoWnKM6cVhvAwzyEw5zWAivyE/TxVJ9zniCzgQgjx+arJo9am0+
	 S8DRC6JCpkCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272BCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144099357.9111.18000341406697820207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efc3df63391a28093b057771659b3614b83438a858e58a4aea041fbb1ffe863
Date: Sun, 26 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761440993
