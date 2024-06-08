Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737C38BF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717811243; cv=none; b=lsi0ymPIAg9h4Zo9l3NgEjkAAokD+Fx/O3YDxf+kCqt+dv+7hx92lBHnIdMZXamD8eQY8oni+DG1Iadjia/rSR2qFFRK2T+fjpnNj5ysSNUga0LOHhVFSEg/E4SpMI4oQQndQsavYXPGUyfss+nFIlRgf/f7JW1VEXNhj6VgpOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717811243; c=relaxed/simple;
	bh=xEKeCjnzsZaJe1qC5YteNxYT5yuzgAIfjTjUSn9gkls=;
	h=To:Subject:From:Message-Id:Date; b=swIXROW6GtwQwR/1PGl8kede7xQTJZzV6KHlHx0tE1ZPzW73RC9Y/7339aRY8n8dNg7NYCetBaeCsPQpJKg9Ehmy3J7xSltDII0CuUMTruktvKeh4VQJMZFh1/9e9wX/ANAJnYrrLjAMu6oue1K8VHSkIWa0h9OPl1a+3j2JYY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9bqhanU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9bqhanU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16F8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717811242;
	bh=xEKeCjnzsZaJe1qC5YteNxYT5yuzgAIfjTjUSn9gkls=;
	h=To:Subject:From:Date:From;
	b=r9bqhanUhkjTRurxP6o3+1tn1PdZg2HGFxyS5ejXF0RI4FCfjCYQPJW9XuBreLTMH
	 IlBg8aoCD8X0K8HyVaFGsJGkhmzuIXMTZPzfSSUk5gYeHAr7aqTmZqqEZFpGRUsUWE
	 ViEtYrkRSXv1KJ539iQsARwdQNslg4pOaIJssEeK6O5GO0sGzugKg97MCwteYfzckM
	 tZeayd/8MRS0HUJhhe0OmPkfQNX68C/kQkiWBYwhA2o/xzqVup+c0jTLJFUKqiNLqc
	 V1GFVB6WszTevJCmxtjav2m2CcsuLLOWtwxBbbdTMdKQGLGaHlAYEBD0UD4RfcOxU2
	 PXQDxfa+cuDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53A4C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781124278.17193.306567044466087515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59f5cfc8c7395a8259c0158a4e42c9fca0397f26fa9eab146685c41e4f9971e
Date: Sat, 08 Jun 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717811242
