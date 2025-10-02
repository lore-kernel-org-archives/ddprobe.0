Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0F12D9EF3
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759376995; cv=none; b=TzbU+gHjqGB5i+t/Hf1dL3dZhERpnlFCf7q7wLzptTfAuFj8PF4KItKdtFNzMW7a3DnlGJZGUSr6RjEwSrH8Hl2ApaJLvTqXdugHJc8QQ24xnAKpr6tVnbxoIZMlqpJkOqKDlPNi8p6XfC4EjArfrI69nIys9eCMcEHUzExM67E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759376995; c=relaxed/simple;
	bh=JjtAD4FGxePFA3BC/mOqbTB+krwwrupgsEMUJr8e4Nw=;
	h=To:Subject:From:Message-Id:Date; b=I1K0fzpATMuaoCbSDjEIwAli2dzc9G9WcJZPjvFp4IrASFjxaKwrbAI9RfWWt4C1L6CKGM7MTRuuWpTrccMrMvXLVuw+MFopiJbZnZBtZwav9MjO4HdkvCd6OZDhHTKxP1/9XGrkVIlA/2dA3sv/aMlKeNcmF7uz+REblWx83+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS7Xl00z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS7Xl00z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6033C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759376993;
	bh=JjtAD4FGxePFA3BC/mOqbTB+krwwrupgsEMUJr8e4Nw=;
	h=To:Subject:From:Date:From;
	b=eS7Xl00zSGNKeNrvbeZab2Gby56E4cOK9vMhpDPdX4Pa7IcoRAKckjmWKmHtAiwvf
	 ZWkbmHjBw6cHoajfEwj2zv9zqDOjX5VVDFE+wMyhAzjcwejxvxV3tql1h8wYWrsnDY
	 WF+xs6mlTrbCs5KhvHj9U0XotMaiHDlm0R37B97mfdBOVD2RjX5FSwlMkKVzhuPn34
	 /p5kdT6yOlhAQGh+I/muu2KElljaAIZSb4IgXaYdB2a/yWuO38tosusXXyQu/mDZpb
	 MPUO1fLtnEKFoqL3TVvHiG1UNleoqv5uqyBs5c94o4z/sI0XImltiryIPLCOYAdOCZ
	 CdBtLngw6Atjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1FCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937699358.22446.4865599622897661155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34efb6b1d5aed8c61e7e4079c8412229f116290ccf297d50006a894d5c490fa
Date: Thu, 02 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759376993
