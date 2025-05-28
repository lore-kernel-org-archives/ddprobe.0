Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577EC17B50A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748407194; cv=none; b=XKxmL4+GUNCjGGMpboemOwO14Kq4awGLuz9+SuDfwhG6cziOdkdtVSgSP4c0dyds4maeWRnjfy73dY1nD+XR/igDz+zm19m+YTomQuTMywIbj4ozClzQK7CPHFo7syVss/7CCIJWY3Bmlvrs38mDZuO9kpUvtWmLzzxoHXyU8dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748407194; c=relaxed/simple;
	bh=U5jviG5spwrVCp6oO7rCUyEcAu56QNQCwkvsQAik/v4=;
	h=To:Subject:From:Message-Id:Date; b=RqvPBT6kuWxEqKz/SKVQqdr186DCM6IEL+nyCX8TFqe+mMvi/eutzi46LEmCsGKdWMes0k0OQiMczfy99RVcmPHBnYnUeCf8zUOAo5cqEXOXXt3B8N6yTyUkMO/fs+ZmE+ccAcprWpbSoznQdxOOL7khaNQkCjd1SYJd4seKel8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O52KVdRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O52KVdRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAB9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748407193;
	bh=U5jviG5spwrVCp6oO7rCUyEcAu56QNQCwkvsQAik/v4=;
	h=To:Subject:From:Date:From;
	b=O52KVdRlvnuv7fydV5g7k+WATBfMz1BcRD4aQYlDlWCvxoLatHxCikCmkce0NQ7v8
	 xZYkF9sDeZ54KPQgUwwB7oDkWuxnulxp78z7m1Mrpl3YIX78QctuW+qaovpiPXXfm5
	 baFVpdZx+Bz36j3g32784K68KzV8ELedaojlCpWdkunVpcpUmKD27X60Vr2high+oG
	 TtQonE5GjmDK8VfhX7Sro4eOpOX2/QZgz5BfbFVYoGTqNVB/rHSTrgRIgcZvHD+4AJ
	 jvfX9SfAJlztPvdMYCpMxlNa7TSYkDzIJ5SOirRGmsKhu+Dio1o6om+fZDZEo0p9Gc
	 /YgpHq88J7NjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E1C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840719359.2535.14347593152061274287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a102ba288dc70589cd02bab8ae44164aa610655e357c09f7a3a8366afe98d59
Date: Wed, 28 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748407193
