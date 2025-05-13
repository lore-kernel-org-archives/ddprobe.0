Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56A273FD
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747135194; cv=none; b=T/5RO/9O/M3bek0wPR9Iv2+0KfdSuvqIgpPpjsrtrpYEVkS7Q1rBGMauOYMYMAPfmrcpAK8FGok+yUfquyHp/4QFrTAIodw9TDXlhJqj74yrFo74INXwlQzMUBMNjsb40Pz6Fix3Wo6uFaBjR0kZiQjG5cf8C8VUK1c6o3/+0bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747135194; c=relaxed/simple;
	bh=3GgDaNohTrwAODoX0LrAlKjDloCo90FKKlW+7DyUK4Y=;
	h=To:Subject:From:Message-Id:Date; b=aG1n4u85PLSVzLYih46AyVIWgNjc+1ClCUcPr/lg1U8oWsVK57uBsIfjmYtLnnE9/iGoiAPgzS8QM5br0UlZCsQ7u9Dpp/FG+eh4tkPSqUKcfesJTF/gyshtbzniX5uGcFhyejWvsN9qr8gLk+MwDhLGDpKwF068KeG16lWFOX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3YG6HLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3YG6HLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA904C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747135193;
	bh=3GgDaNohTrwAODoX0LrAlKjDloCo90FKKlW+7DyUK4Y=;
	h=To:Subject:From:Date:From;
	b=t3YG6HLV2VQhLTTgrNnEqa357o0Qa7Ea1AQfkFVcI1VoBvQvzqULECl42o47yNjpY
	 Tn3ajBdF8fXP69I+J/zZLfXdcfh9Ai41yxXDEyTQnGMRNQlGhGWw/BvBIdpOYLMpjF
	 JsRedUIdwkSiO3LW5yw5fWM4vawMmvy52HV9lF9qUyVYd0h+ujmocNrUbdC2jYAiFD
	 pe+Ojv19jB9iu6DroYPgisf8fjoSEzQAAcXaPkbxpb7jcZRtO1I5YKFAiKjx5TK+/m
	 NecQ1WMgOYPtys60Prn1254XlWL6rzqfFr17ah6vEe1dmkXhTzAeNmyT+BITz7Owml
	 hzZJLMI08rd4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B22C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713519360.10977.7425412044536247177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9549c6d07bc83df1d59c8aa99bf639b320c61f1048076692148763cc54203e39
Date: Tue, 13 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747135193
