Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525D5182
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715194343; cv=none; b=jOGhnxJ3GNxic4ZGefmVdFFKSVNvlZKoh5sAdoccYNw22gKk6aVKXgSBZ0pYPdfUIs2A/DNQowNDChRWk+NF36EdZJyZxAyIrTBTFxAs5Ld5lgapvhgMMzZUnP4EmJmjQAnNsuMJ8UJEmDlJn2gLGi42HhdDBYiFxAgnMAlbFyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715194343; c=relaxed/simple;
	bh=8NQryotRYCWrkUopey5pwCYMheCXBpZWkC4wpztttjs=;
	h=To:Subject:From:Message-Id:Date; b=Mpjd7I5xMJ51v0Kl/ZRBoYMc5H8yyqytV0ytIaGWTSiw2xpUfNuHsfutZm2SPu39MWofDlHgDVse5xOMDVrQTyyDS0gIz3jibIoYtckyOPCFINyQO7yauratuqX5MtOOdiPfgsCK0+JzBuAXD/+mQMb5dWaPTizgRQ++YU2ZnVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhFSYooj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhFSYooj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2D0C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715194342;
	bh=8NQryotRYCWrkUopey5pwCYMheCXBpZWkC4wpztttjs=;
	h=To:Subject:From:Date:From;
	b=XhFSYoojAkls75t++xsHba/YTKcSx71bdZoD4w3VePOXx9ZNJ7ArzSdeEpFWwCFnF
	 pp5MYq/SL8fyB5LPBELhoM2/mx0d4xBRIHFPChacpJIlydG0ceuePjUpZcbQ7iUcYE
	 B0pFtKwNcevueLI3cHXsGNrOjJmVa0dJITF9Oef+xIaWUYsRXTFXOQ7z4gzkvHxloy
	 FRAESlZrcJusqEJlD1ZH1bbPvpUa1n+julp/Kcb4FR0IRPXCrRCdFysa8eLMAK4GkE
	 c0vToPppBbXQ3OqHAS6tWeJoq1blACJ0GjEGQRYlTVsusuDXd0GBhzF8w+vuI2oPmx
	 aBkbes2RtOlnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38D1C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171519434277.30103.9715186278250609149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16466902650c325df683790f986d9881096f73386d25a6d5ce2655c38fe5b209
Date: Wed, 08 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715194342
