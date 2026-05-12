Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2722E383327
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778554234; cv=none; b=YjK3ZANzqkq+Nm3yIC+2++cb4FuLZucU0AcItDdRibrC64lXBAYI8vbqb7v9p2mnjT3BcD1Zw7YoblcZEUPdcsAzrPueRUCBJykQ1RHOGrZwgfLvcZUNI6VR/MsbRHMVtEW0HQtOeaVjcKmEGwHWabzWTkjDEDwok8xybw9mTXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778554234; c=relaxed/simple;
	bh=w/UHLtvbQnua+k1FA0ys0ICvhRk7W3rFGuzYkXFIe+4=;
	h=To:Subject:From:Message-Id:Date; b=g5+2/UL3Ojn4Qo+hY9Ea/HE72K7EDBm3XifjtB1afBgfBg8mvmpR1rN9ZYqy6dajqjgJDp3CkMaJ6bgXilPmgOTHYWSRDYaep/0/xUh1hXX7yQQkHxz8nWmDDavlR70drxKg74UF/lSaAXuOiMAl++zRUz0fxx/fM6UptKRcMEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKglpaqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKglpaqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B5AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778554233;
	bh=w/UHLtvbQnua+k1FA0ys0ICvhRk7W3rFGuzYkXFIe+4=;
	h=To:Subject:From:Date:From;
	b=IKglpaqR9cUp3lSLCkQZyFRElK/8C8oOb04NMZdsC/vwahtrV+MwtyUq2ecNyhxqD
	 DbrY7LddtFKW4k2dKg/8TCBgcfswLtUifgSpaNUFw3+2XR6rDE/1pDEdTJkyxPF/Xl
	 7EyEVyCmPz0GKnAdK0CYOFEpvkOQynos8cGNG1jbBr3obaWS9jU+ouaWUwIAvKYcQI
	 msAvnrars6Ee7yewHXEnfTnz5PxjbVwxP71rG2LEMMOOCahW1ZYHzLoFCdu8sUG39X
	 UqhtyjEEz1GVVM7U1Ht7sHr4pa+/RRHJBewbQFjK6AfNdOLp4T/2bfAUkeVBbcNtjA
	 RrwI5pdp4jPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A8CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855423368.6913.8710540176950998956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367678420e166e453b81984f02d31930c3b9eaf7a1089d1641af2762d6a71fe1
Date: Tue, 12 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778554233
