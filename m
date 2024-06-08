Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD615EA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717867643; cv=none; b=R4kKzm+SCb2aW7AaP6aEbGU3y9WTB85Nq8EaSjFTl1K9k7WJtfy+BwkNbL/qiyWu023j7HPEnMuNfTEhKK2Dc7etjRE/OXNX7yaY7Ppkir5AsK0hd1WsX+ExmW+lliioCB5nx6oUPmO+fMQohbjNMggQBVtqi1LRHNdkibtSE6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717867643; c=relaxed/simple;
	bh=W9G0kW/oFwu5YxPwE/4shBVRYPl1qPV9ixBOCSfkjjA=;
	h=To:Subject:From:Message-Id:Date; b=k3UAop3sGAKQH6bTnprIR84GiHh91XewcJ8PBd1r2WcKIXi4mq2auiNMD7+Se3XgJEBHuiUEXiCjmi0I9y2bcr6thSdwBw+iAlmT4iW3HIpdMpy+/e5n5xhKhgJT8eQjL/w2ySrRB0W0lhRRlYuZBkQZPhz+HKAw8gKzP3+1zck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt45Iywq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt45Iywq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8555C32781
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717867642;
	bh=W9G0kW/oFwu5YxPwE/4shBVRYPl1qPV9ixBOCSfkjjA=;
	h=To:Subject:From:Date:From;
	b=Pt45IywqUM4ToMMvl7ySqTSYBLrKUIy6cqYNtI68BM1VjY/gIFqYxXOoi+cN1QRbc
	 BJWjTqrIbNFimRJYzbNK2eY/ZOW6Qbb7CzNZSrFOwAQOfnro5P4t5glCV/KoDHiw0V
	 c0smLQmT/vN01tAGCp395sC4p8tJcKm/xDiPmMBzGZzRmX+9H+yywGnYAkJHiMx31V
	 eRhV/VAyJU5wN6qOCw30Tg8QFgtxUSs6Llr5SbCMxOfySHE/rKwwJp5zGFjB1YJgnM
	 Btvzy3tQZSPMU4K+B+Prvnuc+03GNR6I3dwwX9ACRhgQwVCDXEgwOet41VBa4OLAvr
	 x3E8wYia99FFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5025C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786764276.25930.9552322509484745041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d40ee930a556a4015f33c3f12db34c8f6b4003d2366aef860c05f5e00a3a16
Date: Sat, 08 Jun 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717867642
