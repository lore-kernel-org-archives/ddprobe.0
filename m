Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D6414038F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720524983; cv=none; b=XO1yaukrzEgCSiPwqbdiB9ZwMhZ1UbmbuizserYQSn11VD91yWtspwWZoM2ZRm+U742js+qNETM6ZG5s4SZQ2vknVb/HuALIoyq/KO3wh3DLxXtlUOwYsiGC5TKasJK4F2gg82nPeCJq/ITquyrY9t3fXLJqXe8T4Mwz/6FfSMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720524983; c=relaxed/simple;
	bh=GraHctbDFlfCfO8n5JEVjFLtnoHTxUQ6WK2PWi6DIo8=;
	h=To:Subject:From:Message-Id:Date; b=mtmEuEWFB3AqI1YNI3uPQwACN48b3xcStZgHabVBm+4QdozQ2FoFS3xDlWnrH/5pemvQ3hseNb8U77hl0zGB/FqW0sPhO/Qb/INc64kwtKsEzGAX7SjQW5DHur8JadQjBaBM/YXOyyOqtNpQyGNVVgOfj7SUlREuGNLNx7DlbuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMZ+UV2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMZ+UV2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED547C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720524983;
	bh=GraHctbDFlfCfO8n5JEVjFLtnoHTxUQ6WK2PWi6DIo8=;
	h=To:Subject:From:Date:From;
	b=aMZ+UV2XulEGfnmiAvsmZn1Is1DK2xNoSkc6ppL7rLFeOdl7PiiRqi/laF9VL4lMv
	 AUZh28dk2LMrli8DJFa2Ijmdf6iWg7VWNX5qL2gmvfa0BltU5gLyqvnl4FqJCW7e/d
	 1WlorTJ/qieRBrXlfVgmnMQYvivOP85dIZx7mn+T04OrZTbUKVa6KCey3QKo40bDMX
	 4QpJeckXPOI+EndysY9QfXRTRwGZ4kWB5JiUBk80Ezg8nJSBLOaH1mHWhsh8Dt3KCO
	 /LZtSrr/g0lAj8pnSgCxpEWUJMe2ahKg//X2r6VIoOGw3k59Q1Uw+cQZxGT4V2IhcG
	 dkM5J429UseWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75B1C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052498285.5621.12748433160788638707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cbb4863a4b7d4d33616b0d770b68e7aca881efa2c755e1ea42648ef5dbdd06
Date: Tue, 09 Jul 2024 11:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720524982
