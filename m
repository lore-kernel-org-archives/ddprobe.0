Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D681C84DC
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771687494; cv=none; b=Pg+E+y/kFkaLRa2gd99ZVZ79QDYuga2gzwt4Dy3mdGJL8G2ZEAhA6vnH5Z3jhmyjuwr4VvQmv/8EdefOnVOhsYcLOgn/Otx616Dhui0pxKkfKdPpKzjZqRQHmNgIfUhYaujTdg/zBvODCJ/Ijef3zrAJF747SM0NvjvdErl4ePA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771687494; c=relaxed/simple;
	bh=jgGaxX635+FQ/ZhX+JnlPi7ARDeIzxqmKevNaIXgoo8=;
	h=To:Subject:From:Message-Id:Date; b=Gl3eymSFS3pN90LjNQKIeijm3DOvKBZF06WIjcKpDNFtegJaBYdLvOGjjH57/N6A1TE23mThwFq3ugbr4Xp8hBQ3m30N14La/a6cDk00jLuOe47OD5nasN6+6tjUGVlwJxofmVKA8X7p/+rfxA8v6kjlT/ttk6ae3Ry5Ypo9FFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q90y1oKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q90y1oKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF2EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771687493;
	bh=jgGaxX635+FQ/ZhX+JnlPi7ARDeIzxqmKevNaIXgoo8=;
	h=To:Subject:From:Date:From;
	b=Q90y1oKLpJmiWAAdZGpu0jcFXTcUic/ccYacCUTtOcvItwJiIGXjo2NvhEqice7Bj
	 wCqegk24ivNqKFd2ofM7U+QTOQaSXtRIztI/EUyqoAO7isjLU0gwJU0O0VIIBOusC0
	 m0Dw/I48wkxsOI8NPR9Ntba4BAsEk+20iC5JTtebD34IzqFWBDCn+xI2oqNesuXW5T
	 //2cy3TZ3UPETgPmU3OVVKWHmQ/QTCP1E5c03BnsFeMj3tx4/cqTyHNKQDpuV3FtOM
	 0LBuvVqwkSOziuxB847ftK7fw+gT/7+E579Ebp4Cjs5eXy5Kqtn/rYkq5ijO6TKpYn
	 lVAPvfp0osOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B74C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168749363.24928.3334456657639018327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae10b0703ad4aadfc1e9a0ae663dace75885e8e90b1150275a66eaae3dad149e
Date: Sat, 21 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771687493
