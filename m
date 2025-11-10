Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD1C278E47
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762745394; cv=none; b=DQ+rBVUuiPxw1Wk5czcMIu0G3gRJKDc+lix/sXMxR+g8XpDXTSgnz/1DOl09RHR/gkfAJ7AFCOI1fZW0piiz90I8hT6qenTvsqi50kNB8+EkNQr0avsYrilr5l+fxSuDlUy+DhAgHr1KLiX4f32BzDAOoq9ykxg2IRi+AQGaqkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762745394; c=relaxed/simple;
	bh=8y0OCA8K90WVp7KeMNk2fxRZxRAO2CuUN4SlnI2qRoM=;
	h=To:Subject:From:Message-Id:Date; b=MtaWyfj9+iA3aHoqD3AsvdiW/X/poN/Bn1X6KFEGJP+k3Hno0ue4I/E/Mut8NHkPhlHbGaFkcVhv4U7JsQnEHnga2WOYb/ErbeQ5bZCs1zDh/KawocJDNoG+WeisZulG2Zc0aK3Lfqr94nzm/fIfUChmn1Gs78QCRij7AvSE+yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6doP/Kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6doP/Kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE4C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762745393;
	bh=8y0OCA8K90WVp7KeMNk2fxRZxRAO2CuUN4SlnI2qRoM=;
	h=To:Subject:From:Date:From;
	b=F6doP/Kteij9itMH1VKsAgIq1wbutZ0PhgwVnljUIvEQR5EZDALj9+0cKdiNkIgca
	 nbB2tAFr/cTY58xzXAiJS6ncAy4bA3keq7Y6JRkXphqQHOQ2x30DWi35yqz1/Fo8T6
	 UupnhuCsLDPxSk6S3txo2/0RNoBFelvztTxRqVd92LjLBDUI6t5YxmkDOYFh1QiS0R
	 KO4Hqc9mrZQHAMED5+zeKyq+alZsWrsaL9AsCW/TZx3KR5d6OOyP1LMGgLwnfCdQAs
	 GIEQUkR6KVBeHaBuAhYI8lyBT0Ggjj2XUKnzkJFwpGGuOlb5z4Lu1pYw7RRvAi7/6F
	 wXBNovFoBb5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473ECCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274539357.30758.12154265348680411557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2260236ad2904338df5ce0f4872b9e332de8467edbf61cc1302fb372d0a6947b
Date: Mon, 10 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762745393
