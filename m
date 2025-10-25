Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D7A2153D3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761405594; cv=none; b=IewjdNgWCGZ34fxuE9sDqV3tY8GcjSiXfvIzYvQjXKNLLnjdoiuG9XccYxRb+M3WG/J5MtjQr+u6/go4m0/tkI1U0frryCv00vsl0NyxAGossb+YPY+u18vg/JISNmIvIWXL15Yd7+lrqObadjkulYjf2sOChWJkZWDdbnCzgNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761405594; c=relaxed/simple;
	bh=A3NS/82V2kEuCx8QA0aihqVMzwK3uEU+7xjh4H9jKFo=;
	h=To:Subject:From:Message-Id:Date; b=I/W4f38Msvgd2/DYr8I6XHnPgmpWWIbqR0eUHdTAVkIYbQr90zCE6qTsld5i9bGYS5iNzilWUKcegtVg6RWKfm/XtFuthJhw5wvDrKXUc/Ab31QkbwpzolHjAqc5zr06hhoLi1skJ1tCh9V7cNqry/p0wSFzgVutk67iiAp6f1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GneoKUYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GneoKUYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761405593;
	bh=A3NS/82V2kEuCx8QA0aihqVMzwK3uEU+7xjh4H9jKFo=;
	h=To:Subject:From:Date:From;
	b=GneoKUYp1PpUWYDE3IvElDSrhgGnbQoyB6VquylVhp5+adEJLtouHqeTJOXEuvhEz
	 gN8frgsOOVYSE9DEW19EEjUIeQRp+DLix5mzRbhGuf3Hh8ZQDV5AQ3Ak8AIfocom0f
	 qp6OljzhyAdC7VQTLEn2iWvVoS7be1/PUFydMieKLCMhlJwYj0/BllALwts1bzfdWt
	 rMvmudhth9ANdTiGhmn2HSHpUYbGWd5oOHX2HCw9Jv7K6Ds/vLKyJ0ylMXEJZKJiVg
	 QoMjValC/OAWWV9ZvCKSpZurqwW/cGcrqW7CjY0QliNbNV6dEtfw5vPN/p19X15Ld2
	 yXCRXrRCsxxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D68CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140559357.10531.2431314091691992411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e1bb145856c1b0766759f668aad6d29f061941631579157817b9f7c57a0f68
Date: Sat, 25 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761405593
