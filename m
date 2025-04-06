Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594EA224F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743980994; cv=none; b=iqKGBK+29wcFSxDz5n24yFJOcYjPsdsWnDyhNDXJNbUQJSZ1H0P9LSYTO5kecl6FdbKDjFI3qgYnCFXeHjvgmHd0/7A6xks1ymbtA0wjYfGrcwRzkssffdOO6CSf4erbuOBs3gPAZHdhORHSIi1nju8S5oA3vHub1Ns+3gWJRgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743980994; c=relaxed/simple;
	bh=qBN+Cbl9kKz2Thv24wnp6BSAaNW5DVd5qwimHSLswVo=;
	h=To:Subject:From:Message-Id:Date; b=QL4iKWG1gXgWb0SW0WFlUiVNOJeaWfeOkt1cMoUDu6I6KxB1jIgEi8uROIlnppJlA0p9WKUWqfPNcvqb8WYnrvmyZpLANZwOFxoTPzWwE6E4fFh5jP+X1Y5L26+UFxXwPxpULGCXD6vrEzgyhETR4J/JKr770puqGpptCkjSbl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+eD6Og3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+eD6Og3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB62DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743980993;
	bh=qBN+Cbl9kKz2Thv24wnp6BSAaNW5DVd5qwimHSLswVo=;
	h=To:Subject:From:Date:From;
	b=I+eD6Og3nqgPAtIk5/nAaWnK9ZAXlZnmmc+aNWkXh046wkfXeldsbz885rKlo3wij
	 NtE7WBPdkYW68iYk24nVJg06BMt/Gw4mAm+6G+E+GLYsBMxVzk1JP9A3+GqJKStstp
	 Jp3SuubByivMOe7skAJKRD/50lijQoPVXqBoKoDDyg2cnPJZpXh/1jgKeyBjnM5xQb
	 tI+On97c7W2I2uy3yGz+MBulEAQjsPPwCbo/dNLtX4Fqmhi4qo2Edlak5qblN2P41n
	 zbUvLFQqwrNLWAiszOeRAWeC99QBXLzLGmVOOwzQ4T3ro/8nerzAcsSgf8nE3DujGU
	 Gfv36xf7nF90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C23C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398099364.13978.1830753194838639819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d056e0e431b0ca57899f43d250fbd8ad323daff1bf65ee915fc3596433515f
Date: Sun, 06 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743980993
