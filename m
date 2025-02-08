Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CBF1624D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739015754; cv=none; b=TmwLhsiF76DV2ZW5277nqjpEpxwHRIGoApMK8ZxcoTOfKhv5nsPUXo4/aq+B/UhHEPbbnOo9/YPmGsAHLe8ahMlRKj9v3hY+jM3zdoxDdTbUgFDBRMYlturivio/fU90SbgVHsrCSWzSmQc/MiWochHManXPb31QROsawAtvgw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739015754; c=relaxed/simple;
	bh=veXF4Fg/zG3GedRTxDh6ljVCMpr3v/dicxlI3p9kUyI=;
	h=To:Subject:From:Message-Id:Date; b=gdLWh1J2fbEt2k1vli2Y8nKQOfU7Co/hpsVJHszJprNiuGMNQfZsc3SoU1CP8BILsM4RP32i98m/T7r8uUPe6O9U6zaURG4TQ9IGKe3Rf2a81MpePDnwBq4eYwjalPpZDw7ACT8NJY272X38ZrCu7uun11MtiRVd1CdyPhxMO1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyOqch3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyOqch3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA75FC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739015753;
	bh=veXF4Fg/zG3GedRTxDh6ljVCMpr3v/dicxlI3p9kUyI=;
	h=To:Subject:From:Date:From;
	b=VyOqch3T8w3QnHs1EOPekFGUzdkAG7ALcqI10G+8eW4Cz3PyI5rjQW6WWpf4oCIAW
	 tZ9VI4uxuytduhPwNAHo+YKQjJ809X//2H6kZWl3f+G6bwIRv9lN9y893Ibds8EnHN
	 uMGA5vEtKGS71cXCvHQrTxPtcpfj+DC13FMlGIm2nivXHn70ZmBxbihbKorYTpaFu/
	 C2QXWf/WOhB6tLVrK2/mV9PqpUPO2zqRaro9Dr7g2xtT5fMumDlLx2ttlASapOZtW6
	 UnnoMF6ub9eyPlKucir3AkHZWs3+/WmEqfc+RuLngG7l58MTAIx3k7Gx3WdvgHq7Oy
	 NHoXqH+EHTWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB78C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901575365.695.8426397422061655528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d773690b76955c6e30da05c4ab74a387975eec29882696d3e394eef40d7a646f
Date: Sat, 08 Feb 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739015753
