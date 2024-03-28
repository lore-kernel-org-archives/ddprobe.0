Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1334657B9
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711625897; cv=none; b=ijcXoecaJjnxyVEm8Yd176EgNlqv+/2JEO/Xec/VDs2DYbZvc1KZgJgdqoP042De1H4cL1tBABIZZaVxi1mcb7evxEQoLAn6nVnKU8EK4DhRA1UB3hLicMtNHTK6tsXJuYmHWTIzvrfnlLpb1wvn24WuPZ1mzfrzS6XTqYtA+/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711625897; c=relaxed/simple;
	bh=kzrQbtFSSbtLFoF0qO2nOz2Yt2KSLVjVQeH+O02EMXU=;
	h=To:Subject:From:Message-Id:Date; b=R/ZRL+x3tzL5eC5th+YIMwLPZ/GsR6W/uazeGp8/p/UGcvvL01YByhJqKF67OI4KFrWzt9mP8pRUObluq22pzZiDJPQLrt224/2j6y+G+uoTpFeMyEvpm9jyZMsISz5f9rg8cKnrki17jUx44Y57otVLSlSmX1g+ZZkllD2815U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6usVU+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6usVU+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC24C43390
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711625896;
	bh=kzrQbtFSSbtLFoF0qO2nOz2Yt2KSLVjVQeH+O02EMXU=;
	h=To:Subject:From:Date:From;
	b=B6usVU+36wN+FSeTYNQpb1ceIUxRj81FMuZ+aENQTqWYGvw7hwhcL9Vo1KdGBvIO+
	 jNTbjR+Qi/V457/J38Y0nzlHm/kkMFzx7puxsETCa+yxKDruaUzDKP/Ek3++GRg6mf
	 kpzsDJEj+blReRWKzXW0IS95U1MYtdKRHgmFwzh53vCsXnpkBnrXFook++dk03KcEq
	 XJjAFqdP22oI4R6Ea986e52fgqcHWHdyEOa53BzRJtH6EAjGtrurd8EF4zF+Sh4A5J
	 5c9SMliHAHiX2SPv9ZcQSVueUHh42mY6V5yeEO1P6/KkkuvLzW7L1RWrNbPgXVZKDn
	 /p2+qJrEWAdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C530C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171162589643.5748.8720588639639509704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9c7f21f7bf4a301750eaccf4ba16ec5a2b7788f61e95e43db97442fce48713
Date: Thu, 28 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711625896
