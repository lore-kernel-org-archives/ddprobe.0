Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316D5189902
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735934154; cv=none; b=hQu6JWD24iNP2GVvMcNm4qIfb+T2rk0JCIzuPyhcNBSxGCu5mdCY5HYzLBpiBHIOUN1Xfy0Als0sqZ/M5JP5AGjVauZfLMrrljWc8P8072EgZ7qM778pj4T2jc0QcvjHfa2AUOl+Wj0BoiQzEWk4XW/4Rrfu09r9CSrk6VTxR0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735934154; c=relaxed/simple;
	bh=VDGAvf8yR+zv9rzeQ+EOt5TJEppN9JnvwGa7V5DC9NQ=;
	h=To:Subject:From:Message-Id:Date; b=fcQ7E31RnUP/t/+3GL+ajkRK6WVqWblTATzNgCB4bOv1wu8MPaDT5Z9ehIBQ6cSFvKvOah2VKF4RNC6l8JvMTgMYvE5IklpngUg6eqGmVr07g4QtVoc6M4rH3qnyoTdQOqOlwf9wlMUomKEbcF0AH9PA0OaWa5+MWoHGhe8Qu+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqPBOrRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqPBOrRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C3C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735934153;
	bh=VDGAvf8yR+zv9rzeQ+EOt5TJEppN9JnvwGa7V5DC9NQ=;
	h=To:Subject:From:Date:From;
	b=YqPBOrRu1TPZM5k/uqhZIUAxPI9TXPMKbmHXvXO4IHhpIVCu7/fM1BJbfZs2lRXyD
	 Hn9KZ+Jtr8/tDaaCMFMA0/VByJUXNC3pMEfaJNgcZlFU1iu/fdBzVXV/TJzIH7l62a
	 LZwnSNC1CYzs1TtGL3FBVcJb43Ty2HQbnXxdkINee2ciDzkaRBmIokCf6cr4TtL6tu
	 7asg17XeMT5J13zbeHAIQEsUiG3BkK8A7IYx1B9bD3o6F57AnKWfJwKKyITLD78x1F
	 ybSe+yZvFVGrhK5z2bis4gUo6pubRESXuWY2ebvyMfSSU7EXVhubSC6/5OxTQG2uRt
	 rR33edQjz9uUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D4E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593415358.32530.13141361713640575893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808640c9287f351a52eb4a0a3a4347704f4be6b3f47b6700b4bc60f837d9592f
Date: Fri, 03 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735934153
