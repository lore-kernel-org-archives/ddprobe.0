Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342B33DD879
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792080034; cv=none; b=O3lmjvRJboYXznwVg0B0o+ZKhcjPAf0UQVDiWQXSjoRwElYlI9oLOOhXESXcd9SkmuXb9ULhxLQjrulZpTU/DJJ/W1KU/lT8pCiErIzFFVg5plxK47FMN9lXgYZX4otK9I1AiMuY8VSj2ai8kEpTVqrLpVSkk52zvHQuujMo9+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792080034; c=relaxed/simple;
	bh=VnzRWrO7E9ZvoPxMowkTNjTRDjj+O6Q4QnllxrpJRF8=;
	h=To:Subject:From:Message-Id:Date; b=c0kqSCn16rfctBDm2kooMPYdfZ0ibcX0BDqZjMYb4L0HMeg0DrPq2dqnU6kM8HbhhhxpUqMXr0F88VerYUYDPKc7a5WuZArsVwpDRtWtL7Sv2GxpAXvlYgzDa9Hk7y+UHlsjz2xxGuSoo1pcG+kAFVmcxZEnbkHIrHuogGGJ468=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNjyoTAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNjyoTAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9131C2BCFC
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792080033;
	bh=VnzRWrO7E9ZvoPxMowkTNjTRDjj+O6Q4QnllxrpJRF8=;
	h=To:Subject:From:Date:From;
	b=NNjyoTAVXF98ti3sHBfYtKoGOh66JHfngH5pp5awErU2O+osvmZSVQ9lXMC4OnksC
	 TC9tzo+VhYmj02pQ+DJcsgJa6xQ8L/nnHufsIo0YrNCtapGgwAwS/aoDPQBzcfIaRg
	 /eJVR+z/3jAd5yRzUTngYmGahBV1nX6nfflUIgd/bY/jU2+CGxtewS6s4gFTb8vRM6
	 0DlzUYmOyZRW9vhcmiN4Evwg8gm1R0OsJGrP7ISs3uRCX/DMu1rjH8jSLOLOGqiP88
	 REgDQyONyfTZxRZyLm1sw7v73C88sQd2lCw/NfPxJyl5aG9PzoRo9Vc0b1VPtZGFFR
	 PMpOytlIzOJVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A9CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208003371.13258.9781732376907455435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f869e165cc3861c4dc5c4cbf0c505500896f984195707c96e61fdc9f2da01f5f
Date: Thu, 15 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792080033
