Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727EC2C6B7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720814963; cv=none; b=k+PgafbUczxh/EKtCWQWFrdFQghbPP18RIZPpCR8xIFrbP6cNlVLeAq9Nu0J8jLMG5TBnCW5dQtYa1C45RymfXkSB3na4Ae4j3YsVqFO46cyjvq5fd+R49omLQeWOFI9jCt3oceDRus+oYrU+DpNJCrTxxDueBbAfbyiKRbicxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720814963; c=relaxed/simple;
	bh=OcOmQB61VUknu2zvzGV+xnoLygRDf+QlCjk4VqcJYW8=;
	h=To:Subject:From:Message-Id:Date; b=FOEmrzUGuOyt/x5cNOvKKwBJp+wNlBDeAyxcCRo1kXkhEuMt7nBasEUXqEhUXE+MY286NsEML1KtIQ8tEM6Zcf8KCBwXlz9npOCGgwx+3jewuyprEC30FX5r4UNmgDihYve2MNXh8xy7N2RW1cM+8JRZcCPDjibzgo41777EHiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4Dc73ND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4Dc73ND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74F1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720814962;
	bh=OcOmQB61VUknu2zvzGV+xnoLygRDf+QlCjk4VqcJYW8=;
	h=To:Subject:From:Date:From;
	b=q4Dc73NDQcvuqQXaa+jTqrBl58GHmxnu4n71uGvchNbfQayixTPaokZn0WuoHStr+
	 8RdddHUrz06A2mXyLfMdhXayCeJO9fsBZQzjhmXR8M97NbKerkcl/SR+I9+CfUp0tG
	 +3RCo14L/fGUshlvgLCOl0vcj24FnqCn4Z8kfonfiVlEte+eLV1qqlTz3ItEftLK7e
	 5rYoVDxF0rGGHWC43Bhofkc3LWaOHZCRjEh9lwfG2DXgm8UOyxIiju8RY569N1WtBF
	 64fGZlQ2BxghoJWXTjxi3RjNff+n5bBcxP30AJw32DdmbNej47G1tDSNKU6adosrWG
	 h/MYKV8MwNheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01A3C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081496277.4580.14018514590946741282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86728ba8c70dcf4846d6bf3b5ea554eba826058036f061d97bdd74cfbfcfe086
Date: Fri, 12 Jul 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720814962
