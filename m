Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7028212FF69
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787076034; cv=none; b=fXzlRaJ648nN6Q8/QlT0iHuV7roKirV3PPLrlYf2i3QMmRSXBhCtLrmkc/J2gtgaw8+2/3lotbMTXoZzCw5nowTAmJhREwp5qWFl6VoGXep2de40jlh7FDJvKMtDWCSjD1SpWKClHiKcxYGWP8Ct3fARJif0JoaLsQRF+AqKufY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787076034; c=relaxed/simple;
	bh=ZzsHnCztEQPSNnD7cAiADovnaTXXxJxJP57dTpQf7SU=;
	h=To:Subject:From:Message-Id:Date; b=HeP1WzFiFtyzpt91io3oOhUb78se41G43Xl3XNN4j7gCSBAdB8qWLyEqwGmhP8GAi9peh2Q6dor1kN7ep6Pbpev6cb4OPnA6gA1dZkJFZ/Gu2+Zef3w0JW37EGIxDzMhzT+5w/8qEpiimQ5wCReERdmh7dx+RX9bfiaV7yo/yes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmdXMCfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmdXMCfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60FBC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787076033;
	bh=ZzsHnCztEQPSNnD7cAiADovnaTXXxJxJP57dTpQf7SU=;
	h=To:Subject:From:Date:From;
	b=FmdXMCfCavhxi1cNJtCuHbHfwh7gaFo5P0wKtiU6uZnQ+cb8f+Q5ardM42fhr+WzF
	 8cvuyit6iNShURAuoiCOXUnoWH1Vmv0M206JdWNqc55T1cllsDHYzLAR38hzTXV5F9
	 yK2HGWFsyHhzRZtl/qtmGEnxeyO9goi5sOpwU+76j+VTW4KN5hfqJbpAm0QfQ9Ma5t
	 tlicPpmYC8D3igLXmcHEH27bRNlPQuYM8GFQwucL9qgajS1qB9pqYIc1NXYtO1tceJ
	 TUMjo6ldQjpI58tzy+lp/GxjmQdl9Mn776lPKAeoXxImoOZcn5LJ1pNkERearOrizh
	 JshhXSotKEjqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE6C5DF82
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707603368.19238.15895718466143229328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7a33cc546e3637ca35604ec2d30f3200586cac159b0631240d08504b71a2a9
Date: Tue, 18 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787076033
