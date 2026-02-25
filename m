Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12917242D9B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771982694; cv=none; b=C82Bcvm1lulCIxpIhs7YunBZaqYyOGRXDoo+hrfBbXgaX7q3Nv72p+my8CxJ0ve8VFh7LSTGOb5CfXb2kcG2T7Qg4+/0FXZJYAF/YB359WWyV9L1P4GSCcEHIwefsK1EHomCttIOB0LIxRLutX3BEu2U7J8ytNRw0zzWtQ+H0J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771982694; c=relaxed/simple;
	bh=t/r8uiXbLQYhpGMN0J5j7fQFbvSxcF2WZEkC7PJIxt0=;
	h=To:Subject:From:Message-Id:Date; b=tI4nmjFy6itbugog7WoWVfRfj9qAVX3/BU6N3VtkCNE7u7lLpvJ8ppcCkV/Oz+KJUq0cmWyqXD2p+AfGPfzhfADMP/LXz2AKgNlcDhFa5HXF1LSRq6fafCjeVvDuHkit55zxErkD9rK/pCUt8GLW59sG9b/r4MltpTjosObkP1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fer4sXlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fer4sXlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B903EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771982693;
	bh=t/r8uiXbLQYhpGMN0J5j7fQFbvSxcF2WZEkC7PJIxt0=;
	h=To:Subject:From:Date:From;
	b=Fer4sXluXKU3UYxmlcWUGQnnOga1c26xt7Sq2/YrXO+7xZAAy9uwx9su5AfQPoR9H
	 lnmH65wdDNQfPeRyM7lBrsUUaaSN6EIxpHVVz9oeDDrXTXfBF69cH3Yq9KS4B/xIEI
	 j2CNBobX3B19F9ZLd+7iq3QT3GcTOg6eStFLfoEyWA90AiHcdcS9UpDefGgSPVM3Rm
	 J8Y7OnQmbWY2hkP4UVrVDJQsr9PRPlqKSIEY+8NmUniTfV6NaZT+KXBrHeBLJQJ493
	 p0EOXs7+FMA5lpaduKGCaGNe/hF+nw55GJiVvWheRqv9A5D1FLFw1jj9vR121ZxCxG
	 ZwtFHw0NIyp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44F9F55434
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198269364.7596.14359030239653554310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6ad31c13fe23ec7aadc18f222b24a004ecbb10a88054ed089963a1feb8704b
Date: Wed, 25 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771982693
