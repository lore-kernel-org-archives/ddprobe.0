Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3206214287
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735107354; cv=none; b=MpxuC5UV6UxqmpfF//4qnsAfB1Y298seE6UFL9tSih/3eQuq/VvCOw+1mDzsWXuCUhSNhZTP5nVZND+LVlUhQ8yc5NpVbtK/0L22jUcICS1r7JnZFeP1wkGm4UCkkd/G7rbH3yAk63pfvpbjX2cBsMVkuSPIQSkcXSnbE7XDZbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735107354; c=relaxed/simple;
	bh=27Ni+y/G5YxCh6sCXToeW//jJtX57FxOgA85G3aij60=;
	h=To:Subject:From:Message-Id:Date; b=eDAqNIqhSXA8lpUX2BjExXS8WjEQInT6o5x6z+q0rPRlAnksf2TYNTgSaNygLt0IWNUkKtZuu7KxNHg6kMT9i64/0sKhuWbeyozSlc7DAYI8DFHME1bxhuGrwz6Cddd8wpYzZPFXJlQKK0J1KjkhzJv7EiujYOJhmUHRMKiklwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZnzqIIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZnzqIIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90F4C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735107353;
	bh=27Ni+y/G5YxCh6sCXToeW//jJtX57FxOgA85G3aij60=;
	h=To:Subject:From:Date:From;
	b=pZnzqIIH+QQ9NFxptLeKShwN/1lGmT//e1vhkpKFwJg5O0HjFHugkcEaDuLOgjD5x
	 H6xfKlsOWcyKf7FyUwAexsGU2y5eVRbdfbmzDIxgv/G0943hLNtY52zhRec0H/WXhB
	 TW6gh1N07zZmmcrCY1ER+57ONzrLEzJbDlg9PwcWkpzXTavN2KiUQXMAWygkZUlbOs
	 L7myL/RdBYVH4M8q/6NfS9aVr1GgEks7o9Ka1YL7ut716Ds6hhM35uhjtOXEQFYYQ+
	 mL2GUq+bXPOgp9WmA4/ogVsSgKMJo7762mOb/hJ7/v5TgDPPs3lnR69jhVMBLC2tgK
	 2KFsYQsNas+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B94E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510735358.3272.6396945867531619156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10cc32a0e74079e8cfa7403baddb4c34c87f914e49407f807db9026739968070
Date: Wed, 25 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735107353
