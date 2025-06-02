Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291DC2C325E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748878194; cv=none; b=q2MNIMOXxwjtQBeS6czGUmZWFfmNL9BkJQPYHh5aieVDm/8tm4N7TGQbmj6RKTnkugKM5o0KikSIKI3Q18SevX69eTgTMdUgpkX7aqA6CS/yStM7hdwBI7S8dFyKYHtJkPzcui25Vb49O5t3hHcb0/A+g9hlkP29oJAnUW6JD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748878194; c=relaxed/simple;
	bh=auacibp2olCk1moPUeMUWXKYCDzOMiko3eHP5MH25A4=;
	h=To:Subject:From:Message-Id:Date; b=bm86JHYPGqofa6i5EYgvV9ZmF570OstglckyQh2MprYcfPWkFKaQ3IqeCv1lkbfB+BQyTltPNMay5AWnosNeP30F5U8jF7A1QqcG/ei2pOwQ8N3kuNozqG3e/j/kOIq0Vs26hwpvnoEowaIQoRwJx5eoH8DOmUzaey5ZdZnt/hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icHjzsVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icHjzsVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748878193;
	bh=auacibp2olCk1moPUeMUWXKYCDzOMiko3eHP5MH25A4=;
	h=To:Subject:From:Date:From;
	b=icHjzsVfeKXeKDpzFP9ccH1Aeb10XZX9T2rps5NBc8wsA+q5lstf/M+AjVF9vX0Fk
	 qJOXycfH7ceCuiBS8puVOjO7QDxCNIhFfFwrv3WQuji94dpZCpDoqUXyXZeM+0fvk4
	 +HsUW/vfqyvB/58MuIGf3Pvb1fC19S8z+zxFcQfLg3TkExvyKp+5JZ2+FRVRINkDn5
	 g1oi0UNsmL0WU6kkgYMm18FPZ+CvZpdqUdnSvYY1i7HCWThJ6VTeM31E/BPKUHbUH5
	 rsHGy1275cE143GMRRn8eZmoWXQHM0Dc7GOHYp/DkyhIrv966EMXVepOMlCYllmmZY
	 tQ6bWkDdGZ5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FEC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887819357.10452.16188357131452110201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4762c012ae2b31ce0fbe636a58582fe52573032d969a8aa0e74e0dd8ed4fe9a
Date: Mon, 02 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748878193
