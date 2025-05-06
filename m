Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ECC255E37
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746542994; cv=none; b=tcp2yk/9GyD/xnBg78Cc+bVJq3qs/3yuIN1J87kmk+zVoZjtEgHgxBerKdFlsXjcn5tWHO32/F23J6Z0NkJ2KBVBZnKO53k78zkwNxoIWCRa8iZGNIstfLr8N5EoRgvJCqu5FGGfUX3uimODCC0Mf4lYIoNS0lVN4/UmB8axjWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746542994; c=relaxed/simple;
	bh=Pn270Qo3P5lTj+9SiI4vpFdUN4gG7A/KFiYjsXZG1M0=;
	h=To:Subject:From:Message-Id:Date; b=SPTZGTozhAxp9KyDYKVnnhgOwMnK+bX/5OOlEW6xJ6yZ1D5iuY9vIUTAeF2Pg+TgCV3z4Rvt22uyH6cXuOeIztnsw1SeL7e5SdVz1YCB2T4zfr9XtPExu35WpR4tiAnd2okq11GUfkVzvL/fwb9UEiB4CfMM6xBrN9TIoLhoEpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GknQIra6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GknQIra6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F422C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746542993;
	bh=Pn270Qo3P5lTj+9SiI4vpFdUN4gG7A/KFiYjsXZG1M0=;
	h=To:Subject:From:Date:From;
	b=GknQIra6yzJCtIQ9OSXBTpVDk83pOVQDCugQjUf1D+TFWtJ25UiDgYnzPR0T3rJHo
	 OtyxNUtsoSXjOP1449423q0OmCVrR1itlgUx1oWvMkXuL6iDSS+rBNk14M45Z7YWvL
	 UviclL9m6FoOrBK2/zGFCahiXv2swibNxmyyqkZpwuYnhQz/mK8cNqgUwLZo2D5r+y
	 hK6KU1PWxS32Z9w6aMoXE8ujH0/bJqWp4KsOzu+TQMcdmdwNL39m0EDGQBlUCbVnkZ
	 QBwD3tziKEc7ajjgt2Tp789cqXDwxTqBce5eTU7iLUThHmXG5sTtv92tLEGj4eIW59
	 VvwOhO2HOnb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E55EC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654299357.22615.5761490037494299189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab0878b3d0233d3caccd1813339280874b5a47e82de653b1e86f250496d1f1e
Date: Tue, 06 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746542993
