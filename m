Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A922AE65
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768147434; cv=none; b=izzqGa9wXvBH4Xw6xqgcNgxuEBAONuX7f1EtCXiArQU61jjDNT/qph6xcNsZhl4qC6dueL3q/6VUPUxls5Y5pNMBc2Sq6mOAHUrYUlleTMwOm0hqBnGpSXqzP1/MnKmLQKMcJ0kg93MEbNAYcEjCjktLUkd3QqOONIFkmQXKyJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768147434; c=relaxed/simple;
	bh=WiOPSzSYsHgS/PDw5nJFJ1sISpewoa5IAdWLZ+Z/j2g=;
	h=To:Subject:From:Message-Id:Date; b=ay385ZNstcU3rEBLAon/eBfNd+0nffIFfZ7p+VVJ7tqGNnJmRUUO+vbSI+llG+Lhih6+32oh4jKrzhYIHAxzSsMW2o2MNsOy8GUykIo221CxbJmM3GFeDriBN+jKSiPfO8Vb55Zi/IQendZ0vBBuX9drjtXYZ8+v+lfOoUJdHgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uU8vjIiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uU8vjIiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768147433;
	bh=WiOPSzSYsHgS/PDw5nJFJ1sISpewoa5IAdWLZ+Z/j2g=;
	h=To:Subject:From:Date:From;
	b=uU8vjIiQ0BTam2AjUieCy5LYGnt4hHnh26KQN97USzBLLqTm5nVB10Escuaa0bdEN
	 X4pCxgn22Y7xS2WLEGlJ1EzjciFxIVmIDIQAAPAqaSmNzGnEYde9vkfzapu/w4qx6A
	 7H2vOR046VCg7DpRAUHbGDRfuu9jJq+Yn69Wh+hAnJUYRpN5ROYqXSO3fn8l3olcc2
	 FuDatAzNzj9hQzMZLLCcNT/Qey3Pfy+//Yt+lhL7ozyxNxd8GWuShtQ+DHdNsDBQLX
	 53KXXuKFWRXwCjsya9UhKbG1/+VDDyTS6ZApCWDitV9BFlKfapJtn1JVu7DLY5ByrR
	 RmiNdgtdEkVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D5D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814743359.13405.3547927842759388806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f18e72c59006163c58e6e726a91059440e79c07ee3b4cba7d53758675d78b06
Date: Sun, 11 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768147433
