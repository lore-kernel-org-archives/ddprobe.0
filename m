Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544D23438A6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790715634; cv=none; b=qTsNfsmxSyXlCsRnrToWQKVyitTWSUdYYjLkuibt8fO5J+oukidncgF+uWGnqVm6yyJiZHtrr1P/685lTtIxk91aHIgWvqaba15HXgvS/WiD+E0SQe0aLFsngXL6mNVBBcLBJUf1ZAR1Al8LYuiijucLr42RaK8jO7AquWilMEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790715634; c=relaxed/simple;
	bh=65hZauBLQHnJ6uPkNg7TtNBs/l1WPkt+Pm3HbZ38/o4=;
	h=To:Subject:From:Message-Id:Date; b=tH9ARzmas/b58ZNtIVoWker5uZYsA8NosrhgFQobrum2zVEeT4y35A3KHJZxbrmTL1pUxF2Mof1XEEC7H+TgDEClLpVVW39enYOxXDkt7zFJ39H2Xvzkh3yqfRafsIQbZsWSe8gn4iDT35KRwFJVO4llzIgDOyEQhnJIhCXXuOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReaWsmQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReaWsmQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1AFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790715633;
	bh=65hZauBLQHnJ6uPkNg7TtNBs/l1WPkt+Pm3HbZ38/o4=;
	h=To:Subject:From:Date:From;
	b=ReaWsmQTvKRmKlOPd9GFb0UGSVwDZRZXlRXFhWu9J9f9V/pq2oihqopGvowdxa8Ef
	 Tixkxo6//LP9V31Zzs9R8aojoNOfWDr49XPDZ4Se2iisFhg1b8iQyiE3LmtgSO4e89
	 wQQnRMDaoP8SaAVl4F/sGFIlwjL+MGMdg6Zi14NhbV0KxjU8VlsFrKJc4l5dq/4y78
	 qT/0k5Dlca4SdOsnU3oHEBBNaa+pIRqqMkoasfAMqC2pGQyi+YN3pMiNtiWNcqOuzb
	 DH+xeeWfv5R7MZPCSuPmofLfkEWtye1DerAPb/xokmW+xIQo3drsjKbkU4LzL+GcLU
	 s9bQcLAHZ4eNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF8BCA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071563369.10086.6047508500267103695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9b14d14ba7402c726fac34f14ac155f5f5e403a3ea1a316b510496cc75cad8
Date: Tue, 29 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790715633
