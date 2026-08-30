Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8E938331D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788079234; cv=none; b=ng8LDWDk3Z3Z4uiLYsgXXG/rgf1jOSvC9w1G2pb3xVPuOZ/aRSQasyGo90NQwCc5JWRVSQVn6unqOkBk5Zm7b75N7zWaUbUjSLsvha214YVCjEQ6z/dDEzrvyUxWwgzibMlGCpj7/Rp9fRDUQ6xvj00FmDNsf1KGB2tFLCGIYGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788079234; c=relaxed/simple;
	bh=cPDRhNhQLuXYpCZU5t3fygR4GL7bc71975sytNoglGA=;
	h=To:Subject:From:Message-Id:Date; b=aMXQBY8p66E0sm2JS3iPsVa7u6vi048aIEuquCA9QCoJlV4xjLZyZmOCLsdFhIiVmK9WoHtRpdagrbjolDV+ytLJEd/EY1AKix9+E/TVF8pKsFEXLDqPobsu1wSpZwjhl8hizav5vkUkGtkLAL3yLx6yGls8kSx/4iiLkhVVTrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/NdhGYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/NdhGYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD83FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788079233;
	bh=cPDRhNhQLuXYpCZU5t3fygR4GL7bc71975sytNoglGA=;
	h=To:Subject:From:Date:From;
	b=L/NdhGYnWrQdwFmCbJ0/uiCzseqPDcqaQVv9+lNmKu6SMkpANAEkptS02Jh4zbXqL
	 vECx9lGgFtUee/2A9vtA0wiQFNw0NSY2XWiIDeglc409o5AIYiB3G7SSoN/FQHQ4FX
	 NKKX1F9hSl+rEqXkfNbbKxMiRwr5YcQkeNJoIAi+I0tjaRZYjmq+r0TlAJtdXnHBbq
	 WLsi4bDsd0nwd+UjdajeZBzPrIxwnxhxGv+ycVhAfGY0NZgG1xb/qTppms0GlwXUSW
	 hwDFExyjLyGDrwEwQImp/6OthBjZ/ZoqGZ4uKkXkzZnwIQSkNUIzGKWZWyUjgynkSu
	 OAoXEeLv7FTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA782C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807923368.19865.6741837629121047783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c1d1c8811e25959eb2b04c268e655ea75dfbfe123155de089295dffa50e97c
Date: Sun, 30 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788079233
