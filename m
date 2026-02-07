Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E223313E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770432834; cv=none; b=cEJ+BhbTD615Z7OehXY1KK9+3dx+vwLhUvUn5Qddv9ILOlQ7bDjj4G5qmQ46NnGVVDD0Ucra+2/zqZaWxKEkH9SJXZHCWlJbYa42ap+EN71Tc62LV+hTvQ/aOdo51/0b5q8U7b3hnw8MaKlsE5Z94sGO7WtUw/C02KIAQPHhFnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770432834; c=relaxed/simple;
	bh=gtqeJFtJr5UMuvR8NXrm9ME28Ql5/kqsfp/UF1r5pHs=;
	h=To:Subject:From:Message-Id:Date; b=KJkt/mIKSwyBFy5hgSjFq/k97xomvYdbCuYyfAsIU6INJx5q5JwPb2IOs6QsjN3d72fzzxrdoenLJzgro4XXe2iTQ7O/jikqYMXwQ636hR8e1Pa4Vt1gAS77ANpSG0bS10XWZdHe/lx7RnVVJ1s5bRuRhyFxAIn1Z4ZI29UoZeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCdDCUPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCdDCUPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F68C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770432833;
	bh=gtqeJFtJr5UMuvR8NXrm9ME28Ql5/kqsfp/UF1r5pHs=;
	h=To:Subject:From:Date:From;
	b=uCdDCUPHxhP42PiZrHEqQBqp7Ups+6Cjq14gcVBxj+QX48I7rgG3fpuVzI7btlKtG
	 ku98p41qUw3/RfFQCjcoE1sBmnA7n5mcKzrMj7jZ/vSVCCLRfyJljeQZJreLBMLWxx
	 hNUCQdpaj8mZ/yF+xav/hHuzZpwp/JyiHWrvy6bhnobUdMAohEfkw0ad7B3kEOvr/T
	 B9qVhnQYqWs36EQBoBIjlTczIDECbeK1Dv12n8EdkOMsJKDf9ZBhvtnJIcdwiGl+4T
	 Nc5Nhb2DCd5TCh+e5USwqzPHvkIFaCnXukpKoLwOZ6QgkSwStW6setOp54SPdRNA4t
	 PLefBInb/guJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F316EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043283360.12403.15638117799469160540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088c2460f4a902057f74dedc6de9489b540a8e363e22d8d1d155b0ed81495440
Date: Sat, 07 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770432833
