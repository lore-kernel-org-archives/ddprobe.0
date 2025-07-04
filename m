Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF120C00B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751625594; cv=none; b=AcEmdmZ9iGyZuqq5AZg8+YcJbxq6F+joe65QXI0t2WJPgjhmlUFmkxM7f4w/X7TBa15hj/FDyiOXywhwMjvPhGHE2lClkhO0wTBNDVLYCJoYfu1+IrnjJuByOkzUki/K/ITtQw9vjuRKm1kfHCE+7AjhaKpY6wobyNDV5RAQeZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751625594; c=relaxed/simple;
	bh=j9IIIpHJHebqB8co/z8NjMTH4BZoyqSwRDNOB9V05OU=;
	h=To:Subject:From:Message-Id:Date; b=M7cncBCiFCZ9gDQDhz9DqQA9+2j/IR0sP/jYpl0kescGKjHPmAy2KKiYXPEE5QIstw4FIDNwmqayKkvd0bU7rs4Bq1TtdfCcO0WrFS6iga1pEp4vHSZS9goutkorCcZ9DptIqeKgpDwaDyGjCzZU8b83z4gkE8E0X6gqKZMAPoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ/8vnsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ/8vnsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0311C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751625593;
	bh=j9IIIpHJHebqB8co/z8NjMTH4BZoyqSwRDNOB9V05OU=;
	h=To:Subject:From:Date:From;
	b=CJ/8vnsibs1MYKeZOCES6eb5LdyoXYwMel35Ioc3n7wFK3IXZf+jJVDJLhpiHT5Kt
	 7ZJE7+HyodHe51ePbhmaTr+pd23JPQBSea7E9MFV7miPn27u/qjXNFx/UnrH/Hu4IS
	 k73zwyKP16r5+V1IAG0OcfFvEp/5ZS4GBoigQH9X165LIg9HOdpm0/2dBivXgW2D7b
	 wXa3GqC+tUkwaIXuZpivSkR7FEVNgLC/uWNSGmFdQ1pT5XpokeBHtm1A6sElbrosnE
	 AAQiH7g5E6+c7cRLaM1Vl0s2WpGxexE7wBXGfA9BdZJKQR49pfHH7WZWpCm6t0XGP0
	 ezBBApBTik0uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89EC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162559357.16760.5876600519594453645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4af605e1487f17c5779163645fd70cbdd00f013065c2a1e0109270a987d67bf
Date: Fri, 04 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751625593
