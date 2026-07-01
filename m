Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAC8257845
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935314; cv=none; b=UkMLe8zCnQIBlcIRuMdVWYeIdN/j4hHM4SHgQAco1a26dvEzgMnHAlypAn53agJ0+hHeHVA2NvF7DxM3fm6fYRRWER8lSaUK9hExzyjG81S3PUEtp6iCkv3L/kj7H/Ofo63InsIvwrbZfcuIJtZqww5YgIucRHGV1DJnk90F9FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935314; c=relaxed/simple;
	bh=++KOc1+QcV9f4wsMqljSVuHJ9pvF5wqWTfXfrIWCkpU=;
	h=To:Subject:From:Message-Id:Date; b=eSdzWhstjYlnAzOFVn5z/xIQhY7Z4o+8tEFeCWgvqz2QvP0CvJNwGzkyL/cPizFsWBe4T482sV/ln2VIgaxXEJ8XsoFWrzUF4fRdvIJzHNweexIh9DvY0YYnJzqI0u+1jYFmmQU5eOZ8XmG32I52/SY/3IhMhqTKZr+ifb1xMiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKkQ7IuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKkQ7IuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79F9C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782935313;
	bh=++KOc1+QcV9f4wsMqljSVuHJ9pvF5wqWTfXfrIWCkpU=;
	h=To:Subject:From:Date:From;
	b=RKkQ7IuPAQL3Yc1IwfWiHu9FXmGijEOhz9sjxgKAa3y9npxE5cHmqDSnIbkP8d2ic
	 k1ytzSDXichmNCvUbuRNjSD1SLoaGVkTyS1nY92Uzj0a29mQLp8Lx/xJGGC/z/sm+2
	 Dlalt39YBJWoWdE2gDUGgAnCcYq3X3MREqlpvZENOVItywSh8R1c9+AyCyflzJmuxr
	 FLSP1ZsL5OmrabM52IsvdVDzJZxyEGz+jwHWJ5pOtSyf+cQ12SHMZFxuc8K5EYA+5m
	 rymMoP5LZ+0vhnJ25/gW2C/Rr1lpCo9Ym+Uxh0MfPoh1wzBXy7qK8txo+dgZ1DU9WN
	 Sh6Ky5cY0LaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC468C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293531368.11849.932460483613178434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fd46fb167dacaa12b17254703c0cef02a4ef25e676012f8ffc750342be6064
Date: Wed, 01 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782935313
