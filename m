Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5793D3480
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779046234; cv=none; b=NZn3MWUL1C7Mbb9KZgNwr5inNM2DIrA6LUbzBJvv2IJ5MV6E62aBbwTS0Z8PMs+4eXmtYPiVipMiZa45KMTqZ7a+HbZQs8vysWcQtJ52GrSo4lgIgZ86KBKH7DzxaBHerlod9LtdPyVk4/k3uf3G99ZxorGHdnaYVmA47Vkoj7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779046234; c=relaxed/simple;
	bh=gP5xXqA1ZL7aLblajb/7KztuVZzdOSPjOgIDKqTHdNY=;
	h=To:Subject:From:Message-Id:Date; b=KO4tHTlEpZ1+NqCFVafmkSzqYPG7ekiSZGA8DB8LYIxLU9ytHR0fx7sCxjGQo7Abdik6Bhy/xoPjkrtqsXIMhWfkqs0wevFMZscGbGhawkyntEduTqCJNSLgnntHQkwlR8GBl2RBqjXgvCWYhG6PHvBoXy5X/wZRjyUbCxpVsWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNf+fkBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNf+fkBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF04BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779046233;
	bh=gP5xXqA1ZL7aLblajb/7KztuVZzdOSPjOgIDKqTHdNY=;
	h=To:Subject:From:Date:From;
	b=nNf+fkBHOWfa1gLVqCHDAsKFgDRSuD92AGxBDPhIW/nbhUJ7VLIMFvk1qKoj9QpnR
	 jeoSkN8CNpLfxaxEdIubsFp61bcjQJabaDwwNQ3kj24kKWpVSRVt5EArJi6qIl9vBd
	 QDGTFZG1ionMixJtkmA+xgpSsp7dA/i18sBPpP3P0NHd+IQQ6b42/rn4FonIwKhOSb
	 jjjuJWORfxuIUjjfnmjmG1PgjOV9qxgFAuhBqMIY8QOM4NqpxCJh8Ko0Wf2YT6UEKA
	 KLtWss6QN/RYXKHVC/0lTXlSmlwzXMMsjSRk9ITtWdvYDn1wXJ9+tBQ6BwxrS4nSn6
	 BszVLhRptBc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD4CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904623370.9601.13079827481995873841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280bd3da9efa9dc55c4bb0064ef1f7227f2aa6243ae67104d976c6acadc3fa4f
Date: Sun, 17 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779046233
