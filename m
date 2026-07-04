Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4094023504B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783199914; cv=none; b=CWZpkNoT7zp2klr0gw9WCgU//ERPbBndy+3Ea50AW/iOMqZaT9er4zBcL2zdBcG5TiDhPsYiOYzqUj9ywjsBI7uL635uCTb6q3uqmbt2C6WoBCTKFtYbJvC0hL3Zbqh7Qxp5j50CprpL5qAB1KN+POQiIQoxBJfmk+8MEA0tlpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783199914; c=relaxed/simple;
	bh=TDRHRkHjbhWBRz2Lv16hlMyOH8jfreZM9ulPtm3N0pg=;
	h=To:Subject:From:Message-Id:Date; b=QFBtdnpbyBEk30AIEUWVXro6rJo6MBcql7JwB3WsqeOv/F+LEu6ISKCTHxEMYrFmzDnzR0btGUNBCasBfqjc7cXhpFy2SCQ8c4MwIeG1FDcRweD3Oi/dEqW7VQPJGABMqmmawvxzcxKQklM8x2aG4ZdbR/ntzM0aVBtHMsoCs7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q740WTJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q740WTJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D38C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783199913;
	bh=TDRHRkHjbhWBRz2Lv16hlMyOH8jfreZM9ulPtm3N0pg=;
	h=To:Subject:From:Date:From;
	b=q740WTJQi4A64LJtlkhsHolZMw4bpImlSSvyE0OhuQCmC8qSStZJuwitlDJHvmmNR
	 +rFk2iF3CoxTR7TFhETNKivnAdnM+6SSs2UCb6zma68Fj+4C3oimH0WrwOSxxqMsxp
	 Uhj8YcNZmjmBow5hXUn54hoqCAHqtFRtQwqUolg44cijKzgm7k59yupnQhSGvso3D9
	 /SfCPr9XLhp7YXD6JUpzNX12a3hTdQ28K4ulw/khkKHfnNxOqKnNdL2wYEzDZciSi1
	 ztcg94BqqM9coSZuhQ4tvpvdZWnfN4xii66u4V6QVUe92MXw8FUY6EKbmZL037Gexp
	 W2InqGk71kpIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76EC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319991368.9164.10834990512373436108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9152dd70f01504db6e42e0906c681ac74b02d319ac718ab3aa25d139ce4b16
Date: Sat, 04 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783199913
