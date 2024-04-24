Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D56156993
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714002083; cv=none; b=beuDo2zS14Pjz3gABMYqYtpfS3O2fOz71K0MtG5Vj9kvopEFC3VbL0lsN0DymD6F2/7uZPURKHfg7xyP/328Kpzwy/eWvegPLSxQ61ySQsyqNCGWD7IIkIm7APtAfRm5dbJ1TQtiUVce7l73oY7geZCSRDbAuoQv9tW83pXE5Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714002083; c=relaxed/simple;
	bh=OZ9oPSsRh84t9zH7xPzZKYmOe43lgiIA8quBVDyQUVU=;
	h=To:Subject:From:Message-Id:Date; b=IfXA7o9lpXF+q+jcRvhSeWdJ7JNe6ymkcCLx/YuAMtQMI1h1AJmLb6ews+cI26PLePCqWgiE0AlM4ytqxRqof5AsIPzUfU4XL0+X26f1VMqq39l1vQcD2WDCEE1+1WceROspVCRUVAL7AosHk/tMOpZEeyGB6OWoszaRS+UrrEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er560j13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er560j13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9B9C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714002082;
	bh=OZ9oPSsRh84t9zH7xPzZKYmOe43lgiIA8quBVDyQUVU=;
	h=To:Subject:From:Date:From;
	b=Er560j13hbW80CDkOmqr5YrpimXoaH0th8NQwqEmuNlQG4xOYRnPLXnAWxyboyp97
	 6ii4Vchjvo6HDo7rpcZDeo3pHGgevo7azg9fI0h+BbhO5htytTDF4xFuoLzOLI43++
	 NgWJF1pO7mcBYFFif0UIRKv1y6NOTYxc1D1EC+KideyPwhDxZ17UG6KiPunYZjrLbd
	 ZShDPCqgGnOhvwKMyfxruYnQf+xm5ed1aCdb5ye606XY8wulhB9pJi/7wrigEoLJjq
	 K9Pyav9tNzK34CI55HClQc5cUOYz1IX9pz1ivrA2p4O8jRw1f9ywEP1s4+n6dlQs4o
	 HX+3o+fPatWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4900C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 23:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400208279.3141.17015299921674474832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285bdf3de3f618bbde7290aa96eaa7d9cfcd494cf1a2fefbc7b67fac4fad444c
Date: Wed, 24 Apr 2024 23:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714002082
