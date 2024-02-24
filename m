Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCF712E51
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708751297; cv=none; b=qK3bogqBvsPgXRH+L6ZUhsnS/dc7UpertpHXtQJiKyPm2f1LK28x6dW6ybpa8OpSqw278547eo8+38rlcpcJYB0qUQzV+ED94dnQEgWTKfpz0XTqRwwodV+GiX26iV/TyGWcXd8ZVG7IywR6TFg1xm1tHtif3hFvuw4Vpy5axug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708751297; c=relaxed/simple;
	bh=LhPQC1GWBim4/FqJXdo0b2OozbSExERNFuqL+sz6Hn8=;
	h=To:Subject:From:Message-Id:Date; b=qaLfoEMFqYdkoqhGijQIvS1UXspg2vgBnxxtVIoEL7jKA90GGvDYV1BvT4sYdvKaF3COzSJrIwEMXDvZ7GLAiW/NLL6daaAMiIOFsmHleCm33AbhGTBrqQaPOBdjkDtg2Pw/xF3zWDPmNth9ljy1sIv60UXvD+jFr7fXBNtcXkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCnD/Ay3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCnD/Ay3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5EAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708751296;
	bh=LhPQC1GWBim4/FqJXdo0b2OozbSExERNFuqL+sz6Hn8=;
	h=To:Subject:From:Date:From;
	b=oCnD/Ay3KmHR96gQ32BiXglue9NHJM4yriWZrnEVPBrkLxQajeLoO1JHW8kShCgwt
	 HziTGu1qdsSIccw+n01VHY4hmB3mnx56V/9uXDDfUopEqyo8fHqC6mS5iaY9QqDWV7
	 NF4NJCAPKXUI+1uKhBr/DSgUZAXClGreEaiP38rhKxJS1OMBF7EtxcBcwa0ENTpdOQ
	 TDJKpc5PzU2R4v+omFOC2ozKlg1Qd9AXdtxKuek4RY6S1rPFKYGr52hU1bhu8LAo1Q
	 hwu3W6U8DMwIFblcdb0GOm7km7zND57lbN3qcjo4cIW0+Ly0adGHwEmHk63nzKe2Ii
	 T/uLNSS6ajdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68722C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170875129640.22854.6509151854309461115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7528656e23473bdc9c4324fec5b644f17cf6f607eaabedc1cd5c9331fd988cd
Date: Sat, 24 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708751296
