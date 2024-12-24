Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384F26ACB
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735060554; cv=none; b=hLfZylulQrV/hPF2/7AEr57XjSk1uI8P/uZwEvyvTO0jtnU/0hqut54P8uXql1tJR+BIyGd+AH5AXfKSfPs4CyLr+VKvpaW54SzHosT375XMBcUDY++qgC7D70fFTxzunr91IprdrzEs5O1MtIQpa5oJGFrVAd4m7P7l+q/a/qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735060554; c=relaxed/simple;
	bh=CanQqTA5h4UbJ/4ZSTae8PhtF+Igu/XhX/PnLjaIzkg=;
	h=To:Subject:From:Message-Id:Date; b=Md19JIwQ3XvS77trtuk1MR7TxExzmy/FkEfWX0FRJUAnRn9egSTYudevSd1Dnu3reqafvQmqYx6VfX219iU1D5ghwa9TEZuwsNdaf6wNzzAp3I9H3SCna6PzRrLQltiuYDEux8Qw7giIE4EQ2/sMRiVv0tIygJrqAYu8M8si/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9QBZ5tM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9QBZ5tM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD758C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735060553;
	bh=CanQqTA5h4UbJ/4ZSTae8PhtF+Igu/XhX/PnLjaIzkg=;
	h=To:Subject:From:Date:From;
	b=e9QBZ5tMC+H151DRLx5OxlKGIfWOaeoRdGkoLjP7SF0vk5iEQFAOV1QlRY7fVnoS1
	 94z3HDkypZxlM/9y+EPx1Uwt/2QL9Uc5QjjISHlNAsqXsqxJJG9GyJVzPPmERVbQFt
	 3akzYK8DKPqOJ/r/vQDLXxCoi+7iF9sjzgq/N8KoO3XxlLh6ned27LNwYvddae18ov
	 236EbJ+77vSziWlNu9FDIJjASYYEdHke8gcPVl0yDLGT+MnumO3kvNaH9qW34l1bPl
	 goxx/HngL5WSgCXblJKforLHiqIrng2BSUcQY/d9TaXI+e+vjEoSp5Ne70L9PfgP+M
	 ll8X+p872ZiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A74E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506055361.21708.8778622236102180328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c39683dd373d81aa0e4d177aea72f3dea56d0cf068a2791ada354be5445890
Date: Tue, 24 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735060553
