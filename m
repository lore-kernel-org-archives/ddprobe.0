Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A2947C0FA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791531634; cv=none; b=IyMF/ANlsx52Fkb7E6o8eEcLfjBZg0X5R5efRc6AF13vTPBVyBLpMxyIzW3p+OU7UONpheWxD5zan1KNTrkijcp8i4Dzomv+kS0Z6I3Ajq9eh9uk/MjkxCpZoLEpJy08SbbnqaOOPwZ+ZUfXVf4YZFC+zZiNPSk6nByGWn213Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791531634; c=relaxed/simple;
	bh=I4LaKy1JSmM9tRMxgOFbeaA88PLH/1HHjaEvXIwXz6Y=;
	h=To:Subject:From:Message-Id:Date; b=q1qguvfjmuIgvtlBVaUGl/zYDr8+MJO9kwNVfPJkZdKCvy0Dlp9lzeIOavcGzNSs+tRCJfe6jPZ/GZZovmsS9Kj4OR03TtyefNCzPhPCRrgvSKNhcxscWc2czHxEGoKmHuMPtctbkY69l8NYYEhezNmjmlKiKu9O1cylNRZ6wQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0qY6tBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0qY6tBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46E9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791531633;
	bh=I4LaKy1JSmM9tRMxgOFbeaA88PLH/1HHjaEvXIwXz6Y=;
	h=To:Subject:From:Date:From;
	b=T0qY6tBUWbI/uXWwTDeHESQdQKuAnWVwfqW1ShTMHTEybehDe/cgNx5XxeHvVolrt
	 E7UJIMzREb+jSbGveJtxu0+TdZDyi5KhMwqshPLfyRFwVW0fMg1mK5s3IZuXsaokCw
	 jDASexyCNGnycuAzPrkhcbiaXdXRd9CNmu2Jz3z7RREWTf7/wqfwDpEq+QzrhlfZUg
	 WxUAEEYOqUtAR6/RXJ/IFJpH0ByJYohjrnrPhZFYht3Eqa9bjt+KenPAPTe+wdLPzh
	 50yd0IokEZ89Oe0nYJrycXGmSj6cPyfEoTLOehK+QeMhM23N5lzUkIVbPbRXjMBqab
	 7S59+MhVoNwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE150CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153163370.27319.6535600737758167972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92aa99ddd4f9380ab67423ac90e5370cfa6dec0701990cfa6682cf05af89245f
Date: Fri, 09 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791531633
