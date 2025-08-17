Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320CC218EA1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755436194; cv=none; b=gb3WuG1Na9TYnPgwOmgy37thmyVE4Dhpa6bfwI63g3dBcgyqaSWtYVYE/JwIuupWIXL/VGlrNcQWouu0fblkm7DOt9q9dX1pbph987ArMrDhraOYxUU+cd3ho2k1cQhWpS0goTzmozaRCeh0lHmQS0zaV9AzeZ/bWxMEh+ItyNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755436194; c=relaxed/simple;
	bh=IviVFKKIXLzDnJf4fsQlVLwpo9AOQ8hXEIL3WK50lOU=;
	h=To:Subject:From:Message-Id:Date; b=C4vWgFH8FpEQ0UGWwNnyOcgBXeYaKQWCRl0zP5QYI1WOkWL5CEvxtr/Uf3+WJNC0OYtBSHKrMLgAZPxk6hU1QzBMAXayoBwUro0tncv7I+2ukz92ZoN4727xdQgrfx0Czhdugj1xTGlr16x8HnwKjhnynaMIh/+S9FWerL7T0C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRVmOWOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRVmOWOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB98BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755436193;
	bh=IviVFKKIXLzDnJf4fsQlVLwpo9AOQ8hXEIL3WK50lOU=;
	h=To:Subject:From:Date:From;
	b=fRVmOWOEBSt+I6VtkuKedusEX8RTL46z8KKVoEdIUwSFM/RIBAQkX46azGLTb6Qyx
	 Se+sk48cJUyUmsk3WuJx647ErJ48P0w5qd3yBRXIfZsssbrzYIwPF1HfQkv/8VC05m
	 EceFHtEPhOfLmzpDCgEQm0XJ/C22DFKlDhGI13V/OlEKGgo7xjdbrvw5apBXJEqRyX
	 RcB7paRQFnqWU92Y00UT3TW/b7F9N/meNcngQdIsSJGnsu2yCY3Rg+yXOtMuK8lqY8
	 xKW+fGbXIZNKaa44GoJKcUgnJYO2+7F4PVTL6qquOSFHHpzVPTPzCiiu8N5fWopTYV
	 awZXlpj+gWm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE0CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543619357.26837.17612999763509614907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed521ddf857de2b9a85bee33c6adab9ea4e61c3dddbacf7c92d0fae77d407e1
Date: Sun, 17 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755436193
