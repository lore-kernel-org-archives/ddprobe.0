Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B018242D88
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788588634; cv=none; b=FCyx3+dY2DlnFPw6zDorPOju2qiyo2FtLBLSzOdWK1muHT36hM+Atb4QF1Y5oYVRQDqbF+d933kfZv+lUA9eoP/iGuIEEjxtvWNAifb65yy9mv8U8t+DpIqLEouDn4Da8VfwPSIdD8MHtkaZJ8UBCgP7R9zak4ADt+azOC3g6FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788588634; c=relaxed/simple;
	bh=JofKWVLU1L27/Bnzg0l0CqWVw4HkhDXRTDuyzf9LbC4=;
	h=To:Subject:From:Message-Id:Date; b=JLnGzupFzbEtz+rhfudThOp+GEHwtk4KHS/0Lswa6mdzLtP9o1TmkzNqFwZPiE1IMAUJfElTqKFO4RtWNVkWIhxsTCI8ZwNC2+mAkF7yMRa8xR9Eyr4DHUpT6+XkGUhD+A/wcvL4mVTXnt1zFIgJ9zxYlk0xnjjgPlrXqXo9eNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdsECEoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdsECEoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBD4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788588633;
	bh=JofKWVLU1L27/Bnzg0l0CqWVw4HkhDXRTDuyzf9LbC4=;
	h=To:Subject:From:Date:From;
	b=fdsECEoz4Wzocu8kG6NrPh4xAHL/eZ4y47XTl52ZY9TkN7RVfm6CAqjeK6/hoJqoW
	 9MZY7jdPuPugX2jy9xBREHzHqDGXEYK78bzKFOv2wvKJqqLTAvCRaSiAdua9TvlfHr
	 aB6NxYMVcoizSLia9a2PZNRBPK2BTySi+NQy+xcxLfZgqyNjMQr7bWG2dqEKugAOz7
	 TW+o8KP67xbSV/q33PKZY8+3E9YNinqrdv4z/jXUmQb692U32Gx9Glkn3REHzhDB3r
	 26t0l1AtGza3gZvgEaeokgy48eppO/I5Y+RfUgNjZtuAn/kqb2MajrA9q/LJliZLVk
	 eniB5KobfcDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5ECC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858863368.14444.8389799057412202015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d35ef10226e6e0809fc10fbe38fd3913646d95cd3f7b5f31e651dded1a7946
Date: Sat, 05 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788588633
