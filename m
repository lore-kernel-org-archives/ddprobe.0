Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DBB3815FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772871294; cv=none; b=ZEQUAvCG/8bfJFQtBqLiQjZUC7Hr54VLGAtTLe3B/eZp+mHRePH9nkTrnEylZfmPxATN20oXCeEsW6DalDP8MjUl9oAGl5YQhtKMdlVFAoVC/fu7q4W3l8oEcZi2ovmVg6+M5IkUhEObvtc1sWXA2ygJMk+BxRfumhN9qDFM9uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772871294; c=relaxed/simple;
	bh=K7K37yy0wxBIA8CN0dLeZBF+44ptOPjCzWY9iHUSegk=;
	h=To:Subject:From:Message-Id:Date; b=rjbys93xnMw9UpUBgamKuDXYgG/EQseq5ZxY9NLS2IpVfh59bGoAiQedssMpe9PC1Jy0mpL/y8j2gzl+w75fu6qedZncNFW67Omx6RxhBwdvBKijGc5c7lQdhazM4J5AAk41VqnguX/7Wo6ZUURfRy5PC68k9EV0MxRvhFeF6uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIgfoAfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIgfoAfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDE8C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772871293;
	bh=K7K37yy0wxBIA8CN0dLeZBF+44ptOPjCzWY9iHUSegk=;
	h=To:Subject:From:Date:From;
	b=GIgfoAfOh3E6HDIHQFhod+5nb2bQMxQ3bYI0IAAqeOgWRBSvGrRw3G3kBAU5mSuXZ
	 VvJTstFaMDcNUNDuVUHFio3s0beA3cbG3CBMuTDK9E3mVyS6eTYg6N2eWoYubp6MAS
	 kvNcg7PJujb96nThCxiwjO/Y12bzdpcq3dEy+TZuNAwbADLYDVl521VIEJ2Zwwho/Q
	 ofASSIyCx4WatefRfjzSZstnltx+cZxAP0Ae0RarHu6kz4zCFf1lLEYlimhTxALd6E
	 Yj48jiy6hqg8NjuriFlxdaygLopgl43TII49B/Au9glmW4EDcg5ouLtrzUcS0hIZdg
	 RCwCZ4FIdAnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D68FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287129365.23890.5313882867197053995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4614fc7f4d8679a9e5b41f726f9bd8937b1c39ff6419376676d0e65cd4b6e6b3
Date: Sat, 07 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772871293
