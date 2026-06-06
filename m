Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F56926B755
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780730074; cv=none; b=m4LGwkgGayysdEAGQEPLS36WtWhj+d4I3boCzHEdgngg7pF9HLIf87QF8kTrcQJ7lFYDJlAY4gSY3uTJvH3iqKb3sDJxv2+hrLdFfMTIIimtaLiYVPZ+wAjOpiOUWvLMGijtDdpynZx3jorTO9bqJsWj9Sa3nkJmK0iHXpXxeg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780730074; c=relaxed/simple;
	bh=ulvXmhkV7ZIDc3rtPUYX1KzcPPQ5W3N+GfwghfdTitY=;
	h=To:Subject:From:Message-Id:Date; b=geiNCsAkDy8hnWEl+fT77y37opR3alIfy05H7z8oSnCK9p8byJpMwOueQTQxDiScXpgqIHXI7+el/UL0qKv/F5oE3VK/rLmD7Q/cPS/Kr1ewj2yrFxtI2kygk2nnRN4d7ijHOvhV7UE8D6FygukO9xwiUnyrn5RFGoTRH1yuU/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeOaKGA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeOaKGA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6590C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780730073;
	bh=ulvXmhkV7ZIDc3rtPUYX1KzcPPQ5W3N+GfwghfdTitY=;
	h=To:Subject:From:Date:From;
	b=YeOaKGA99I83FoSc4+IZgqfI/ocRzcDxjMETTqo4TgBOvgCuZZR1gKRpoZbF+RP0L
	 4zaQoILVgXNC9oXB7WUqvWIlcFLzg/S8NnFQ1LJjLYv5rvzc2TrJVbF7f0iPWfpNq+
	 E327FDPZxzj4khzHpEbuzntZ0O+hBbM5GQfwtEloR0wPLXt9gcvDspRJEufDqeJvJo
	 ZYF4RN+vYLQr7A8m9/7unw5b8GPu0AEPMvgX0p9xMO+VAaalzwrGawn70z6MlV4sUX
	 Kq5AJWrP52k069MvvF7PgcJFXFanfR64RFJSFPbX68yikAwIu5S+2QOyPHHTDzh0cB
	 AdSx0wDBbFx9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E65CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073007371.32326.14949002870980072863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f570bec301a92f7f2445a8d923e49cf4bab2cce7b5fc169a27f21208ff9380a1
Date: Sat, 06 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780730073
