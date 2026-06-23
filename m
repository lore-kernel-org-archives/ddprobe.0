Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4AF3A254B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782211594; cv=none; b=N099jITT74/QIfTyTaoDWBXaTbk5G37+Zgf4X1KpcDb632Tsa9Zq15e25SM3opsH4euE2+doFm0OJSobdkkWYVwSnpAm4YqqkKGs2uDlRvoJALmGW298sOoHhx7QRrcIsFO6sUt2hna53X0fug32ilYUWd+CbiIsnoV/6LMxqtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782211594; c=relaxed/simple;
	bh=LiCdclR1w9YZmiD19RtfpBc7YeOWZ0Gk6pZxNAraByY=;
	h=To:Subject:From:Message-Id:Date; b=ZPseMUAo93RW9MCp5l8gO6LZAnnadVPd/hihwprKHLF+0QMn8IegqFHaDoLbqZvLHUHOsBgBnLXMkDokiyrRwzYmMsj4bcNpGoc0miR8MO49dJ9ujBaXX6Cws9WMebInOhwTyx/2QWe6/+1o25r8y/s01+IK+SxEZ4RJNAN0I0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgX4mfHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgX4mfHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4FBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782211593;
	bh=LiCdclR1w9YZmiD19RtfpBc7YeOWZ0Gk6pZxNAraByY=;
	h=To:Subject:From:Date:From;
	b=YgX4mfHFMWPsYZKwk52nT3U8eTUYymZ3nm7rdWelgb8PRqQJW9b+mT3PDwqwjUzzF
	 a92pq7jJEkipucZHQFJ0zDTy/KIifMTe/0YQ3TG9iIyNWAMhD+KJBE3/BPz6N6zU8D
	 nait9Ux7jEvqtlwiZvONr8ta8QTEEBcnCn0mei7dv8XcwGianWFTKEfmgzO0IlZsWX
	 VBJ600pPEjKgeiZ3naGexQEclLqc2v3+DIUKpSHoBDG3xgUqElgxjh5Ly7yGOoP4VX
	 YPue51bChg8XHrhKP5ivbZkG0/GR2ZPbJEui9gSak+Cg0Gr2RSbAjFeb+7bePA8Z+8
	 hI9PckwNnJEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D7CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221159368.5167.228685623522379477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd15e4cb8baa32d795c87d47c534b5db38a41ce79bafd80a81715b010fc6cf7c
Date: Tue, 23 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782211593
