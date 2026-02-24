Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121FB1A073F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771898094; cv=none; b=lcAWEbhRqgNu+dBdrRpjmZXbaEewUM7HHduRTN8pzKE7GekD+EHeCbUC+OcKyUXzM61LgArlMfcCQjCsKfdbc4ZgK4gnFGkSCmYWSRV2ySJPtyU8cgPShN1eqcYRbrZK6SZ+hcSJtp7HLgrhftjyPbTMvTJii6Hhhcca2vZxvvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771898094; c=relaxed/simple;
	bh=hw9g08W/U49bsh4c8IdxC4n5jMgkTWP4RNKKBxlBEK8=;
	h=To:Subject:From:Message-Id:Date; b=hMfYh6EqPOXkX+ae36PXFqBN1DyBuaDWuztkUw33CD1PrtCiMWNCmqvzJ02oDhOWom6jG6Xj4GFo2isiaOCpBrbCkApY+eYtNg0yQoTt9hH4kkX8ARKIRu/Krq6o941XV1RdZjfw4QUL7H/bPKe4c2cHwawqoXmbzKOeNwEUAgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUuDCzk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUuDCzk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD30DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771898093;
	bh=hw9g08W/U49bsh4c8IdxC4n5jMgkTWP4RNKKBxlBEK8=;
	h=To:Subject:From:Date:From;
	b=nUuDCzk8XC9nShcbFszekDu11H9iloHbnydWS05nxdCuqkm+qmMVMf91d6n8bjJDf
	 30kAifY9qjLu/sCexWg83G6cNmcR6uoejQr5AUN0t9kVn/ML6dKFRt0xfngJRXx3ms
	 aieCy876tCPkAjPfnUHawppu91/6aQmHjcg5eDrNS8/3qF9FAua7lkpeF/byuWQU/o
	 LzvUU3KU9ZMJeH0FBmSu43IFIWwoiyH7XBfihrjWalW4Nmfly7nhUs72sXhYtepURv
	 Ot9SDa4wl0iw5k6gwEoLGKdFZwEzvKzTY4hULvATXHx9gapmmS8OVDN3fOerD/MNPK
	 JPYS66k4DKtqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95605EC112B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189809359.20857.12967423512063557190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bbed790ab67267b735a4d45d780c01a8f36c980dcf8c7ed3196433e60844ce
Date: Tue, 24 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771898093
