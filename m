Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D453B2FF5
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776424054; cv=none; b=cF34ltu0yjOO2BxZ4fJzLvAw/xlGFUgDJY4Rgepy4/fnRp3weJjtrvne19ILaNl50UOzK/wBaap6LTY72vxzqhZ0UWBiSlHAJTYctCVmjtaqPwG0GB2H27wWaSuOvuvy1D8QMEgNDXOxo3Jzwq2om5JIcJeYwEe+ppeGwjCCmgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776424054; c=relaxed/simple;
	bh=0kI438r12iRT6HkCVCCKEqhCsbaHJHp/kxO17pr3wBg=;
	h=To:Subject:From:Message-Id:Date; b=Z0M9+Fs29sBQnExVu6yGadafAhizHKEqDomLqaPONe95ou7+YD6T9nDh1kRG+DA7Qw1NKFavNXd2Ljf9lT2qSTA4sNrNucFs+NAKv/DU3Prd0F2VZh/uw19yg04RrH/t0yaCkJVKv17Q24XWICwJQuBIVpIN9uDBry/v5NO1qAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBGTnp3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBGTnp3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9CFC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776424053;
	bh=0kI438r12iRT6HkCVCCKEqhCsbaHJHp/kxO17pr3wBg=;
	h=To:Subject:From:Date:From;
	b=RBGTnp3vwLS//DxrTYBXwNBXvjgt2m++kNgu1ORi9ehtnIl94oBZn93wc/HbCSKmW
	 Z4GTLIE49BF5nVXZsCed3A4YjaeegaiXDfD9s9Z8sFzXgLuc9ymbCgU8wjASwPNFV4
	 nvavkWYn0ei1xP1iU8ZocRt8uweJXnQ4fJ7uQWHE25ORRPk63Zz4+q6VUQF6VVUyJi
	 wZKZPIBbgsLo1/mkgpTNqoQFpkTR30Ro6eA+z8DC7DwrZDkczGGIEzD0A+fazg+jP5
	 bexXOIEupbxkhuhLSDJFkOjhnq+6v190XvSuWXpRXTnG3T6jb0AbpIiIg024K2XXj2
	 hd0FDYAm7PeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB21F43691
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642405368.23191.13964831996417663421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3decdf99f1e18011ad34ff5dd4325955af8ed853f65cde8cc7d01f1ae12bf2
Date: Fri, 17 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776424053
