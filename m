Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E281DF987
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740840534; cv=none; b=dOWM9362hKSQfcmsD9ffnL+WQdbGwd8Beq/hgT6t80JZpjLWCrtMeELkqRBC5xUQoi8fvqB95MVbb7gJOE5hFYKK+nnpQbE/plYXeZPLax3Ds3rHKfclWR0eWajoPBROMnFZeoEuhEUbcMuj8k3gQ5DmoillkWLDsjcaWEuJ4ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740840534; c=relaxed/simple;
	bh=fUy4pTLFDdsZdvuJQ7mgODG13pcc+29uhZ/A9pRJcGY=;
	h=To:Subject:From:Message-Id:Date; b=KJUKnjzwa/NpIysL/5usro9eN1wnSuGSV3ue+f426dyaPMrpPM9SZVzwa1Ez3F/9SLTBk1mUKo4hwG5+j/rbQ0gacP6Ze4i0JBkrjcbRm8OYNyaZT6b8mcUkPVWfU1DSbN9wW0WHHO9ewPgUNx+b5c9xVxWFxv4spul20vyVr4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6eyB+gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6eyB+gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF08C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740840533;
	bh=fUy4pTLFDdsZdvuJQ7mgODG13pcc+29uhZ/A9pRJcGY=;
	h=To:Subject:From:Date:From;
	b=K6eyB+gKddRhJ/3LUUzf+GifHE3QsOnjRdLDrxorx/nRsTGHNpTDOtZt+F65uah/N
	 1XqeJlj5LoVaPvFC2DdbAp3a46aTTmortG8V4SatlQkSfVZijHLSde8Zt0x2Mx3bon
	 t9RJU79mH/IC/32v3fTnRCIDogpQOsNUL6xyFrEkdN4t85c0QUPk5l4Dk3nK0Z7wkS
	 +evS/99FJvjqcG8nf9coitWIrRQb1RUjR/JltCCVH3m0TbLgrT8u+lHQcSHO9m4lj1
	 p4/8ulgqhLIoQvq0I5fIAW7aDEbe4J6Y4RFl7Tiem/z87jYEPkPBTTxvbSmdXZJmqG
	 UhHmKVgMc9K+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94261C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084053358.5075.6197853405406100583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ba4650093b6ec16bd78c1940ec1b0ea75f4b4c7aeede4cdaf18161b4bbba03
Date: Sat, 01 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740840533
