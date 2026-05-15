Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031C0413D68
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778875234; cv=none; b=enpa9/264nOAWsYU734ixwErgwKI9tcQIGSWzrTW7+o6kU6uvB9DMWL1X7gmAkrffzAQPwGVC/tJrRppTx2BhlptRLBqMFeoIGHW6H5aU2cE12hY7272Oa3eSKOVpE2orL3uCeVzj2BqakdtapyDa6qukajNDTxdUSchK3jFKPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778875234; c=relaxed/simple;
	bh=116fDuvEg1TDTkU+8iMODzMLi2dFm3QSN4zPuRAyUPs=;
	h=To:Subject:From:Message-Id:Date; b=cz88gRXKRmHJJnhpftXMl/OVT6zAl76zQyIzqKSSCurfbqyPZZPufmJaRpS/H/XayCXQxcagp/vlJd63QxXTjarzzzlOhVM+LgElctA3cyP28F7/o8Q6QlTs50shr+PcIAQY17fkawYrPyyCjYF5spDBfxx4mL/z9s4+ZJiBV3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqBdiOGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqBdiOGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF38FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778875233;
	bh=116fDuvEg1TDTkU+8iMODzMLi2dFm3QSN4zPuRAyUPs=;
	h=To:Subject:From:Date:From;
	b=MqBdiOGWgPvh3chGCFBSdP4llS0UCPrtMALnCrXVMQn0UMFH5dCZ34dkJ+ZA1vShc
	 7+42l4ow36OJ75g2CMG8AII4khIWn1uOvURnaJD80MvkE5I6ZCr3XDYxKcuZsenA6A
	 JSD5JIaoqh4Z5X5IY1YjN5TY6GoQPyBcMbwyvDbfsiSggE2rxHW1I4tM5xPlK5Zpuj
	 LhpEz1/qeOuhYlytSRIZeZrftHZ/DdSPHJOXKp5Wq5Ii6Sa7+6ewBLa1sMU/wCJ67E
	 9tkcfhFDY8urA4U/oKHrLVbuT4c2vgiiTFNNFD6m4LDL8eUV4SJCRcjhc7dskl6Xwz
	 2Rjc8EeXbTThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DDCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887523370.15149.11049221991179589580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e490ec4172617c94eab11ebb3392db83c57690d3b3547075ca81b7d8d8066a7a
Date: Fri, 15 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778875233
