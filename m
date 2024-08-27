Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396061946CC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724752554; cv=none; b=rni6cjK7tTr6qlb9SkuYwHdAA22VYvgkUczNQu4KDOtNBnQaVYZJIItv9vBr5dqyXObd6n1lSkGV+e2i9/9YXLSRhjDQwH+kGtmka1ZxBiWwE1NaNA74LQw4NxVZFWebamLu595Q5OIADm30C66YeUDXc4ohQAgIasNMrdhkv0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724752554; c=relaxed/simple;
	bh=0JEUpITI3fF28HAAOjVAHSwPmAXrKYBvHXoxAQzDLiI=;
	h=To:Subject:From:Message-Id:Date; b=AOoqHfNhqFuCk8yCJ3P+9mAJPLrznSDcYiMhAl8HXzqXcK39lknOIKymyHH1Uddci3uuQcb2laJmiW9mOsfidcNAo4DzO7M0LRAgDhUQj1NimaxhXfmc5BtHBkODw0qdurOsavib8L2YrlLuLpLTPRYDl80YPGUSCIQIQ55iXBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/VB8Ro8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/VB8Ro8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04E2C8B7A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724752553;
	bh=0JEUpITI3fF28HAAOjVAHSwPmAXrKYBvHXoxAQzDLiI=;
	h=To:Subject:From:Date:From;
	b=E/VB8Ro8y9yNavlw8MtHF/sR/rPcGKil/AWOeEMKSTk6gq2i/0TLYHm+p0e6Qq71E
	 gmjFTEjfmMuwDpE+0rlN4hfdcLkk3J5DARsRHE99BTNbdcTbWmjp60vGfAcRC+fZjW
	 wTAtmBeAF6mXGbdMR1UQkysHLquWz064x3m/VheFauOg7ybzbi7/gYPXen6r+St4r2
	 wtBJ4Im5O+FJpa5GvkMNxe1/E8R4yhbjuv3bF6gd3TDEp3TCJrEr+Nu9Em4BdeFBem
	 uypnw9KZKrmhddQbOwOjd2v48jO5Ixu+Ix/rYo/mom4fAa8MsUrhyObz3xDKTZxKqA
	 wUScO/N8mpR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA5C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475255364.30020.7985995688263442774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1cd60210a342ab104474e869ebe94cfb7731e7575dafc5bb087731f4630a29
Date: Tue, 27 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724752553
