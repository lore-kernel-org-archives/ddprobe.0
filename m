Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F79241686
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780947274; cv=none; b=shdUAeKgkXf7kSK9GUG8VuqfprOcWb4X4w8e9NqkIUG4HaeGgsMwTEHnYHqVYh/LwGuoxAgQsdBRESYuYZSe6ATx6bwcYydJHjBzSXYCTs8/BTmZePHQHwxm8iWH9GeEjLT2yU+A3sDhQKt2y55uY6JXf18wRnO/riO+LHBinZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780947274; c=relaxed/simple;
	bh=TtdEoVvSg82gjM+UrU/b7PmNomya9DKIj2wNv5+pMUU=;
	h=To:Subject:From:Message-Id:Date; b=BcQLpbWRzT5AR1Pcv4EYtsudkgAnOHhHcZcQalAu8msGfJu2gGNkoS6dd6pnCDEsnfuqSkSRr6dRgzsW0RHaGqTsQXP60/oDV27rVgOqfh0RwpOW6xNYO1MoSpU1QXHuJn7lFBtVw9vvi73s+qdTqM5gmrOnxvNjyOO/2QwU+4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0Xy+yBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0Xy+yBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6311C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780947273;
	bh=TtdEoVvSg82gjM+UrU/b7PmNomya9DKIj2wNv5+pMUU=;
	h=To:Subject:From:Date:From;
	b=G0Xy+yBED86HNxCi2XnwjwFcj8LSHmXPBGNji0wakBNUwQCnnovARSJvNHnJA8W7v
	 ckj//WSllUbjJCKG9bf1x+HCzRIII3CPbDw2UHJlK+6AJzfiTffuUnoL9L45i46R0q
	 yxuwa/9Mb2G17Kbsc+EbKp73DLskTXS4WLt+VUofblXfzwtvtDEHnqNL7wVISCRodj
	 Z944Y1Xav/xASiDAF3SaIkTzklsCvMgKYj49bziP1nd3G4We3n9cCWdie5k2Z/JtjN
	 nm5jszM+nrM2rUp6vxQHDJMzhel9x97SJ5MqRxKYWt6cJdtLo7Ts1SYjSwkaFDOIP4
	 B2nmzkQeugg7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC07CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094727370.3667.17300831186844039038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa498e705a3507b3bbd24812c88678ec703d7bd3fe42bb891736c551e47853bc
Date: Mon, 08 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780947273
