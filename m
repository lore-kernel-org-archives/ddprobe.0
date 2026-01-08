Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E3D322B96
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767898434; cv=none; b=n/6T90GJNSrztwCOxk/raHY8n2gPBfv3EClF91mbnGCSNnbgTIklO9b8wydBobeoxcbFTOjp1o6jtTSZoQdwtj3g3e6/76p7DXw6XO18dN4UTuxjFedUxbF29ZksUKj+DiVgtWH5lPWuur0F4l/He9En1+sCR+gi4q1x6JQqw7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767898434; c=relaxed/simple;
	bh=R7z4QFRXtlySLCwF4Oahgp4gvf+lBt4oS9o6pvVXF4I=;
	h=To:Subject:From:Message-Id:Date; b=CdJPUKuzSZiyQfZtwFtXobJMc9xyfW0+BGqysEGtfYQXEU8lMoj5fs48fyg2qiUWIz7InkTlKYx3rEM6vsBahXIYjYp1BViznrdztB40Dk6dpLOb5ZFLSwPwH5uppqDenHLNSGbAZ5AsgcWvrUSqWW+KbLBCDT/7MPfaJYfKV98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwFiWD7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwFiWD7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D90BC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767898433;
	bh=R7z4QFRXtlySLCwF4Oahgp4gvf+lBt4oS9o6pvVXF4I=;
	h=To:Subject:From:Date:From;
	b=IwFiWD7fS/ttXNdUVG3ElwzSzj2SpVpaNFzeCM0T9YYzDju/O3TJEAjxb1Ijl95d8
	 u0JxrD7xen206Z/o0F48l7szoV/ooPaJm7VkFc6u42KynDW3vUJjkOoPjFDphfLuf6
	 Wo40aq0szkEfgXnXPDCKYdUesYaIEQ4HaSiJ/OHgfBnvawgQQQ0ysoW5nK1RlvjS50
	 N/ZNI9dCkOR+69TLHFJ09mVWxnRxYumfXjWrW08NgIZ365AT8qujtfIrSAYx3/GmEw
	 e6Ia1jFcRwb6KNa7pQ8y9GwKWt1vBGNSJi06AGMSqZvT3qk4hksifO9TNRbKuqVh0t
	 sP+X27snqTKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2FD1D486
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789843357.25333.5720700789739669178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ec8e278f4ab1fafea86b1c3b01f08d11fe3c0f38695eadda4472642dbc6823
Date: Thu, 08 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767898433
