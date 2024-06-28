Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F2E4654D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719554663; cv=none; b=Ld7zitmN+KSzsrB7YylMIzdLSd2YQ4xA6ooOE45slZANJHjrv2beNO0gxmk5FiSIiV0g8RIC6tOPrPuUgI2ZKe54kFgS3YKPi5zJFieLavpD73AKl1J+WchcMHaAnpV/hxZQ36tt606KmSoSFf0B7wkphB8qCA7HJKJu1bNRwmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719554663; c=relaxed/simple;
	bh=KwBM5rZTdGfjgBkl1iYuVqd2bK4DnaLmBr0qY+6pzMk=;
	h=To:Subject:From:Message-Id:Date; b=fgEBG7ikrYVD8U7Vzk5b9rB8jQv78RydMOCgN0YXVYSgQfTUKoV5yktfJ1NC6l6POqak6ob6wEXC6E2Qv1JJLa8osieMOVHuYVhQnjqbBhnRDYg2cxDD/lMYqDEtZL9DNEg4ZkI+BHyhKESK5SZgsvkbjyEFS9ji6lzS0pariEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hcd76swT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hcd76swT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6427C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719554662;
	bh=KwBM5rZTdGfjgBkl1iYuVqd2bK4DnaLmBr0qY+6pzMk=;
	h=To:Subject:From:Date:From;
	b=Hcd76swT6f0SaLq17PmEekVpcZ7X/pQh1ZXVD0lKaYUofoPBctWGIEJKroS/Aochn
	 322KMkEdpiwZOuM/PyqMoJXHfL1PKjUiZNB8Hb/lEkicT6gyC97VrmjiRD03M2wz2r
	 f7Ugcxl+eXI3PP1n1kuXXoJ2dI0rDhzNeS5euKcfRX8G7H9MtgbYEqXG0PYDOrlHfC
	 2gUx0B7WDen5UP77lsxtSFf+QMtEd+Qsl2gXD0EhSqNUAATYgt+ghiIEeSWCQ6s+I2
	 OewdzfT4iWBea54/mbfZc+fObyZQhA5/rLt4HLFwGcaVTabPLKK/r4mXTJ7WLrA2fm
	 b9h54sRQoMidQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2252C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955466278.29745.17160102184153179631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdc003bb363724daca664389b6400df950748830724630e6de8f8578d7456c5
Date: Fri, 28 Jun 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719554662
