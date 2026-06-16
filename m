Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6FB231A41
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781591194; cv=none; b=g4gqt96FvJnPdANbAXigNjlF/9oeRDkLIey6FSqUO5uYpAaOP9CbsW9REGg8VIZy2hT15dEh334QJ0Ww9ln30xiBNrgZ7czlT9i3twtpbx8KP5PxRk54XKIFXgoeK0nMUFwOLZAxXrHrQxsxADrwlYUUtzhnuXKOMrB7+6MkWYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781591194; c=relaxed/simple;
	bh=GXFwt18tJEqV6umF1oHOeIfryc8guuvIV9WnQUtHa50=;
	h=To:Subject:From:Message-Id:Date; b=FA6v+vJdsaXrw+Ju48fgPX4Nh5XalZk1fY1poZr+ancAnmqY2VAU8EHoIge8fGi1BaHh2evGmsT1rCgm7Iqcz3ob8gw/38DtaoEc5lrCCnzTJfosfkPjZoKGPBACGp9lWO1DdRCZlaMc3vLCQbqfyle58F5o7AwNHaj0ly49q90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TecYrCZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TecYrCZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2588C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781591193;
	bh=GXFwt18tJEqV6umF1oHOeIfryc8guuvIV9WnQUtHa50=;
	h=To:Subject:From:Date:From;
	b=TecYrCZMI8WpRW1cgylDngfyj/XoIta369zED8S1TWTDiO/zX9thUKp0PxvCqXJML
	 n2+5W7X6/SLIc4N9BMAFwqoBzS7Lqis3P2RaZ1WxKTHjj+rdTu39rotxdO/46ig849
	 7VwlHcXk4tg6pWiv7y4IpgvKUFAVtNPXAdZh7SSmv8pddLG1HPPd3YkjprrvwKQpz5
	 7TTbq45qlXVSnpJpgSAYz7hVIEgOja7hJalj9id/X6CQUv9woVozg44w4lbZYo2poY
	 kByz8eh5yFBIgwOOEZ7scvT5sZzs3ByUFq0r2ImdPByB+XC2d1KXDD+XoWLiRmyU/l
	 63cU3AtJDwYFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC22BCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159119375.25678.10144255347322110768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa27d08377af66d9a3b5f56a809e7b7dc9ee962d76caa753f05e4c4e753d445a
Date: Tue, 16 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781591193
