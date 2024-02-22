Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DA74437A
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708613297; cv=none; b=UQa3n6uPPlOhM19vqsc7uwfCdlXi0p0/0SeB+AZWfp9/qTZM7FvvJaBTwyt6GWufuoSczJFjMfngG0GtFAmX7NdPuV5laADiMHGc+LpPcy9ZDzl8S5F0PTHJRjsE/vuAteOHPW0D1sSSZIKeocVlOu6ly02Y8RBUP/WWFmbyBi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708613297; c=relaxed/simple;
	bh=aiBSykLSF9J6MVlilxKe2GCHud7ig38OJoQMT/yqM/g=;
	h=To:Subject:From:Message-Id:Date; b=j2hSoaa2xye0fwlMhmJEt6ySwu3NoZqmjXuc506s6gKZQksaCiNxUeJ8jDTYRkYlCBd8KIy53sQXGD/ZqGI0qf3lvaJxJyO1opH1TzBR08M5qRttyHohxxq69ZVgFmZ7x8tZRrLCc239+3uaGSBwxkn8jsnXKYJfp/ZL3rLPu/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbsUVq6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbsUVq6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B265C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708613296;
	bh=aiBSykLSF9J6MVlilxKe2GCHud7ig38OJoQMT/yqM/g=;
	h=To:Subject:From:Date:From;
	b=lbsUVq6jadE11saOuGVnMJF5w8vvHLseCl9Y5+q21Z1lhI/8CLAqNeesdS1HkIDw/
	 wUc8JV7T6B5dPBoQHhL1SdcMoZysBBS4WVqUxFOfDCrVUPlHTQ7gYe30Zol9AlEd8u
	 pD7ClkQHKSt68iGVdM38JNGJOI+wWyKlcwG6c3DVtPOjl5G45w2ATgmSLypXZbDLE+
	 AmGycKjJJ13jmj75XbCipbEWAgHTcw7kj1yUn0vRaObWqjBSOZbVOqOF/0Jty0eIs9
	 o+cXM9glCwEIRx31Mzol/7g9PyXca4knFAEtzWxp5yoyMlZbFORszxXMOEDQIB6IwN
	 mzZ4DtFucF1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657E5C48BF8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170861329640.25067.2893171839533766574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c627a84d9c3956f49c3b047366dd33add48314ce5a197892074cdd66bfb9decc
Date: Thu, 22 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708613296
