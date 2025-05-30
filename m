Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2934D1A5BAF
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748622594; cv=none; b=SDveAD8g3G9PnG0WIrrnronJq4UU6CDbCOkj6bZ5ebwVXHBJg5pUKY86ZF0dT4UvmjMuifiA9beQHCpe4iTb+dVL0wdwZpXoECkW23tYOJAuy5zZ02zH5UOyTyoV/SIl4X0mH70B3z0HJYtEmhqXwsvbvD2Y7bME2kJSXCuNgBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748622594; c=relaxed/simple;
	bh=BRXBtjHNVlL9PSb4NO7Aaz+K4EV1WE6t8w7wABobht0=;
	h=To:Subject:From:Message-Id:Date; b=L06/OqzCNuxmmt0fMn28E3qOFWhTr92STnPd92HaG5PHoAwWVZGSTsWp0q+1LDN0W/jC2BkJeVMq8A0OdQupPDWPh7ygU/J43u4KqfMM7XiB1BMguKDO5nd6rzTlqPdUDqAiszNjiJOIzRV1ZCLCWYfbIEq/w0xdDU+mwUsLvxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTjrrxr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTjrrxr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4D9C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748622593;
	bh=BRXBtjHNVlL9PSb4NO7Aaz+K4EV1WE6t8w7wABobht0=;
	h=To:Subject:From:Date:From;
	b=QTjrrxr0By/NHalWSS9upMTNam1tJyut3Um1vQynfo2Qhj0eD5PFR09TMHSNGgIge
	 E/00thJIxyfRGort4uhaUB2fWmFK54iZpyOKv7qqfjO/LXG45qGUz0C/RW0qnMHQ/8
	 2vuhsHNb3Aom850jevDDnB36IxgccpHaL4uEpVVz+8U86bQh3HyhfP4kU9tMVw9wn3
	 WnMlOb3ozFnZr0Vs6eTlaSXFeBP9zGgMs+tPFgt9KvnMWnjj35lv/mRJUqjo3C71uT
	 9RCCHo4hay7HPcsE8SPrBAs5uPtioyN7xJXEHtsJFTRLREOdi57mv5ep8TIodVf0Z6
	 nJWXNqOJe4Wcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE82C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862259357.18177.2246153205226513708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250e0fe4af2293e40a1313d7840db40a92537744722c569ad6ebbfbcea79c3df
Date: Fri, 30 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748622593
