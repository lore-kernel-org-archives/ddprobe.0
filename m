Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287C72F5E
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762132794; cv=none; b=QGWGAU2MqSDhi8S7PBA35zMSJ19vt76sAiEfE59XyhZBTqgshpHhdtErwuJv9921Ng6g7FGWSm0K2quvypyjxU3dZgFYFYozV7KF4D3sbKn6GU/vhcb6QZ1Jf8j72u0Q7c97Jw5sK5xK7D905ZzWUo/dN45pSLytOzSu8oRXt4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762132794; c=relaxed/simple;
	bh=uRarnQBfAJDN1sfYpsjxSLeKbuJ7F2UDDyBVg6NynVs=;
	h=To:Subject:From:Message-Id:Date; b=j5n94UNOVrMCJJ2X0zSKyHo4TuagYUtltK/Mez0XNisSWeAs57NGzRrDJmvkJMc01w+j6ld8DDS366udUnv5+4Qmk0pDyg6v/nm/s32V/McbfgWtZmgiwECaHqEXLtRVdFlki33kvNSZRxvPzm5CBXLOQgJaIErVMuL5h9gYFwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEykfQlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEykfQlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC92DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762132793;
	bh=uRarnQBfAJDN1sfYpsjxSLeKbuJ7F2UDDyBVg6NynVs=;
	h=To:Subject:From:Date:From;
	b=HEykfQlZKVdgrCYZfKvf8PGcA6MbVUrGktHL5rQUHyq4QFEhW7Hjp1Ag5u6que2OA
	 0wx/BYMmkrU96qyLvvPFdjwf+U3lvYDCJnv7vnw4sIG7qsNbv4kUN7lja/7YDdad9b
	 O1wjjlcipP7skI5+pqf6DL0ycJFkx/clPyIcjFY+DL69b4h8AVTyxleuECmULLCeaT
	 jmVt15RfdcZxnRdmei+XWIM1qP9yA0Au9+Go1hIXl2S+IkaDN2pFLbwmBEn/XOdRbq
	 tz8mQ30ZfR1eNDxE0SCb3ZsUXlgPZ2+cXBTLgVzLNI732+Rek67jcFCuUP017iJ2qd
	 5Ui1CKnMjRD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DECCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213279359.11537.16083248247904859665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0beafce236a144012cf0a65191feaeadfe8fb9f7e33a3715f35d6055e588681e
Date: Mon, 03 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762132793
