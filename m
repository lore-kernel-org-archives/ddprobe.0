Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6750638A739
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791564034; cv=none; b=XoaJe9SiU+fHcULVUHDbltm6Xsw0+pO9hAqhjHaMfgOAIPoEIaCOA7l4orCxy3FJ6tLiif0WIYrVaK6QcLRz/8KsC64EzCvr3KXcd1zQ4lCAqhlN/gCp1TfTEi8Br8yoxEpHWDFAXsoEipTIgfPk2CaTEvgDKt28lghi80jonEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791564034; c=relaxed/simple;
	bh=9XkzqdIU8S5QLTrQ5dypLZJY4/3IZ/VXmQiFABt7tO8=;
	h=To:Subject:From:Message-Id:Date; b=OGZO6CALApQrz/tx4upl7txou0Jf7PODwqa5KOdID3syTegrGpLgp/3auAyoZz/oukqVVTeV0lILTdGJmZxmDPpkk5+tdKvIOQZK17KRZaXNA4o+zowId1RmwG3I23Njw7Pgu3278hODle5eEG6/pI3Iicx+fqKSFB8RJIcNvsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9+6DcrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9+6DcrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFADAC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791564033;
	bh=9XkzqdIU8S5QLTrQ5dypLZJY4/3IZ/VXmQiFABt7tO8=;
	h=To:Subject:From:Date:From;
	b=e9+6DcrLy8yQM5Xkb5jzKLyDhv5gUxn5sa3YKIU9b2yKWWlRiVz1fAN2PElp7tIIe
	 jGU8UMqgZzpuZ7rRUKBsckTJH1vGMRD5g1Sl/dy4dTPVx9gIvRLHKO7HYECVTnoTwP
	 5mpCGTTU9lBLLNEbRDglwFv2vCaLHP0pW1bAUxsSQulUoqTTQVlxacuewjfn+ZZasz
	 eP5QzvQCuM8mRQADRw/GNUa7Y31kfwhhDPpSDIrlRJHYP2m6vmcqsF1w0Ha4F7PG7p
	 gUvAEnHUeF7e+QLMsfnSmhj/EZ4UW22iLFkX1U3ai4712FC7rbo4NNVzNdEvCU4FJV
	 2Vxl5q71k7MSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C1CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156403369.32360.3853537942705223043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3bec07de76e5edeb9c8e7d393eb169e33fdab79d3b85505f506218248f4b12f
Date: Fri, 09 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791564033
