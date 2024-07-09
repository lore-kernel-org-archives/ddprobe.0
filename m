Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DBF14884D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720529183; cv=none; b=f9lKgHj/2xFfPMsW2PwjpiPZzIHZNCnewEqJiURALg0IsYJ3ngFoo//6kYpjhAgSRSaTtuFrVDm4vk7JpdmrZZAmt3dPLza3tbNE5D5S1FNbvo3zAtMFt3jJvvLMP4jGRc0EPbu2F9ohreqn/A0IM4YUuvU7NCEoknKy9cet88o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720529183; c=relaxed/simple;
	bh=DlJlLG7Zx/qIvuZm80su2aCxLx6oWts8R9gx7z6tnnY=;
	h=To:Subject:From:Message-Id:Date; b=NTUypQRXcI3Y9zH2xNcs/Ojn1JskQXOVPipqA2NzOP3fuH2p/o208iALscow9guA02LJDeKsJ5G+ytJTbCz2dMVUyqwJsPwZkqWbdkIWIxMfvBUMguenYnCHevkD4Td7JfouWxLfZ01iwaY9U2pWBXdT8UeTVBX1L+R2z+wiy/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEJgOgt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEJgOgt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA097C4AF11
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720529182;
	bh=DlJlLG7Zx/qIvuZm80su2aCxLx6oWts8R9gx7z6tnnY=;
	h=To:Subject:From:Date:From;
	b=WEJgOgt1uUMSgxMZ5M752Q8LMDqWOlRJbcIogpKh9Cv74ftL3dwNPx9vIGveONupO
	 A3LaGg4DBPzza0/7yxuI8wYRHsHW+KUe2KJ06fVN1aK0PgJaEZEqd1kD8wAyeW/16m
	 1bqzewRMMdqKfHBdcNZxMcbxamX2+GF6kflDdP7uaIWwZ8McksDVxpuS9ZqBvDznr3
	 a7wcWRVkyN4wUiJTUFpI9PKfNxcFFSObjyYhNv8O/ihDuEK7XSive/T2deCk+xOvb0
	 aoPrc7F/UlpuS3AeLFXwQNTiPrIHzWADgmCsCmyyDQvNR3C4RF16B19gDsA857t7rd
	 HTF6QCQqMzwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9105C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052918281.15221.6001467239432577695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634e1517f65963701bc2b4bd10db57acf069ca9418938725be680930066f64dc
Date: Tue, 09 Jul 2024 12:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720529182
