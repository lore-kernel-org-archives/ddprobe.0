Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED921714C0
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744622994; cv=none; b=A0rzRgFIYRmqIm0DhUxZ4rWDBFa653JOegtMdAzm/rEBS9VPCrA8rM5+NVhLX63e/K5z9ixCbZk7tLuLpVfrysPZkAkB/mjV2IMHs4rE3i8JzGEpzHe5pOC2Nu2dZ/i//Rc0gFIbHBRxockcFoYGHrJZ+shqhKBGMEJj9Pg0eXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744622994; c=relaxed/simple;
	bh=htfu4iDRk/NEfpP/Zv4hGHcJdXYVp78iPooHuIFfhKA=;
	h=To:Subject:From:Message-Id:Date; b=ABq5iOd1RDoyRxVNr73KOx13q7MgBlPTKDPYMSEVuxHnPYSp3E3Zp+bIJeKKmRdC3ANtNv+J912XoX+xAiRBRHy0UNsayhZMYD6LvheBGcd86oX51tFWJ8WBHNILtd9lWGUX3ONEV2ugU6LfSp7Nne69GP0yA3TRL7pYDi8FMUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Krz3sTZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Krz3sTZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFB7C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744622993;
	bh=htfu4iDRk/NEfpP/Zv4hGHcJdXYVp78iPooHuIFfhKA=;
	h=To:Subject:From:Date:From;
	b=Krz3sTZ3Wi6tant4iXdcI3sT4jwMd0zGlAkww99A5LQEcFQfFfBANTZAHTsLEQhHG
	 l6juOydlgE468xtBq7KYIbrQfPZaSNd8JFPYC8cHsrD3pAc1N/ezTAOeOBfLvXYQWw
	 c28+VGMeGoCgGpLuB3TADb+k+mYywolxnnr0p+y8g9M0o7iIonbfiz376YD76g7Rup
	 eCeysqSfqugPpaBPz60ndE5fQEGzgwNSVkaHpyH4V7nmjvXByjRlnw8YqyLPgGu2TZ
	 5zW9tMJk8OoUhoQsJHkNbJIdbN4HBo62tbBvlquPIjdmNog+jws0RBj3r7Luev5JU9
	 6x5c5ZEaJR4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D211C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462299363.2838.7480815544912567821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e4d2cf18a97cff5013a5472d533f046873556b19c84d06947972f3db6d7520
Date: Mon, 14 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744622993
